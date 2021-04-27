require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

Your code goes here ...

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, :presence => true
  validates :hourly_rate, numericality: {greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

class Store < ActiveRecord::Base
  has_many: employees
  validates :name, length {minimum 3}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
end