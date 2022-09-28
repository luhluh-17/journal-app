module TasksHelper
  def set_select_option
    array = []
    current_user.categories.each do |category|
      array << [category.title, category.id]
    end
    array
  end
end
