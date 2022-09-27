module TasksHelper
  def set_select_option
    array = []
    Category.all.each { |category| array << [category.title, category.id] }
    array
  end
end
