# Your Code Here
def map(array)
  new_array = []
  i = 0

   while i < array.length do
    new_array[i] = yield(array[i])
    i += 1
  end

   return new_array
end

def reduce(array, starting_point = 0)
  result = starting_point
  i = 0

   while i < array.length do
    result = yield(result, array[i])
    i += 1
  end

   return result == 0 ? true : result

 end