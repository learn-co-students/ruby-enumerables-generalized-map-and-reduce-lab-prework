def map(array)
  i = 0
  new_array = []
  while i < array.length
    new_array.push(yield array[i])
    i = i + 1
  end
  new_array
end

def reduce(source_array, starting_point=nil)
  if starting_point
    sum = starting_point
    i=0
  else
    sum = source_array[0]
    i = 1
  end
    while i < source_array.length
      sum = yield(sum,source_array[i])
      i += 1
    end
  sum
end
# def map(array)
#   yeild(array)
# end

# map(element1) {}
# def map(element1)
#   element1.each
#   yield element1
# end
