require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts 'Exercise 7'
puts '----------'

# Your code goes here ...
user_store_name = $stdin.gets.chomp
@store7 = Store.create({ name: user_store_name })
@store8 = Store.create({ name: user_store_name, annual_revenue: 999_999_999, mens_apparel: true, womens_apparel: true })
p @store7.valid?
p @store8.valid?

@employee5 = @store1.employees.create(first_name: nil, last_name: 'Virani', hourly_rate: 40)
@employee6 = @store1.employees.create(first_name: 'Khurram', last_name: nil, hourly_rate: 40)
@employee7 = @store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 1)
@employee8 = @store1.employees.create(first_name: 'BEST', last_name: 'EMPLOYEE', hourly_rate: 40)
p @employee5.valid?
p @employee6.valid?
p @employee7.valid?
p @employee8.valid?

@store9 = Store.create({ name: 'weird store', annual_revenue: 1, mens_apparel: false, womens_apparel: true })
p @store9.valid?
