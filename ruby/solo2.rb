class Outfit

  attr_accessor :top, :bottom, :shoes, :accessories

  def initialize(top, bottom, shoes, accessories)
    @top = top
    @bottom = bottom
    @shoes = shoes
    @accessories = accessories
  end

end

casual = Outfit.new('shirt', 'jeans', 'nikes', 'oakleys')
puts "Lookin' so fly in your #{casual.top}, #{casual.bottom}, #{casual.shoes}, and #{casual.accessories}."