puts "First Name:"
first_name = gets.chomp.downcase

puts first_name

vowels = {
  'a' => 'e', 
  'e' => 'i', 
  'i' => 'o', 
  'o' => 'u',
  'u' => 'a'
}

vowels.each { |k,v| first_name.gsub!(k, v)}

puts first_name

search_hash = {
  '1' => 'one', 
  'too' => 'two', 
  
}
str = "1, too, four"
search_hash.each { |n,v| str.gsub!(n, v) }
puts str

consonants = {
  'b' => 'c',
  'c' => 'd',
  'd' => 'f',
  'f' => 'g',
  'g' => 'h',
  'h' => 'j',
  'j' => 'k',
  'k' => 'l',
  'l' => 'm',
  'm' => 'n',
  'n' => 'p',
  'p' => 'q',
  'q' => 'r',
  'r' => 's',
  's' => 't',
  't' => 'v',
  'v' => 'w',
  'w' => 'x',
  'x' => 'y',
  'y' => 'z',
  'z' => 'b'
}

consonants.each {|k,v| first_name.gsub!(k,v)}
puts first_name