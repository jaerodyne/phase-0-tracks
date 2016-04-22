def array(x,y,z)
  a = [x,y,z]
  print a
end

def new_array(arr, value)
  arr.push(value)
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

print new_array(["a", "b", "c"], "d")

print new_array(["orange", "hunger", 1], 2)

print new_array(["I", "want", "candy"], 5)