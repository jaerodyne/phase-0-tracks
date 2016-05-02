[1, 2, 3].each do |n|
  puts "Number #{n}"
end

[1, 2, 3].each { |n| puts "Number #{n}" }

def my_method
  puts "reached the top"
  yield
  puts "reached the bottom"
end

my_method do 
  puts "reached yield"
end

# parameters inside the block are local to the block

my_method do |name, age|
  puts "What's your name?"
  name = gets.chomp
  puts "Age?"
  age = gets.chomp
  puts "#{name} is #{age} years old"
end

# a method doesn't need to specify the block in its signature in order to receive a block parameter

# if you want to make the block an optional parameter, you can use the block_given? method which will return either true or false depending on if a block was passed in to the method or not

# the order of arguments is important because the order you use to pass in the parameters is the order in which the block receives them

def other_method(&block)
  puts block
  #instead of using yield, use:
  block.call
end

other_method { puts "Hello" }

# yield returns the last evaluated expression from inside the block

def add
  list = yield
  puts "Grocery is #{list}"
end

add do |item, qty|
  puts "What would you like to put on your grocery list?"
  #add item
  item = gets.chomp
  #add quantity set default to 1
  puts "What quantity?"
  qty = gets.chomp.to_i
  qty = 1 + qty
  puts "#{item}, #{qty}"
end

def my_map(array)
  new_array = []
  
  for element in array
    new_array.push yield element
  end
  
  new_array
end

my_map([1,2,3]) do |number|
  puts number * 2
end

def list
  items = yield
  puts "#{items}"
end

list do
  {:bananas => 1, :grapes => 1, :oranges => 1, :apples => 1}
end
