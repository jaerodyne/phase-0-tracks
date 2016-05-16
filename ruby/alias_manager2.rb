#Get spy's real name
#Swap first and last name
#Change each vowel in name to next vowel {ex: a => e, e => i, etc.}
#Change each consonant in name to next consonant {ex: b => c, c => d, etc.}
#Ex: Felicia Torres => Vussit Gimodoe

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
end

def add_to_database(alias_database, real_name, spy_name)
  alias_database[real_name] = spy_name
end

def final_print(alias_database)
  alias_database.each { |name, aliases| puts "#{name} is actually #{aliases}!" }
end

alias_database = Hash.new { |hash, key| hash[key] = [] }

#User Interface
real_name = ""

until real_name == "quit"
  puts "What's your name?"
  real_name = gets.chomp
    if real_name == "quit"
      break
    else
      spy_name = swap_name(real_name)
      add_to_database(alias_database, real_name, spy_name)
      puts "Type 'quit' if you're done generating aliases."
  end
end

final_print(alias_database)
