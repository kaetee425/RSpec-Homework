class Array
  # attr_accessor :sum

  def sum
    sum = 0
    self.each do |num|
      sum += num
    end
    sum
  end
  #class "end" -->


  def square
    square = []
    self.each do |num|
      square << num * num
    end
    square
  end

  def square!
    self.each_index do |idx|
      self[idx] *= self[idx]
    end
  end

end
