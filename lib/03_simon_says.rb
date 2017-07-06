def echo (str)
  str
end

def shout(str)
  str.upcase
end

def repeat (str, n=2)
   ((str + " ") * n).strip
end

def start_of_word(str, n)
  str.chars.take(n).join
end

def first_word(str)
  str.split.first
end

def titleize(str)
  ans = []
  no_words = ["a", "of", "and", "the", "over"]

  str.split.each do |word|
    if not no_words.include?(word)
      ans << word.capitalize
    else
      ans << word
    end
  end
 title = ans.join(" ")
 title = title[0].upcase + title[1..-1]
 end 
