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
    puts $new_password
end


encrypt("afe")


def decrypt(encrypted_password)
  alphabet="abcdefghijklmnopqrstuvwxyz"
  decrypted_password = ""
  new_index=0
  length_encrypted_password=encrypted_password.length-1
  until new_index > length_encrypted_password
    new_letter=encrypted_password[new_index]
    alphabet.index(new_letter)
    alpha_index=alphabet.index(new_letter)
    alpha_index=alpha_index-1
    new_letter=alphabet[alpha_index]
    new_index+=1
    decrypted_password=decrypted_password + new_letter
  end
   puts decrypted_password
end

decrypt($new_password)