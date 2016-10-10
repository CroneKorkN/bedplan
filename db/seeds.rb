# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


[
  "Nadja",
  "Irene",
  "Amanda",
  "Laura",
  "Jonas",
  "Peter",
  "Susi"
].each do |name|
  Employee.create(
    name: name,
    score_cache_date: Date.today.-(1.month).beginning_of_month
  )
end

(201..222).each do |name|
  Bed.create(
    name: name
  )
end

Month.create date: Date.today.-(1.month).beginning_of_month # after employees

Bed.all.each do |bed|
  bed.fullfillments.create(
    date: Date.today.-(rand(42).days),
    employee: Employee.first,
    month: Month.first
  )
end
