#Create hash to store applicant info and set each key to user input's value
#Create user interface to get input values
#Print applicant hash to display user inputs
#Ask user if they want to update any of the fields
#Create conditional statement to replace any value in applicant hash
#Print final applicant hash

#USER INTERFACE
puts 'Enter in your name:'
name = gets.chomp.to_sym

puts 'Address:'
address = gets.chomp.to_sym

puts 'Email:'
email = gets.chomp
until email.include? '@'
  puts "Please enter in a valid email address, so we don't think you're a spy."
  email = gets.chomp
end

puts 'Phone Number:'
phone = gets.chomp.to_sym

puts 'Number of rooms to be renovated:'
number_of_rooms = gets.chomp.to_i

puts "What's your decor theme?"
decor_theme = gets.chomp

puts 'Do you want a game room? (y/n)'
game_room = gets.chomp
until game_room == 'y' || game_room == 'n'
  puts 'Please enter a valid answer. (y/n)'
  game_room = gets.chomp
end

puts 'Do you want a pool? (y/n)'
pool = gets.chomp
until pool == 'y' || pool == 'n'
  puts 'Please enter a valid answer. (y/n)'
  pool = gets.chomp
end

puts 'Do you want carpet? (y/n)'
carpet = gets.chomp
until carpet == 'y' || carpet == 'n'
  puts 'Please enter a valid answer. (y/n)'
  carpet = gets.chomp
end

puts 'Do you want tiles? (y/n)'
tiles = gets.chomp
until tiles == 'y' || tiles == 'n'
  puts 'Please enter a valid answer. (y/n)'
  tiles = gets.chomp
end

puts 'Do you want wooden floors? (y/n)'
wooden_floors = gets.chomp
until wooden_floors == 'y' || wooden_floors == 'n'
  puts 'Please enter a valid answer. (y/n)'
  wooden_floors = gets.chomp
end

applicant = {
  name: name,
  address: address,
  email: email, 
  phone: phone,
  number_of_rooms: number_of_rooms,
  decor_theme: decor_theme,
  game_room: game_room,
  pool: pool,
  carpet: carpet,
  tiles: tiles,
  wooden_floors: wooden_floors
}

#Convert y/n string to boolean
if game_room == 'y'
  applicant[:game_room] = true
else
  applicant[:game_room] = false
end

if pool == 'y'
  applicant[:pool] = true
else
  applicant[:pool] = false
end

if carpet == 'y'
  applicant[:carpet] = true
else
  applicant[:carpet] = false
end

if tiles == 'y'
  applicant[:tiles] = true
else
  applicant[:tiles] = false
end

if wooden_floors == 'y'
  applicant[:wooden_floors] = true
else
  applicant[:wooden_floors] = false
end

puts applicant

puts "Are you sure about your decor theme? You'll have to live with it forever! \n(Type 'none' if you don't want to make any changes. Otherwise, press enter to move on.)"
affirmative = gets.chomp.downcase.to_sym

if affirmative == 'none'
  puts "Well, if you're sure."
else
  puts 'What decor theme would you like to use instead?'
  decor_theme_alt = gets.chomp
  applicant[:decor_theme] = decor_theme_alt
  puts '#{applicant[:decor_theme]} it is!'
end

print applicant
