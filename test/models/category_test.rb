require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @user = User.create(email: 'test@gmail.com', password: 'password')
  end

  test 'user does not exist' do
    category = Category.new
    category.title = 'Work'
    refute category.valid?
    assert_not_nil category.errors[:users], 'Saved the category nil user'
  end

  test 'user exist' do
    category = Category.new
    category.title = 'Work'
    category.user = @user
    assert category.save, 'Saved the category with user'
  end

  test 'should not save category without title' do
    category = Category.new
    refute category.valid?
    assert_not_nil category.errors[:title], 'Saved the category without a title'
  end

  test 'should not save category title has less than allowed minimum length' do
    category = Category.new
    category.title = 'C'
    refute category.valid?
    assert_not_nil category.errors[:title], 'Saved the category with minimum length'
  end
end
