def is_upcase?(character)
    character == character.upcase
end

def is_letter?(character)
     character.between?("A", "Z") || character.between?("a", "z")
end

def is_overflow?(character, shift_num)
    is_upcase?(character) ? character.ord + shift_num > "Z".ord : character.ord + shift_num > "z".ord
end

def shift_letter(character, shift_num)
    if is_overflow?(character, shift_num)
 
     is_upcase?(character) ? (((character.ord + shift_num) % "Z".ord) + "A".ord - 1).chr : (((character.ord + shift_num) % "z".ord) + "a".ord - 1).chr

    else
     (character.ord + shift_num).chr
    end
end

def caesar_cipher(text, shift_num)
    cipher_text = ""
    text.each_char do |character|
     if is_letter?(character)
    cipher_text += shift_letter(character, shift_num)
    else
    cipher_text += character
     end
    end
    cipher_text
end

  p caesar_cipher("What a string!", 5)
