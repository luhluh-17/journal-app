module CategoriesHelper
  def random_text_bg
    array = %w[success warning info]
    "badge text-bg-#{array.sample}"
  end

  def count_task(category)
    Task.where(category_id: category.id).count
  end
end
