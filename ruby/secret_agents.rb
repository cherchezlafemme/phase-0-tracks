#Encryption program

def encrypt(password)
    word = password
    index = 0
        while index < word.length
        word[index] = word[index].next!
            if #find if any of the letters were z and turned into aa
                word[index] == "a"
                #take away the extra a
                word[index] = ""
            end
        index += 1
        end
    #puts word
    return word
end


#Decryption program

def decrypt(password)
   word = password
   index = 0
   alphabet = "abcdefghijklmnopqrstuvwxyz"
       while index < word.length
           word[index] = alphabet[alphabet.index(word[index])-1]
       index += 1
       end
   #puts word
   return word
end

#Release 4:
#decrypt(encrypt("swordfish"))
#The nested method works since it takes the return value of encrypt method and than uses the decrypt method on it. 

#Our driver code:
begin
    puts "Would you like to encrypt or decrypt your password?"
    answer = gets.chomp
    if answer == "encrypt"
        puts "Please enter password"
        password = gets.chomp
        puts encrypt(password)
    elsif answer == "decrypt"
        puts "Please enter password"
        password = gets.chomp
        puts decrypt(password)
    else
        puts "Please enter a valid response"
    end
end until answer.downcase == "encrypt" || answer.downcase == "decrypt"

puts "Congratulations! Mission complete!"
