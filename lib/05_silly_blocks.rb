def reverser
  # yield is default string
  ans = []
  words = yield.split

  words.each do |word|
    ans << word.reverse
  end
  ans.join(" ")
end

def adder(n = 1)
  # add default making function take one or two argument
  yield + n
end

def repeater(x = 0)
  if x == 0
    yield
  else
    x.times do |num|
      yield
    end
  end
end
