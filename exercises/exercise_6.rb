require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Amilie", last_name: "Wood", hourly_rate: 30)
@store1.employees.create(first_name: "Secret", last_name: "Adam", hourly_rate: 70)
@store2.employees.create(first_name: "Jessie", last_name: "Smith", hourly_rate: 80)
@store2.employees.create(first_name: "Svivle", last_name: "Williams", hourly_rate: 22)
@store2.employees.create(first_name: "Eva", last_name: "Brown", hourly_rate: 54)