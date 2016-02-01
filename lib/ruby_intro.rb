# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  if arr.size != 0
    arr.each do |num|
      total += num
    end  
  end
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  total = 0
  if arr.size == 1
    total = arr[0]
  elsif arr.size > 1
    maxNum = arr.delete_at(arr.index(arr.max))
    maxNum2 = arr.max
    total = maxNum + maxNum2
  end
  total
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size < 2
    return false
  end
  arr.each do |num|
    if n == num*2
      if arr.count(num) > 1 then return true end
    elsif arr.include?(n-num)
      return true
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /\A0+\z/
    return true
  elsif s =~ /\A(0|1)+\z/ and s[-2..-1] == "00"
    return true
  end
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end
   
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  def isbn=(str)
    # if str =~ /\A(\d|-)+\z/
    #   @isbn=str
    if str == ''
      raise ArgumentError.new();
    else
      @isbn = str
    end
  end
  
  def price=(flt)
    if flt.is_a? Numeric and flt > 0
      @price = Float(flt)
    else
      raise ArgumentError.new();
    end
  end
  
  def price_as_string
    flt = @price.round(2)
    price = flt.to_s
    if price =~ /\A(\d)+\.\d\z/
      price += '0'
    end
    '$' + price
  end
  
end