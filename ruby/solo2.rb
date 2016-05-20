# generate an outfit from wardrobe hash using Outfit class

class Outfit

  attr_reader :name
  attr_accessor :top, :bottom, :shoes, :accessories

  def initialize(top, bottom, shoes, accessories)
    @name = "Daily wear"
    @top = top
    @bottom = bottom
    @shoes = shoes
    @accessories = accessories
  end

  def strut
    puts "You could go down a catwalk wearing this."
  end

  def go_shopping
    puts "Guess it's time for retail therapy! Consumerism wins again!"
  end

  def donate(clothing)
    puts "We'll put this #{clothing} to rest at Goodwill. Eventually."
  end

end

# casual = Outfit.new('shirt', 'jeans', 'nikes', 'oakleys')
# puts "Lookin' so fly in your #{casual.top}, #{casual.bottom}, #{casual.shoes}, and #{casual.accessories}."
# casual.strut
# casual.go_shopping
# casual.donate('ragged toga')

wardrobe = {
  tops: ['Star Wars graphic tee', 'blouse', 'dress shirt'],
  bottoms: ['jeans', 'skirt', 'jeggings'],
  shoes: ['Adidas high tops', 'Jimmy Choos', 'Converse'],
  accessories: ['Tiffany bracelet', 'Swarovski necklace', 'Rolex']
}

#USER INTERFACE
final_outfit = []
affirmative = ''

until affirmative == 'n'

  puts "What will you wear today?"
  puts "Here are your options for a top: \n#{wardrobe[:tops]}"
  puts "Which one would you like?"
  top = gets.chomp

  until wardrobe[:tops].include? top
    puts "That's in the laundry. I think. How about one of these: \n#{wardrobe[:tops]}"
    top = gets.chomp
  end

  puts "Here are your options for a bottom: \n#{wardrobe[:bottoms]}"
  bottom = gets.chomp

  until wardrobe[:bottoms].include? bottom
    puts "That's in the laundry. I think. How about one of these: \n#{wardrobe[:bottoms]}"
    bottom = gets.chomp
  end

  puts "Here are your options for shoes:\n #{wardrobe[:shoes]}"
  shoe = gets.chomp

  until wardrobe[:shoes].include? shoe
    puts "I threw those onto the power lines. How about one of these: \n#{wardrobe[:shoes]}"
    shoe = gets.chomp
  end

  puts "Here are your options for accessories: \n#{wardrobe[:accessories]}"
  accessory = gets.chomp

  until wardrobe[:accessories].include? accessory
    puts "I don't think that suits me. How about one of these: \n#{wardrobe[:accessories]}"
    accessory = gets.chomp
  end

  new_outfit = Outfit.new(top, bottom, shoe, accessory)
  
  final_outfit << new_outfit

  puts "Say, does this #{new_outfit.top} look raggedy to you? (y/n)"
  rags = gets.chomp
    if rags == 'y'
      new_outfit.donate(new_outfit.top)
      new_outfit.go_shopping
    else
      puts "Thanks for your believable input. \nDo you want to put together another outfit? (y/n)"
      affirmative = gets.chomp.downcase
    end

end

final_outfit.each do |outfit|
  puts "Looking so fly in that #{outfit.top}, #{outfit.bottom}, #{outfit.shoes} and a shiny #{outfit.accessories}!"
  outfit.strut
end