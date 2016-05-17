# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # split the list
  # add each item as a key to hash
  # set default quantity to 1 as value
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: name method
  # method should be able to take argument and add it to the hash
# output: hash with updated key-value pairs

# Method to remove an item from the list
# input: item key to be removed
# steps:
  # input key so that it can be removed from hash
# output: hash with updated key-value pair

# Method to update the quantity of an item
# input: input item to be updated 
# steps:
  # create a method that takes an argument
  # check if item actually exists
  # if so, update the value of the key
# output: hash with updated key-value pair

# Method to print a list and make it look pretty
# input: hash
# steps:
  # use .each to print key-value pairs
# output: hash

def create_list(list)
  list = list.split(' ')
  grocery_list = {}
  list.each { |item, qty| grocery_list[item] = 1 }
  return grocery_list
end

def add(final_list, item)
  final_list[item] = 1
  puts final_list
end

def delete(final_list, item)
  final_list.delete("peanuts")
  puts final_list
end

def update(final_list, item, int)
  final_list[item] = int
  puts final_list
end

def print_list(final_list)
  final_list.each {|item, qty| puts "#{item} has #{qty} in inventory"}
end
  
  
list = ("bananas milk yogurt eggs bread")
final_list = create_list(list)
puts final_list
add(final_list, "peanuts")
delete(final_list, "peanuts")
update(final_list, "bananas", 54)

print_list(final_list)





