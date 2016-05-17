class Puppy

  def fetch(name)
    puts "#{name} fetched a ball!"
  end

  def speak(int)
    int.times do
    puts "Woof!"
    end
  end

  def roll_over
    print "*rolls over*"
  end

end

fido = Puppy.new

fido.fetch("Fido")
fido.speak(5)
fido.roll_over