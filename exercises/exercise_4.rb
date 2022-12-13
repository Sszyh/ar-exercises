require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue:224000, mens_apparel:false, womens_apparel:true)
Whistler = Store.create(name: "Whistler", annual_revenue:1900000, mens_apparel:true, womens_apparel:false)
Yaletown = Store.create(name: "Yaletown", annual_revenue:430000, mens_apparel:true, womens_apparel:true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel:false)
@mens_stores.each do |m|
  puts "Name: #{m.name}, Annual Revenew #{m.annual_revenue}"
end

@womens_stores = Store.where("annual_revenue < :num", {num: 1000000}, womens_apparel:true)
@womens_stores.each do |m|
  puts "Name: #{m.name}, Annual Revenew #{m.annual_revenue}"
end