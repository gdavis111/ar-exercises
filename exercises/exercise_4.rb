require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each { |store| puts "The #{store.name} location carries men's apparel and makes #{store.annual_revenue} in revenue each year." }

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue <= ?", true, 1000000)

@womens_stores.each { |store| puts "The #{store.name} location carries women's apparel and made under $1,000,000 in annual revenue." }

"created_at >= ? AND created_at <= ?"