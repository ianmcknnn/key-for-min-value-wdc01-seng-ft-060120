require 'pry'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  first = true
  if name_hash.length == 0
    return nil
  else
    current_min = 0
    current_key = "placeholder"
    name_hash.each_pair do |key, value|
      if first
        current_min = value
        current_key = key
        first = false
      elsif value < current_min
        current_min = value
        current_key = key
      end
    end
    current_key
  end
end
    #key_for_min_value({:adam => 4, :blake => 8})
