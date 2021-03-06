#GPS 2.2 paired with Hayden Langelier

# Method to create a list
#define grocery_list
#puts "What items would you like to buy today? Please separate with commas."
#gets string from user   input =gets.chomp
#split strings to change to array 

# class Grocery

#   def new_list
#     puts "Please enter the items you want to buy!"
#    input=gets.chomp.split(' ')
#    list = {}
   
#    input.each do |item|
#      puts "What quantity of #{item} do you want?"
#    list[item]=gets.chomp
#    p list
#    end
#     @new_list = list
#     self
#   end

#   def add
#     puts "What else do you want to add?" 
#     newitem=gets.chomp
#     puts "how many do you want?"
#     newnumber=gets.chomp.to_i
#     list= @new_list
#     list[newitem]=newnumber
#     p list
#     self
#   end
  
#   def remove
#     puts "What item do you want to remove?"
#     removeditem=gets.chomp
#     list= @new_list
#     list.delete(removeditem)
#     p list
#     self
#   end

#   def update
#     puts "What item do you want to update the quantity?"
#     updateditem=gets.chomp
#     puts "how many do you want?"
#     updatednumber=gets.chomp
#     list=@new_list
#     list[updateditem]=updatednumber
#     p list
#     self
#   end

#   def entire_list
#     puts "Here is my fully updated and final grocery list: #{@new_list}."
#   end

# end

# a=Grocery.new
# a.new_list.add.remove.update.entire_list
# b=Grocery.new
# b.new_list.add.remove.update.entire_list

#After going over the gps instructions again after the pairing session, I realized that my partner and I were not supposed to use classes to finish the assignment. So I came up with my own solution to the challenge for my own learning:

def original_list(items)
  grocery_list = Hash.new { |hash, key| hash[key] = [] }
  items = items.split(' ').each { |value| grocery_list[value] = 1}
  final_print(grocery_list)
end

def add_item(grocery_list, item, qty = 1)
  grocery_list[item] = qty
end

def remove_item(grocery_list, item)
  grocery_list.delete(item)
end

def final_print(grocery_list)
  grocery_list.each { |item, qty| puts "#{item} - #{qty}" }
end

list = original_list("carrots apples cereal pizza")
p list
add_item(list, "ice cream")
p list
remove_item(list, "pizza")
p list
add_item(list, "chocolate-covered strawberries", 5)
p list
final_print = final_print(list)
p "This is the final list: #{final_print}"

#Reflection

# I learned that pseudocode is really helpful in creating a path for your thought process for your code. It's a lot better than going in blindly because doing that can cause you to lose a lot of time. Using an array in the beginning made a lot more sense because it was required that the words be split up, but since quantities of each item were eventually added, a hash became more appropriate for the situation. A method returns a value or a set of values. You can strings, arrays, integers, hashes, etc. into methods as arguments. Passing info through methods can be done by declaring a variable that contains the first method and then using that variable to add on other methods. I learned more about how to pass info between methods, which was great because I found that I still struggle with the topic. Things are a lot clearer for me now after doing this GPS on my own.
