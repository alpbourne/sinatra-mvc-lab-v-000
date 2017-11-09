class PigLatinizer

  def piglatinize(word)
    vowels = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]

    if vowels.include?(word[0])
      word + "ay"
    else
      first_letter = ""
      until vowels.include?(word[0])
        first_letter << word[0]
        word[0] = ""
      end
      word.split("")
      rearranged_word = word + first_letter.join("")
      rearranged_word = "ay"
    end
  end

  def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
