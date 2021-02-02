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








  # Your Code Here
