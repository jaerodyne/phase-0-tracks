#create class for Guitar
#define attributes: brand_name, model, color, cost
#3 methods: play, switch pickups, adjust volume

#use attr_reader and attr_accessor
#use initialize to set attributes

class Guitar
  attr_reader :brand_name 
  # :budget
  attr_accessor :model
  # attr_accessor :pickup :model :color :cost

  def initialize
    @brand_name = brand_name
    puts "#{brand_name}"
    @model = model
    puts "#{model}"
    # @color = color
    # puts "#{color}"
    # @cost = cost
    # puts "#{cost}"
    # @guitar_collection = ['Hollowbody II', '513', 'Custom 24']
  end

  def play(guitar)
    puts "Ready to play 3 chords on this #{guitar}!"
    puts "Just kidding, let's play something else to celebrate International Jazz Day."
  end

  def switch_pickups(pickup)
    puts "Let's switch to the #{pickup} pickup."    
  end

  def volume(level)
    "Let's turn that volume dial to #{level}."
  # randomize volume
  # create range of volume from 0 - 20
  # if volume 0-5, turn down
  # if volume 6-10, turn up
  # do you really want to end up using a hearing aid?
  end

end

# prs = Guitar.new('PRS', 'Hollowbody II', 'Blood Orange', '$4000')
# prs.switch_pickups('bridge')
# puts prs.model
# puts prs.switch_pickups('middle')

pickups = ['bridge', 'bridge and middle combo', 'middle', 'middle and neck combo', 'neck']
#initialize guitar
new_guitar = Guitar.new
#start user interface
puts "Ready to play guitar? Let's grab a PRS. If you want to use another brand, type it in. Otherwise, type in PRS."
brand_name = gets.chomp
#force PRS answer
while brand_name != 'PRS'
  puts "You're kidding right? PRS is the way to go. Type in PRS."
  brand_name = gets.chomp
end

puts "Glad you came to your senses."
puts "So what model do you want to use? (Hollowbody II/513/Custom 24)."
guitar_collection = ['Hollowbody II', '513', 'Custom 24']

#pick one of 3
model = gets.chomp

until guitar_collection.include? model
  puts "Looks like we don't have one in our collection yet. Choose the Hollowbody II/513/Custom 24."
  model = gets.chomp
end
new_guitar.play(model)
# puts "Good choice."
# puts "Now what color would you like?"
# color = gets.chomp
# puts "Sweet. Personally I prefer Blood Orange myself."
