# RubyHashes
# Part I
def array_2_hash emails, contacts
    h = {}
    i=0
    if (emails.size == 0)
        return contacts
    else
      contacts.each do |k, v|
          v = emails[i]
          h[k] = v
          i += 1
      end
    end
    return h
end

# Part II
def array2d_2_hash contact_info, contacts
    # YOUR CODE HERE
end

# Part III
def hash_2_array contacts
    # YOUR CODE HERE
end
