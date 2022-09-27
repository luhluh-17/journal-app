require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'category does not exist' do
    task = Task.new
    task.title = 'Study Programming'
    task.body = ''
    refute task.valid?
    assert_not_nil task.errors[:categories], 'Saved the task with a nil category'
  end

  test 'should not save category without title' do
    task = Task.new
    task.body = ''
    refute task.valid?
    assert_not_nil task.errors[:title], 'Saved the task without title'
  end

  test 'should not save task if title has less than allowed minimum length' do
    task = Task.new
    task.body = ''
    task.title = 'C'
    refute task.valid?
    assert_not_nil category.errors[:title], 'Saved the tesk with minimum length'
  end
end
