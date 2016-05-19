# generate an outfit from wardrobe hash using Outfit class

class Outfit

  attr_reader :name
  attr_accessor :top, :bottom, :shoes, :accessories, :wardrobe

  def initialize(top, bottom, shoes, accessories)
    @name = "Daily wear"
    @top = top
    @bottom = bottom
    @shoes = shoes
    @accessories = accessories
    @wardrobe = wardrobe
  end

  def strut
    puts "I could go down a catwalk wearing this."
  end

  def go_shopping
    puts "Time for retail therapy."
  end

  def donate(clothing)
    puts "Let's put this #{clothing} to rest at Goodwill."
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


