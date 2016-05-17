class Puppy

  def initialize
    puts "Initializing new puppy instance."
  end

  def fetch(name)
    puts "#{name} fetched a ball!"
  end

  def speak(int)
    int.times do
    puts "Woof!"
    end
  end

  def roll_over
    print "*rolls over*\n"
  end

  def dog_years(int)
    first_two_years = 2 * 10.5
    int -= 2
    years_after = int * 4
    age = first_two_years + years_after
    puts "Age: #{age}"
    # For more details on dog year calculation: http://www.calculatorcat.com/dogs/dog-years.phtml
  end

  def take_photograph(name)
    puts "Just sit there and look cute #{name}. This is going on Instagram/Snapchat/the InTeRnEtZ."
  end 

end

fido = Puppy.new

fido.fetch("Fido")
fido.speak(5)
fido.roll_over
fido.dog_years(3)
fido.take_photograph("Fido")