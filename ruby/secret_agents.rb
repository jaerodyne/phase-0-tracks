#Iterate through alphabet

#Find index of each letter
# password="abcd"

# def encrypt()
# length=password.length
# end
# password="abcd"

# def encrypt(password)
#   length=password.length
#   index=0
#   index_loop= length -1
#   until index > index_loop
#     letter=password[index].next    
#     puts "#{letter}"
#     index+=1
#     puts index
#   end
# end

# encrypt("abcd")
  
# encrypted_password=letter1+=letter2+=letter3

#get length
#set variable for length
#make loop for each character in string
# subtract 1 for every length
# length = length - 1

puts "Would you like to encrypt or decrypt a password?"
preference=gets.chomp
until preference=="encrypt" || preference=="decrypt"
  puts "Please enter a valid input (encrypt or decrypt)."
  preference=gets.chomp
end

puts "Please enter the password you would like to solve!"
user_input=gets.chomp

$new_password = ""
def encrypt(password)
  length=password.length
  index=0
  index_loop= length -1
  until index > index_loop
      letter=password[index].next
      # puts "#{letter}"
      $new_password = $new_password + letter
      index+=1
      # puts index
      # new_variable="letter"+"#{index}"
      # p new_variable
    end
    puts "Your new encrypted password is #{$new_password}."
end

def decrypt(encrypted_password)
  alphabet="abcdefghijklmnopqrstuvwxyz"
  decrypted_password = ""
  new_index=0
  indexes_encrypted_password=encrypted_password.length-1
  until new_index > indexes_encrypted_password
    new_letter=encrypted_password[new_index]
    alphabet.index(new_letter)
    alpha_index=alphabet.index(new_letter)
    alpha_index=alpha_index-1
    new_letter=alphabet[alpha_index]
    new_index+=1
    decrypted_password=decrypted_password + new_letter
  end
   puts "Your new decrypted password is #{decrypted_password}."
end


if preference=="encrypt"
    encrypt(user_input)
elsif preference=="decrypt"
    decrypt(user_input)
end



