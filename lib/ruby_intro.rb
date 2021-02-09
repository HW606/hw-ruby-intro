# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return arr.sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr.first if arr.length == 1
  return sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty? or arr.length==1
  arr.combination(2).to_a.each do |item|
    return true if sum(item)==n
  end
    return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
 def initialize(isbn,price)
    raise ArgumentError if isbn.empty? or price <=0
    @isbn=isbn
    @price=price
 end
 
 def price_as_string
   format("$%.2f",@price)
 end
  
  attr_accessor:isbn
  attr_accessor:price

end
