require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

#won't work, no first name
@store1.employees.create(first_name: "", last_name: "Chowder", hourly_rate: 60)
#won't work, no last name
@store1.employees.create(first_name: "Carl", last_name: "", hourly_rate: 60)
#WILL work
@store1.employees.create(first_name: "Carl", last_name: "Chowder", hourly_rate: 50)
#won't work, hourly rate over 200
@store1.employees.create(first_name: "Carl", last_name: "Choweder", hourly_rate: 201)
#won't work, hourly rate below 40
@store1.employees.create(first_name: "Carl", last_name: "Choweder", hourly_rate: 39)
#won't work, doesn't belong to a store
Employee.create(first_name: "Tom", last_name: "Riddle", hourly_rate: 55)
#WILL work
teststore = Store.create(name: "Heya", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
puts teststore.valid? # = TRUE

#Won't work, doesn't carry mens or womens apparel
teststore2 = Store.create(name: "Nothing Store", annual_revenue: 100000 , mens_apparel: false, womens_apparel: false)
puts teststore2.valid? # = false
puts teststore2.errors.messages # = "must carry at least 1 type of apparel"


storename = gets.chomp
teststore3 = Store.create(name: storename)
puts teststore3.valid? # = false
puts teststore3.errors.messages # = {:annual_revenue=>["is not a number"], :mens_apparel=>["must carry at least 1 type of apparel"]}