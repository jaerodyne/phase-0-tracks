# letters = ["a", "b", "c", "d", "e"]

# puts "Original data:"
# p letters

# # iterate through the array with .map
# modified_letters = letters.map do |letter|
#   puts letter
#   letter.next
# end

# puts "After .map call:"
# p letters
# p modified_letters


LETTERS = ('a'..'z').to_a

print LETTERS

def letter_changes(str)
  str = str.split('')
  puts "This is #{str}"
  new_str = str.map do |c|
    next ' ' unless LETTERS.include?(c)
    new_letter = LETTERS[(LETTERS.index(c)+1)%LETTERS.length]
    # new_letter.upcase! if %w{a e i o u}.include?(new_letter)
    puts new_letter
  end
  return new_str.join
end


puts letter_changes('foo bar baz')









