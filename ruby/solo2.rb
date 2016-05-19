class Outfit

  attr_reader
  attr_accessor :top, :bottom, :shoes, :accessories

  def initialize(top, bottom, shoes, accessories)
    @top = top
    @bottom = bottom
    @shoes = shoes
    @accessories = accessories
  end

  def strut
    puts "I could go down a catwalk wearing this."
  end

  def go_shopping
    puts "Time for retail therapy."
  end

  

end

casual = Outfit.new('shirt', 'jeans', 'nikes', 'oakleys')
puts "Lookin' so fly in your #{casual.top}, #{casual.bottom}, #{casual.shoes}, and #{casual.accessories}."
casual.strut