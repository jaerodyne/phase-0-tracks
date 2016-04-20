puts "Enter in your name:"
name = gets.chomp
puts "Address:"
address = gets.chomp
puts "Email:"
email = gets.chomp
puts "Phone Number:"
phone = gets.chomp
puts "Number of Children:"
number_of_children = gets.chomp
puts "Do you want a game room? (true/false)"
game_room = gets.chomp

applicant = {
  name: name, 
  address: address,
  email: email, 
  phone: phone,
  number_of_children: number_of_children,
  game_room: Bool
  #pool:
  #jacuzzi:
  #carpet:
  #tile:
  #wooden floors:
}

#client name
#age
#address
#email
#phone
#number of children
#decor theme
#game room
#pool
#jacuzzi
#carpet
#tile
#wooden floors
