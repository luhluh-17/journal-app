class TasksController < ApplicationController
  before_action :require_user_logged_in, :set_task, only: %i[show edit update destroy]

  def index
    if user_signed_in?
      @tasks = Task.all
      # @tasks = current_user.categories.map { |category| category.tasks }
    else
      redirect_to new_user_session_path, alert: 'You are not logged in.'
    end
  end

  def show; end

  def new
    @task = Task.new
  end

  def edit; end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to task_url(@task), notice: 'Task was successfully created.' }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to task_url(@task), notice: 'Task was successfully updated.' }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :body, :is_completed, :category_id)
  end
end
