def map(array)
  new = []
  i = 0
  while i < array.length do
    new[i] = yield(array[i])
    i += 1
end
  return new
end

 def reduce(array, starting_point = 0)
  total = starting_point
  i = 0
    while i < array.length do
    total = yield(total, array[i])
    i += 1
  end
    return total == 0 ? true : total
  end 