# Your Code Here

def map(source_array)
  new = []
  i = 0
  while i < source_array.length do 
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array, starting_value = nil)
  if starting_value
    value = starting_value
    i = 0
  else 
    value = source_array[0]
    i = 1
  end
  while i < source_array.length
    value = yield(value, source_array[i])
    i += 1
  end
  value
end


