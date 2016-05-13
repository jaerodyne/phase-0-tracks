#Create hash to store applicant info and set each key to user input's value
#Create user interface to get input values
#Print applicant hash to display user inputs
#Ask user if they want to update any of the fields

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

#USER INTERFACE
puts "Enter in your name:"
name = gets.chomp.to_s

puts "Address:"
address = gets.chomp.to_s

puts "Email:"
email = gets.chomp.to_s

puts "Phone Number:"
phone = gets.chomp.to_s

puts "Number of rooms to be renovated:"
number_of_rooms = gets.chomp.to_i

puts "What's your decor theme?"
decor_theme = gets.chomp.to_s

puts "Do you want a game room? (yes/no)"
game_room = gets.chomp.to_s

puts "Do you want a pool? (yes/no)"
pool = gets.chomp.to_s

puts "Do you want carpet? (yes/no)"
carpet = gets.chomp.to_s
puts "Do you want tiles? (yes/no)"
tiles = gets.chomp.to_s
puts "Do you want wooden floors? (yes/no)"
wooden_floors = gets.chomp.to_s


puts applicant


puts "Are you sure about your decor theme? You'll have to live with it forever! (Type 'none' if you don't want to make any changes. Otherwise, press enter to move on.)"
#Store user answer in affirmative variable
affirmative = gets.chomp.downcase.to_s

#Create conditional statement to replace decor_theme in applicant hash
if affirmative == "none"
  puts "Well, if you're sure."
else
#Access decor_theme key in applicant hash and delete its value
  applicant.delete(:decor_theme)
#Ask user for new decor theme and store in decor_theme_alt variable
  puts "What decor theme would you like to use instead?"
  decor_theme_alt = gets.chomp
#Set decor_theme hash value to new decor_theme_alt variable
  applicant[:decor_theme] = decor_theme_alt
#Print newly-generated decor_theme variable
  puts "#{applicant[:decor_theme]} it is!"
#Print updated applicant hash
  puts applicant
end
