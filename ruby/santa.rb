class Santa

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    # cookie = ""
    puts "That was a good #{cookie}."
  end

  def initialize
    puts "Initializing Santa instance..."
  end

end

a = Santa.new
a.eat_milk_and_cookies("Snickerdoodle")
a.speak.initialize