class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    age = 0
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

claus = Santa.new("Androgynous", "Alien Race")
puts claus
puts claus.speak
puts claus.eat_milk_and_cookies("snickerdoodle")

santas = []
genders = [
"Agender",
"Androgyne",
"Androgynous",
"Bigender",
"Cis",
"Cisgender",
"Cis Female",
"Cis Male",
"Cis Man",
"Cis Woman",
"Cisgender Female",
"Cisgender Male",
"Cisgender Man",
"Cisgender Woman",
"Female to Male",
"FTM",
"Gender Fluid",
"Gender Nonconforming",
"Gender Questioning",
"Gender Variant",
"Genderqueer",
]
