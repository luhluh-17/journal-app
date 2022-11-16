module TaskHelper
  def task_style(level)
    case level
    when 1
      'block p-4 max-w-sm rounded-lg border shadow-md bg-red-600 hover:bg-red-700'
    when 2
      'block p-4 max-w-sm rounded-lg border shadow-md bg-yellow-500 hover:bg-yellow-600'
    else
      'block p-4 max-w-sm rounded-lg border shadow-md bg-green-600 hover:bg-green-700'
    end
  end

  def get_category(id)
    Category.find(id).title
  end
end
