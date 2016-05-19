class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    puts 'Initializing Santa instance...'
  end

  def speak
    puts 'Ho, ho, ho! Haaaappy holidays!'
  end 

  def eat_milk_and_cookies(cookie)
    puts 'That was a good #{cookie}!'
  end

  def celebrate_birthday(age)
    age += 1
  end

  def get_mad_at(reindeer)
    if @reindeer_ranking.include? reindeer
      @reindeer_ranking.delete(reindeer)
      @reindeer_ranking << reindeer
      puts @reindeer_ranking
    end
    puts "Damn you #{reindeer}"
  end

end

claus = Santa.new('Androgynous', 'Alien Race')
puts claus
puts claus.speak
puts claus.eat_milk_and_cookies('snickerdoodle')

santas = []
genders = [
'Agender',
'Androgyne',
'Androgynous',
'Bigender',
'Cis',
'Cisgender',
'Cis Female',
'Cis Male',
'Cis Man',
'Cis Woman',
'Cisgender Female',
'Cisgender Male',
'Cisgender Man',
'Cisgender Woman',
'Female to Male',
'FTM',
'Gender Fluid',
'Gender Nonconforming',
'Gender Questioning',
'Gender Variant',
'Genderqueer',
]

ethnicities = [
  'White',
  'Black',
  'Filipino',
  'Chamorro',
  'Japanese',
  'Laotian',
  'Vietnamese',
  'Chinese',
  'French',
  'German',
  'Italian'
]

nick = Santa.new(genders.sample, ethnicities.sample)
nicole = Santa.new(genders[0], ethnicities[2])

3.times do |santa|
  Santa.new(genders.sample, ethnicities.sample)
end

puts nick.celebrate_birthday(2)
nick.get_mad_at('Dasher')