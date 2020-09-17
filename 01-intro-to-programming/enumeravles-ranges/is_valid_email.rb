# Write a method is_valid_email that takes in a string and returns a boolean
# indicating whether or not it is a valid email address.

# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

def is_valid_email(str)
  parts = str.split("@")
  if parts.length != 2
    return false
  end

  alphabetic = "abcdefghijklmnopqrstuvwxyz"
  parts[0].each_char do |char|
    if !alphabetic.include?(char)
      return false
    end
  end
  if parts[1].split('.').length != 2
    return false
  end
  true
end

puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false