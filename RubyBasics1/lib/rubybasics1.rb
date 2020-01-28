# Lab 1
# Part I
def sum arr
  s = 0
  arr.each do |x|
    s += x
  end
  return s
end

# Part II
def max_2_sum arr
  if arr.size == 0
    return 0
  end
  if arr.size == 1
    return arr[0]
  end
   a = arr.sort
   b = a[a.length-1] + a[a.length-2]
  return b
end

# Part III
def sum_to_n? arr, n
  # YOUR CODE HERE
end