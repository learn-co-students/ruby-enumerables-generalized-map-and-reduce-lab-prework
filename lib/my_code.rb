def map(array)
  new_array = []
  array.each do |el|
    new_array << yield(el)
  end
  new_array
end

def reduce(array, starting_value=nil)
  if starting_value
    reduction = starting_value
    i = 0
  else
    reduction = array[0]
    i = 1
  end
  while i < array.length
    reduction = yield(reduction, array[i])
    i += 1
  end
  reduction
end
