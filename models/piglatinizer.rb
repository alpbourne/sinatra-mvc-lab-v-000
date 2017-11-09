class PigLatinizer

  def piglatinize(word)
    vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

    if vowels.include?(word[0])
      word + "ay"
    else
      first_letter = ""
      while !vowels.include?(word[0])
        first_letter << word[0]
      end
      word + rest_of_word.join + "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
