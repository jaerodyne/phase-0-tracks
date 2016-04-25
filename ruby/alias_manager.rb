#Create a method that takes a spy's real name and creates a fake name with it

#add first_name and last_name and store in original_name
#add original_name to name_database array
#write a method that compares alphabet to characters in first name and last name
#declare alphabet array
#iterate through alphabet array
#If letter in first_name matches any vowels in alphabet, change to next vowel
#If consonant, change to next consonant
#add new_first and new_last and store in full_name
#reverse full_name array to swap first and last name
#print original name and alias name

first_name = ""
name_database = []
alias_database = []

puts "Get your super secret name. (Type 'quit' when done)"

until first_name == 'quit' do
puts "First Name:"
first_name = gets.chomp.downcase
  
  if first_name == 'quit'
    break
  else
    puts "Last Name:"
    last_name = gets.chomp.downcase
    if last_name == 'quit'    
      break
  end

original_name = first_name.capitalize + " " + last_name.capitalize
original_name = original_name.split('')
original_name = original_name.join('')
name_database.push(original_name)

alphabet = {
  'a' => 'e', 
  'b' => 'c',
  'c' => 'd',
  'd' => 'f',
  'e' => 'i',
  'f' => 'g',
  'g' => 'h',
  'h' => 'j',
  'i' => 'o', 
  'j' => 'k',
  'k' => 'l',
  'l' => 'm',
  'm' => 'n',
  'n' => 'p',
  'o' => 'u',
  'p' => 'q',
  'q' => 'r',
  'r' => 's',
  's' => 't',
  't' => 'v',
  'u' => 'a',
  'v' => 'w',
  'w' => 'x',
  'x' => 'y',
  'y' => 'z',
  'z' => 'b'
}

new_first =[]
  first_name.each_char do |letter|
    first = alphabet[letter]
    new_first.push(first)
  end

new_first = new_first.join('').capitalize
new_first = new_first.split(' ')

new_last =[]
  last_name.each_char do |letter|
    last = alphabet[letter]
    new_last.push(last)
  end

new_last = new_last.join('').capitalize
new_last = new_last.split(' ')

puts full_name = new_first + new_last
full_name = full_name.reverse
full_name = full_name.join(' ')
puts "Your alias is #{full_name}."

alias_database.push(full_name)

puts "Give me another alias. (Remember: type 'quit' when done.)"
end

puts "#{name_database} is #{alias_database}!"
end
