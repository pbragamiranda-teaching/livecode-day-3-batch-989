def acronymize(sentence)
  # return the acronym but I cannot use the #each
  acronym = sentence.split.map do |word|
    word[0]
  end
  acronym.join.upcase
end
