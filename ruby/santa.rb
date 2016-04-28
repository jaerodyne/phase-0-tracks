class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie.downcase} cookie."
  end

  def initialize(name, gender, ethnicity)
    puts "Initializing Santa instance..."
    @name = name
    puts "My name is #{name}."
    @gender = gender
    puts "I identify as #{gender}."
    @ethnicity = ethnicity
    puts "According to the census, I am #{ethnicity}."
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    age = 0
  end

  def celebrate_birthday(age)
    age+=1
    puts "Santa turned #{age} this year!"
  end 

  def get_mad_at(reindeer)
    #if reindeer name matches name in reindeer_ranking, move reindeer name to last place in index
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking << (reindeer)
      puts @reindeer_ranking
  end

end

birthday_santa = Santa.new("Truffles", "prince", "black")
birthday_santa.celebrate_birthday(57)
birthday_santa.get_mad_at("Vixen")
puts birthday_santa.gender = "This is Prince"

santas = []
names = ["Ariel", "Bailey", "Logan", "Shannon", "Taylor", "Jackie", "Jessie"]
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
random_age = (0...140).to_a
cookies = ["White Chocolate Chip", "Sugar", "Snickerdoodle", "Double Chocolate Chip", "Peanut Butter", "Oatmeal"]

#run loop for total number of genders
#create a new santa that initializes each gender in example_genders array and each ethnicity in example_ethnicities array
#add each initialized Santa to array
example_genders.length.times do |i|
  santas << Santa.new(names[i], example_genders[i], example_ethnicities[i])
end

#randomize each of Santa's attributes
santas.each do |random|
  puts "Name: #{names.sample}"
  puts "Ethnicity: #{example_ethnicities.sample}"
  puts "Gender: #{example_genders.sample}"
  puts "Age: #{random_age.sample}"
  puts random.eat_milk_and_cookies(cookies.sample)
end




