def ceasarCipher(word, number)
    upper = 'ABCDEFGHIJKLMNOPQRXTUVWXYZ'
    lower = 'abcdefghijklmnopqrxtuvwxyz'
    upper = upper.split("")
    lower = lower.split("")
    word = word.split("")
    crypted = []
  
    word.each do |letter|
      if lower.include? letter
        new_id = lower.find_index(letter) + number
        if new_id >= 26 
          new_id = new_id % 26
        end
        crypted.push(lower[new_id])
      elsif upper.include? letter
        new_id = upper.find_index(letter) + number
        if new_id >= 26 
          new_id = new_id % 26
        end
        crypted.push(upper[new_id])     
      else
        crypted.push(letter)
      end
    end
    return crypted.join()
  end
  
  puts "Its Ceasar Cipher Time!"
  puts "Enter a word or phrase"
  word = gets.chomp.to_s
  puts "Enter a number"
  number = gets.chomp.to_i
  
  ceasarCipher(word, number)