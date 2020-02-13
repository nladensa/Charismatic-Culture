module FunWithStrings
  def palindrome?
    str = self.reverse
    self.downcase!
    str.downcase!
    str = str.gsub(/[^\w]/, "")
    self.gsub!(/[^\w]/, "")
    return self.eql?(str)
  end
  
  def count_words
    words = Hash.new
    if self.empty?
      return words
    end
    
    self.downcase!
    array = self.split(" ")
    array.each do |string|
      string.lstrip!
      string.gsub!(/[\W]/, "")
    end
    
    array.each do |string|
      if string.match(/\w+/)
        words[string] = array.count(string)
      end
    end
    
    return words
  end
  
  def anagram_groups
    if self.empty?
      return []
    end
    array = self.split(" ")
    array = array.group_by{|x| x.each_char.sort}.values
    return array
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
