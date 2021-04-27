require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

class Store 
  has_many :employees 
end

class Employee
  belongs_to :store
end

@store1.employees.create([
  { first_name: "Khurram", last_name: "Virani", hourly_rate: 60 },
  { first_name: "Dominic", last_name: "Tremblay", hourly_rate: 45},
  { first_name: "Frederic", last_name: "Bourgouin", hourly_rate: 70}
])


@store2.employees.create([
  { first_name: "Cassie", last_name: "Rhéaume", hourly_rate: 60 },
  { first_name: "Vasiliy", last_name: "Klimkin", hourly_rate: 145},
  { first_name: "Hanxiang", last_name: "Xu", hourly_rate: 50}
])