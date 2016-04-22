# write a method that takes a block

# define a method for favorite color
def favorite_color
 puts "What is your favorite color?"
 3.times{yield}
end

# call the method with a block
favorite_color { puts "Red."}

# declare an array
hollywood_actors = ["Tom Hanks", "Robert Downey Jr.", "Scarlet Johanson"]

# declare a hash
musicians = {"The Beatles" => "Paul McCartney", "Rolling Stones" => "Mick Jagger", "Prince" => "Prince"}

# iterate through array using .each
hollywood_actors.each do |actor| 
 puts actor
end

# iterate through hash using .each
musicians.each do |band, musician|
 puts "Here's the band: #{band} and here's the musician: #{musician}!"
end

# use .map! modifying the data in some way for the array
hollywood_actors.map! { |actor| actor + "!"}
  
p hollywood_actors

numbers = [1, 2, 3, 4, 5]
# write a method that iterates through numbers for array
# delete number if less than 5

numbers.delete_if { |number| number < 5 }

p numbers

# write a method that iterates through numbers for hash
# delete integer if equal to 1

new_numbers = {"one" => 1, "two" => 2, "three" => 3}

new_numbers.delete_if { |number, int| int == 1 }

p new_numbers

#filter through array and select first item in array
p numbers.first

#filter through has and select (key, value) pair for int 2
p new_numbers.select {|number, int| int == 2}

# filter through array and select last item in array
p numbers.last

p new_numbers.keep_if {|number, int| int == 3}
