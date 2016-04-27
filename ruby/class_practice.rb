class Reindeer
  def initialize(name)
    @name = name
    @location = "the North Pole"
  end
  
  def take_off (altitude)
    puts "#{@name} took off."
    puts "#{@location} = the North Pole"
  end
  
  def take_off(altitude)
    puts "#{@name} took off."
    puts "#{@name} ascended to #{altitude} feet."
  end
  
  def land(location)
    puts "Landed safely in #{location}."
    @location = location
  end
    
  def about
    puts "Name: #{@name}"
    puts "Location: #{@location}"
  end
end

reindeer = Reindeer.new("Blitzen")
reindeer.about
reindeer.take_off(3000)
reindeer.land("Bombay")

reindeer = Reindeer.new("Rudolph")
reindeer.about
reindeer.take_off(10000)
reindeer.land("Paris")