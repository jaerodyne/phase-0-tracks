#4.6 paired with Susie O'Brien

puts "Would you like to encrypt or decrypt a password?"
preference=gets.chomp
until preference=="encrypt" || preference=="decrypt"
  puts "Please enter a valid input (encrypt or decrypt)."
  preference=gets.chomp
end

puts "Please enter the password you would like to solve!"
user_input=gets.chomp

# Create a global variable that can be used in encrypt and decrypt methods
$new_password = ""
# Create encryption method
def encrypt(password)
  # Find password length
  length=password.length
  # Create variable to store index in
  index=0
  # Create variable to subtract password length from index one by one
  index_loop= length -1
  # Create until loop to show iteration through index
  until index > index_loop
      if password[index]==" "
        letter=" "
      else
        # Skip to next index
        letter=password[index].next[0]
      end
      # Add new letter to password
      $new_password = $new_password + letter
      #Increment index
      index+=1
    end
    # Display new password
  puts "Your new encrypted password is #{$new_password}."
end

# Create decryption method
def decrypt(encrypted_password)
  # Create variable for entire alphabet
  alphabet="abcdefghijklmnopqrstuvwxyz"
  # Create variable to store decrypted password
  decrypted_password = ""
  # Create variable to store new index 
  new_index=0
  # Create variable to subtract password length one by one
  indexes_encrypted_password=encrypted_password.length-1
  # Create until loop to show iteration through new_index
  until new_index > indexes_encrypted_password
    #Iterate through new_index
    new_letter=encrypted_password[new_index]
    # Find letter in alphabet index
    alphabet.index(new_letter)
    # Find index of letter in encrypted password
    alpha_index=alphabet.index(new_letter)
    # Subtract alpha_index to get index of previous letter
    alpha_index=alpha_index-1
    # Set new_letter to alpha_index
    new_letter=alphabet[alpha_index]
    # Increment new_index
    new_index+=1
    # Add new_letter to decrypted_password
    decrypted_password=decrypted_password + new_letter
  end
  # Display decrypted password
   puts "Your new decrypted password is #{decrypted_password}."
end

if preference=="encrypt"
    encrypt(user_input)
elsif preference=="decrypt"
    decrypt(user_input)
end
