def array(x,y,z)
  a = [x,y,z]
  print a
end

def new_array(x,y,z,new_item)
  a = [x, y, z]
  a.push(new_item)
  print a
end

empty_variable = []

p empty_variable

empty_variable = ["spoon", "fork", "knife", "plate", "glass"]

p empty_variable

p empty_variable.delete_at(2)

p empty_variable

empty_variable.insert(2, "candy")

p empty_variable

empty_variable.shift

p empty_variable

if empty_variable.include? ("glass")
  puts "this array includes glass"
end

food = ["pizza", "donuts", "chinese food", "chicken wings", "mango lassi"]

dinner = empty_variable + food

p dinner

array("a", "b", "c")

new_array("a", "b", "c", "d")

new_array("orange", "hunger", 3, 6, 8)
