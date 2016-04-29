#create class for Guitar
#define attributes: brand_name, model, color
#3 methods: play, switch pickups, adjust volume

#use attr_reader and attr_accessor
#use initialize to set attributes

class Guitar
  attr_reader :brand_name 
  # :budget
  attr_accessor :model, :color
  # attr_accessor :pickup

  def initialize
    @brand_name = brand_name
    puts "#{brand_name}"
    @model = model
    puts "#{model}"
    @color = color
    puts "#{color}"
  end

  def play(guitar, color)
    puts "Ready to play 3 chords on this #{color} #{guitar}?!"
    puts "Just kidding, let's play something else to celebrate International Jazz Day."
  end

  def switch_pickups(pickup)
    puts "Let's switch to the #{pickup} pickup."    
  end

  def volume(level)
    puts "Let's turn that volume dial to #{level}."
    if level.between?(0, 5)
      puts "What's that? I can barely hear you."
    elsif level.between?(6, 10)
      puts "Turn down for what?"
    else
      puts "How much hearing loss do you have now?"
    end
  end

end

#initialize guitar
axes = []
new_guitar = Guitar.new
axes << new_guitar 
puts axes
#start user interface
brands = []
puts "Ready to play guitar? Let's grab a PRS. If you want to use another brand, type it in. Otherwise, type in PRS."
brand_name = gets.chomp
#force PRS answer
while brand_name != 'PRS'
  puts "You're kidding right? PRS is the way to go. Type in PRS."
  brand_name = gets.chomp
end
brands << (brand_name)
puts brands
puts "Glad you came to your senses."

#pick one of 3 in guitar_collection
guitar_models = []
puts "So what model do you want to use? (Hollowbody II/513/Custom 24)."
guitar_collection = ['Hollowbody II', '513', 'Custom 24']
model = gets.chomp

until guitar_collection.include? model
  puts "Looks like we don't have one in our collection yet. Choose the Hollowbody II/513/Custom 24."
  model = gets.chomp
end

guitar_models << (model)
puts guitar_models

#get color
colors = []
puts "Now what color would you like?"
color = gets.chomp
puts "Sweet. Personally, I prefer blood orange myself."

colors << (color)
puts colors

#run play method in class
new_guitar.play(model, color)

pickups_collection = ['bridge', 'middle','neck']

#pick pickups (ahem)
chosen_pickup = []
puts "What pickup should we use? (bridge/middle/neck)"
pickup = gets.chomp

until pickups_collection.include? pickup
  puts "That's not an option. Pick again. (bridge/middle/neck)"
  pickup = gets.chomp
end

chosen_pickup << pickup
puts chosen_pickup
new_guitar.switch_pickups(pickup)


if pickup == "bridge"
  puts "For jazz? Are you sure?"
elsif pickup == "middle"
  puts "We can work with that."
else
  puts "Yeah, that's more like it."
end

puts "Pump up the volume!"
# create range of volume from 0 - 15
volume_range = (0...15).to_a
# randomize volume
level = new_guitar.volume(volume_range.sample)

# new_guitar do
#   puts "Brand: #{brand_name}"
#   puts "Model: #{model}"
#   puts "Color: #{color}"
#   puts "Pickup: #{pickup}"
#   puts "Level: #{level}"
# end