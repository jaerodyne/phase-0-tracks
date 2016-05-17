class Puppy

  def fetch(name)
    puts "#{name} fetched a ball!"
  end

end

fido = Puppy.new

fido.fetch("Fido")