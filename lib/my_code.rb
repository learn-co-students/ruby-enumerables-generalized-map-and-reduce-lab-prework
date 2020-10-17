require 'pry'

def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array << yield(source_array[i])
    i += 1 
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
  total = starting_point
  i = 0 
  if !source_array[i].is_a? Integer
    total = source_array[i]
  end
  while i < source_array.length
    total = yield(total, source_array[i])
    i += 1
  end
  return total
end