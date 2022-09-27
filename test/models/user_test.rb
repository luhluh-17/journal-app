require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'should save user' do
    u = User.new
    u.email = 'test@gmail.com'
    u.password = 'password'
    assert u.save, 'Saved the user with complete input'
  end

  test 'should not save with invalid email' do
    u = User.new
    u.email = 't'
    u.password = 'password'
    refute u.valid?
    assert_not_nil u.errors[:email], 'Saved the user with invalid email'
  end

  test 'should not save without email' do
    u = User.new
    u.password = 'password'
    refute u.valid?
    assert_not_nil u.errors[:email], 'Saved the user without an email'
  end
end
