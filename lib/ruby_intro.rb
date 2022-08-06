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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
