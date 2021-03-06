
puts 'SETTING UP DEFAULT USER LOGIN for MALACHAI'

user = User.create(
  email: 'malachai@shortjab.com',
  password: 'pleaseplease',
  password_confirmation: 'pleaseplease'
)

puts '------------'
puts '------------'

puts 'New user created: ' << user.email

puts '------------'
puts '------------'

puts 'ADDING ADMIN ROLE!'

puts '------------'
puts '------------'

user.add_role :admin

puts '------------'
puts '------------'

puts 'User now has Role: ' << user.roles.first.name

puts '------------'
puts '------------'

puts 'User now has Role: ' << user.roles.last.name

puts '------------'
puts '------------'

puts 'This is your email: ' << user.email
puts 'Login & change this password: ' << user.password

puts '------------'
puts '------------'

puts 'SETTING UP DEFAULT USER LOGIN for ALICE'

user = User.create(
  email: 'alicemeichi@gmail.com',
  password: 'alicemeichialicemeichi',
  password_confirmation: 'alicemeichialicemeichi'
)

puts '------------'
puts '------------'

puts 'New user created: ' << user.email

puts '------------'
puts '------------'

puts 'ADDING ADMIN ROLE!'

puts '------------'
puts '------------'

user.add_role :admin

puts '------------'
puts '------------'

puts 'User now has Role: ' << user.roles.first.name

puts '------------'
puts '------------'

puts 'User now has Role: ' << user.roles.last.name

puts '------------'
puts '------------'

puts 'This is your email: ' << user.email
puts 'Login & change this password: ' << user.password
