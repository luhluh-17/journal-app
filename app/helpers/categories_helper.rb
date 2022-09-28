module CategoriesHelper
  def count_task(category)
    Task.where(category_id: category.id).count
  end
end
