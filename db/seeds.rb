# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


[
  "<SYSTEM_EMPLOYEE>",
  "Nadja",
  "Irene",
  "Amanda",
  "Laura",
  "Jonas",
  "Peter",
  "Susi",
  "Moritz",
  "Aiche",
  "Barbara",
  "Michelle",
  "Alexandra",
  "Thomas G.",
  "Thomas S.",
  "Angelika"
].each do |name|
  Employee.create(
    name: name,
    score_cache_date: Date.today.-(1.month).beginning_of_month
  )
end


[
  '111A',
  '111B',
  (112..120).to_a,
  (211..220).to_a,
  '231A',
  '231B',
  '232A',
  '232B',
  (233..238).to_a,
  (251..254).to_a,
  '255A',
  '255B',
  (256..260).to_a,
].flatten.each do |name|
  Bed.create(
    name: name
  )
end

Month.create date: Date.today.-(1.month).beginning_of_month # after employees

Bed.all.each do |bed|
#  bed.fullfillments.create(
#    date: Date.today.-(rand(35).days),
#    employee: Employee.find_by(name: "<SYSTEM_EMPLOYEE>"),
#    month: Month.first
#  )
end
