require 'byebug'
class RPNCalculator
  # TODO: your code goes here!
attr_accessor :stack

  def initialize
    @stack = []
  end
  
  def push(num)
    @stack << num
  end

  def plus
    # debugger
    error
    @stack.push(@stack.pop + @stack.pop)
    #every 2 numbers at a time
  end

  def value
    @stack.last
  end

  def minus
    error
      @stack.push(-@stack.pop + @stack.pop)
  end

  def times
    error
      @stack.push((@stack.pop * @stack.pop).to_f)
  end

  def divide
    error
    last_pop_bottom = @stack.pop.to_f
      @stack.push(@stack.pop.to_f/last_pop_bottom)
  end

  def error
    raise "calculator is empty" if @stack.length < 2
  end

  def tokens(string)
    numbers = ("0".."9")
    string.split.map do |value|
      numbers.include?(value) ? value.to_i : value.to_sym
    end
  end

  def evaluate(string)
    tokens(string).each do |el|
      #check all operators if so just recall previous methods
      #if its integar, then just push back into subclass
      if el == :+
        self.plus
      elsif el == :-
        self.minus
      elsif el == :*
        self.times
      elsif el == :/
        self.divide
      else
      p  self.push(el)
        #push el into the calculator
      end
    end
    self.value
    #evaluate value in calculator using value method
  end
end
