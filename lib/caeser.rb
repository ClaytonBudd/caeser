

def convert_ord(letter, shift)
  if letter.ord >= 65 && letter.ord <= 90
    roll_over = letter.ord + shift
    return (letter.ord + shift).chr unless roll_over > 90

    roll_over -= 90
    (64 + roll_over).chr

  elsif letter.ord >= 97 && letter.ord <= 122
    roll_over = letter.ord + shift
    return (letter.ord + shift).chr unless roll_over > 122

    roll_over -= 122
    (96 + roll_over).chr

  else
    letter
  end
end

def caeser_cipher(string, shift)
  split = string.split('')
  result = []
  split.each do |letter|
    result.append(convert_ord(letter, shift))
  end
  p result.join('')
end

caeser_cipher('What a string!', 5)
