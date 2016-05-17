class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    age = 0
    reindeer_ranking = ['Rudolph', 'Dasher', 'Dancer', 'Prancer', 'Vixen', 'Comet', 'Cupid', 'Donner', 'Blitzen']
    puts 'Initializing Santa instance...'
    puts @gender
    puts @ethnicity
  end

  def speak
    puts 'Ho, ho, ho! Haaaappy holidays!'
  end 

  def eat_milk_and_cookies(cookie)
    puts 'That was a good #{cookie}!'
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