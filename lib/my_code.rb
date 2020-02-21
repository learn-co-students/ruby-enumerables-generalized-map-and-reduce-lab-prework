
def map(array)
  new_array = []
  i = 0 
  
  array.length.times do 
    new_array << yield(array[i])
    i += 1 
  end 
  
  new_array
end 


def reduce(array, starting_value = nil) 
  if starting_value
    result = starting_value
    i = 0 
  else 
    result = array[0]
    i = 1 
  end 
  
  while i < array.length do 
    result = yield(result, array[i])
    i += 1 
  end 
  
  result 
end 