# Your Code Here

def map(array)
  counter = 0
  new_array = []
  while counter < array.length 
    n = array[counter]
    new_array << yield(n)
    counter += 1
  end
  return new_array
end

def reduce(array, start = array[0])
  if start == array[0]
    counter = 1 
  else 
    counter = 0
  end
  while counter < array.length 
    n = array[counter]
    start = yield(start, n)
    counter += 1 
  end 
    p = start
  end







reduce([1, 2, true, "razmatazz"]){|value, n| 
puts "\nValue: #{value}"
puts "N: #{n}"
print "Block:"
p value && n}

reduce([ false, nil, nil, nil, true]){|value, n| 
puts "\nValue: #{value}"
puts "N: #{n}"
print "Block:"
p value || n}











