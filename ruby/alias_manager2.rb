#Get spy's real name
#Swap first and last name
#Change each vowel in name to next vowel {ex: a => e, e => i, etc.}
#Change each consonant in name to next consonant {ex: b => c, c => d, etc.}
#Ex: Felicia Torres => Vussit Gimodoe

#Subtract vowels from alphabet?

# def next_vowel(str)
#   str.gsub!(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
#   puts str
# end

# next_vowel('aeiou')

def next_letter(str)
  str = str.downcase
  str.gsub!(/[abcdefghijklmnopqrstvwxyz]/,
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
  )
end

def swap_name(real_name)
  array = next_letter(real_name).split(' ')
  array = array.map(&:capitalize)
  array[0], array[1] = array[1], array[0]
  spy_name = array.join(' ')
  add_to_database(real_name, spy_name)
end

def add_to_database(real_name, spy_name)
  puts "#{real_name} and #{spy_name}"
  # alias_database = Hash.new { |hash, key| hash[key] = [] }
  # word = swap_name(real_name)
  # alias_database[real_name] = word
  # puts alias_database
end

#User Interface
count = 0
until count == 5
  puts "What's your name?"
  real_name = gets.chomp
  # add_to_database(full_name)
  new_name = swap_name(real_name)
  # add_to_database(full_name, new_name)
  count+=1
end

# puts alias_database

