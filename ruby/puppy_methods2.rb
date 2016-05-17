class Puppy

  def fetch(name)
    puts "#{name} fetched a ball!"
  end

  def speak(int)
    int.times do
    puts "Woof!"
    end
  end

end

fido = Puppy.new

fido.fetch("Fido")
fido.speak(5)