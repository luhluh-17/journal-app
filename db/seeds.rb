# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(
  email: 'user@journey.com',
  password: 'password',
  password_confirmation: 'password'
)

Category.create(title: 'School', user_id: User.first.id)
Category.create(title: 'Work', user_id: User.first.id)
Category.create(title: 'Home', user_id: User.first.id)

Task.create(
  title: 'Review for Math Test',
  priority_level: 2,
  deadline: Date.today + 2.months,
  category_id: Category.first.id
)

Task.create(
  title: 'Prepare for School Festival',
  priority_level: 3,
  deadline: Date.today + 4.months,
  category_id: Category.first.id
)

Task.create(
  title: 'Midterm Project',
  priority_level: 1,
  deadline: Date.today + 3.days,
  category_id: Category.first.id
)

Task.create(
  title: 'Code Review',
  priority_level: 1,
  deadline: Date.today + 5.days,
  category_id: Category.second.id
)

Task.create(
  title: 'General Cleaning',
  priority_level: 2,
  deadline: Date.today + 3.days,
  category_id: Category.last.id
)

Task.create(
  title: 'Refill Water Gallon',
  priority_level: 3,
  deadline: Date.today + 1.days,
  category_id: Category.last.id
)
