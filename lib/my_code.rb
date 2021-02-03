def map(source_array)
  new_array = []
  index = 0 
  while index < source_array.length 
  new_array.push(yield(source_array[index]))
  index += 1 
end
 new_array
end
 #source_array.map{|n| n * -1}

def reduce(source_array, starting_point)
  new_value = []
  index = 0 
  while index < source_array.length
  new_value.sum(yield(source_array[starting_point]))
  index += 1 
end
new_value
end






  # Your Code Here
