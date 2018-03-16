# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash.empty?
  key_for_min = nil
  previous_value = nil
  temp = nil
  name_hash.collect do |key, value|
    if previous_value == nil || previous_value > value
      previous_value = value
      temp = key
    end
  end
  return temp
end
