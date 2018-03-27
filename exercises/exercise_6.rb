require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Greg", last_name: "Smith", hourly_rate: 75)
@store1.employees.create(first_name: "Dave", last_name: "Green", hourly_rate: 50 )
@store1.employees.create(first_name: "Mary", last_name: "Poppins", hourly_rate: 60)

@store2.employees.create(first_name: "Kate", last_name: "Smith", hourly_rate: 40)
@store2.employees.create(first_name: "George", last_name: "Davis", hourly_rate: 45)
@store2.employees.create(first_name: "Elizabeth", last_name: "Piper", hourly_rate: 70)
