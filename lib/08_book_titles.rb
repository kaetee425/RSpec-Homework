class Book
  # TODO: your code goes here!

  attr_accessor :title

  # def title
  #   @title.split.map {|word| word.capitalize}.join(" ")
  # end

  def title
    conjunctions = ["the", "a", "an", "and", "in", "of"]

    @title.split.each_with_index.map do |word, idx|
      if idx == 0
        word.capitalize
      elsif conjunctions.include?(word)
        word
      else
        word.capitalize
      end

    end.join(" ")
  end
  # #
  # # def title
  # #   @title
  # end
end
