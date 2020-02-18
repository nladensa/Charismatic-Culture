# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  # YOUR CODE HERE
  start = s.chars[0]
  if s.empty?
    return false
  elsif start.match(/[aeiouAEIOU]/) || start.match(/[^a-zA-Z]/)
      return false
  else
    return true
  end
end

# Part III
def binary_multiple_of_4? s
  # YOUR CODE HERE
end
