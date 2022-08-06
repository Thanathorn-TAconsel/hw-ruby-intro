# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  t = 0
  arr.each do |n|
    t = t + n
  end
  return t
end

def max_2_sum arr
  if arr.length() == 0
    return 0
  elsif arr.length() == 1
    return arr[0]
  else
    a = arr.sort()
    return a[-1] + a[-2]
  end
end

def sum_to_n? arr, n
  i = 1
  arr.each do |p|
    arr[i,arr.length()].each do |k|
      if p != k
        if (p + k) == n
          return true
        end
      end
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s.length == 0
    return false
  else
    if s =~ /^[AEIOUaeiou]/ || s !~ /^[a-zA-Z]/
      return false
    else 
      return true
    end
  end
end

def binary_multiple_of_4? s
  if (s =~ /00$/ || s =~ /0$/) && s !~ /[^01]/ 
    return true
  else 
    return false
  end

end


# Part 3

class BookInStock
  def initialize(isbn,price)
    raise ArgumentError.new("isbn Error") unless isbn.length() != 0
    raise ArgumentError.new("Price Error") unless price > 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    return "$%.2f" % @price
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
end
