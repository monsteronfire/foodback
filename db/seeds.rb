# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.where(name: 'Italian').first_or_create(name: "Italian")
Category.where(name: 'Asian').first_or_create(name: "Asian")
Category.where(name: 'Greek').first_or_create(name: "Greek")
Category.where(name: 'French').first_or_create(name: "French")
Category.where(name: 'Mexican').first_or_create(name: "Mexican")
Category.where(name: 'Indian').first_or_create(name: "Indian")
