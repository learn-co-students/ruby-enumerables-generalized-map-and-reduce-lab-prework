def map(s)
  new = []
  i = 0
  while i < s.length do
    new.push(yield(s[i])) 
    i += 1
  end
  return new
end

def reduce (array, *starting_number)

if starting_number[0]
  count = 0
  total = starting_number[0]
else
  total = array[0]
  count = 1
end
  
  while count < array.length do
    total = yield(total,array[count])
    count += 1
  end
  return total
end



source_array = [1,2,3]
starting_point = 100
reduce(source_array, starting_point){|memo, n| memo + n}




 source_array = [ false, nil, nil, nil, true]


reduce(source_array){|memo, n| memo || n}

