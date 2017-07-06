def translate (str)
  ans = []
  str.split.each do |word|
      ans << pig_word(word)
  end
  ans.join(" ")
end

def pig_word(word)
  vowels = "aeiou"
  word.each_char.with_index do |ch, idx|
    until vowels.include?(word[0])
      word = word[1..-1] + word[0]

        if word[idx] == "u" && word[-1] == "q"
          word = word[idx + 1 ...-1] + word[-1] + word[0]
        end
    end
  end
  word + "ay"
end
