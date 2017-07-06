def add (x, y)
  x + y
end

def subtract(x, y)
  if x > y
    x - y
  end
end

def sum(arr)
  if arr.empty?
    0
  else
  arr.inject(:+)
  end
end

def multiply(arr)
  arr.inject(:*)
end

def power(x, y)
  x ** y
end

def factorial(x)
  arr = []
  if x == 0
    return 0
  end

  (1..x).each do |num|
      arr << num
  end
  p arr.inject(:*)
end
