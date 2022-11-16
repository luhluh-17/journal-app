class TasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = current_user.categories.map(&:tasks).flatten.sort_by { |task| task[:deadline] }
  end

  def show; end

  def new
    @task = Task.new
  end

  def edit; end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to @task, notice: "#{@task.title} was created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: "#{@task.title} was updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, notice: "#{@task.title} was deleted"
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :priority_level, :deadline, :category_id)
  end
end
