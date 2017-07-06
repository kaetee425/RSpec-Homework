class Fixnum
  Singles = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine"
  }
  Teens = {
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen"
  }
  Tens = {
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }
  Hunreds = {
    100 => "one hundred",
    200 => "two hundred",
    300 => "three hundred",
    400 => "four hundred",
    500 => "five hundred",
    600 => "six hundred",
    700 => "seven hundred",
    800 => "eight hundred",
    900 => "nine hundred"
  }
  Numerals = {
    100 => "hundred",
    1000 => "thousand",
    1_000_000 => "million",
    1_000_000_000 => "billion",
    1_000_000_000_000 => "trillion"
  }

  def in_words
    if self == 0
      "zero"
    elsif self < 10
      Singles[self]
    elsif self < 20
      Teens[self]
    elsif self < 100
      self.less_than_hundred
    else
      large = Numerals.keys.select { |num| num <= self }.max
      # selects the Numeral keys that go into self
      large_word = (self/large).in_words + " " + Numerals[large]
      # (self % large).in_words - rounds to the closest integar
        (self % large) == 0 ? large_word : large_word + " " + (self % large).in_words
    end

  end
  def less_than_hundred
    # 77
    dos = self % 10 # 7
    uno = self - dos # 70

    dos == 0 ? Tens[self] : Tens[uno] + " " + Singles[dos]
  end

# class end -->
end
