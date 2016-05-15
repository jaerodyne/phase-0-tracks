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

def swap_name(name)
  array = next_letter(name).split(' ')
  array = array.map(&:capitalize)
  array[0], array[1] = array[1], array[0]
  spy_name = array.join(' ')
  puts spy_name
end

#User Interface
puts "What's your name?"
full_name = gets.chomp

method(full_name)
# array = next_letter(full_name).split(' ')
# array = array.map(&:capitalize)
# array[0], array[1] = array[1], array[0]
# spy_name = array.join(' ')
# puts spy_name


