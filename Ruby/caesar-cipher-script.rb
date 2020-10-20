def caesar_cipher(input_string, shift)
  # "abcdef" shifted by 2 would become "cdefgh"

  letters = ('a'..'z').to_a

  # Basic case - no upper case, no special characters
  # all the letters are an array
  # split the string and then map against the letters array
  # replace the character with the shifted characted
  input_string_array = input_string.split('')

  # Lower case 
  lower_shifted_array = input_string_array.map do |character| 
    character_index = letters.find_index(character)
    if character_index != nil
      letters[(character_index + shift) % letters.size]
    else 
      character
    end
  end

  # now do the upper case ones
  upper_letters = ('A'..'Z').to_a

  upper_shifted_array = lower_shifted_array.map do |character| 
    character_index = upper_letters.find_index(character)
    if character_index != nil
      upper_letters[(character_index + shift) % upper_letters.size]
    else 
      character
    end
  end

  puts upper_shifted_array.join('')
end

caesar_cipher('XYZabc!', 1)
caesar_cipher("What a string!", 5)