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
  "Jonas"
].each do |name|
  Employee.create name: name
end

(1..8).each do |name|
  Bed.create(name: name).create_fullfillment(date: Date.today, employee: Employee.first)
end
