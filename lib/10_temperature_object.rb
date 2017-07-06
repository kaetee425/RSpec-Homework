require 'byebug'

class Temperature
  # @f = fahrenheit
  # @c = celsius
  attr_reader :options

  def initialize (options = {})
    @options = options
  end

  def in_fahrenheit
    options[:f] ? options[:f] : ((options[:c] * 9.0)/5.0) + 32.0
  end

  def in_celsius
    options[:c] ? options[:c] : ((options[:f] - 32.0) * 5.0)/9.0
  end

  def self.from_celsius(c_degree)
    self.new(:c => c_degree)
  end

  def self.from_fahrenheit(f_degree)
    self.new(:f => f_degree)
  end
end

class Celsius < Temperature
  attr_reader :options

  def initialize(c)
    @options = {c: c}
  end
end

class Fahrenheit < Temperature
  attr_reader :options

  def initialize(f)
    @options = {f: f}
  end
end

# f -> c == Deduct 32, then multiply by 5, then divide by 9
# c -> f == Multiply by 9, then divide by 5, then add 32
# ((@options[:c] - 32) * 5)/9
