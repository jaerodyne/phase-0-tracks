# #Create a method that takes a spy's real name and creates a fake name with it

# #Write methods to swap first and last name
# #get user first name and capitalize
# puts "First Name:"
# first_name = gets.chomp.capitalize
# #get user last name and capitalize
# puts "Last Name:"
# last_name = gets.chomp.capitalize
# #convert first name to array
# first_name = first_name.split(' ')

# #convert last name to array
# last_name = last_name.split(' ')

# #Change all vowels to next vowel in aeiou
# alias_name = []
# #Change consonants to next consonant in alphabet
# #maybe hardcode alphabet variable and downcase it for iteration?
# #remember edge cases
# #convert a string to an array
# #figure out what letter is a vowel
# #hardcode vowels?
# #write method that takes vowel and return next vowel

# #split full_name into individual characters
# # full_name.each do |letter|
# #   alias_name << letter.next
# # end

# # p full_name.split
# # p alias_name

# # full_name.map do |letter|
# #   alias_name.

# #add first_name and last_name array and store in full_name
# full_name = first_name + last_name
# #reverse full_name array to swap first and last name
# full_name = full_name.reverse
# print full_name

#Create a method that takes a spy's real name and creates a fake name with it

#Write methods to swap first and last name
#get user first name and capitalize
puts "First Name:"
first_name = gets.chomp.downcase
#get user last name and capitalize
# puts "Last Name:"
# last_name = gets.chomp.downcase
#convert first name to array of characters
first_name = first_name.split('')
puts first_name

#write a method that compares vowels to characters in first name
# def next_vowel
#declare vowels array
# vowels = ['a', 'e', 'i', 'o', 'u']
#iterate through vowels array
#If letter in first name matches any character in vowels, use next letter in vowels

first_name_vowels = first_name.select { |vowel| vowel =~ /[aeiou]/ }
puts first_name_vowels

first_name_vowels.each do |letter|
  

#use select 
#shift vowels

#Change all vowels to next vowel in aeiou

#If consonant, switch to next letter

# else
#   first_name.map! do |letter|
#     puts letter
#     letter.next
# end

#convert last name to array
# last_name = last_name.split('')


#Change all vowels to next vowel in aeiou

#Change consonants to next consonant in alphabet
#maybe hardcode alphabet variable and downcase it for iteration?
#remember edge cases
#convert a string to an array
#figure out what letter is a vowel
#hardcode vowels?
#write method that takes vowel and return next vowel



#split full_name into individual characters
# full_name.each do |letter|
#   alias_name << letter.next
# end

# p full_name.split
# p alias_name

# full_name.map do |letter|
#   alias_name.

#add first_name and last_name array and store in full_name
# full_name = first_name + last_name
#reverse full_name array to swap first and last name
# full_name = full_name.reverse
# print full_name