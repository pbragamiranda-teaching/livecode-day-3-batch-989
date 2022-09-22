def encrypt(message)
  # have the whole alphabet
  alphabet = ("A".."Z").to_a
  # make message into an array
  letters = message.chars
  # go through each letter, find it's position in the list
  result = letters.map do |letter|
    alphabet_position = alphabet.index(letter)
    # conditon ? code_if_true : code_if_false
    alphabet_position.nil? ? letter : alphabet[alphabet_position - 3]

    # if alphabet_position.nil?
    #   new_letter = letter
    # else
    #   # shift back 3 positions
    #   new_letter = alphabet[alphabet_position - 3]
    # end
  end

  return result.join
end



# CRAZY REFACTO
# def encrypt(message)
#   alphabet = ("A".."Z").to_a
#   message.chars.map do |letter|
#     alphabet_position = alphabet.index(letter)
#     alphabet_position.nil? ? letter : alphabet[alphabet_position - 3]
#   end.join
# end
p encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
