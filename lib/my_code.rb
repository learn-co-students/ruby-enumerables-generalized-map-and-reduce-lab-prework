# Your Code Here
require "pry"
def map(array)
  i = 0
  new_array = Array.new
  while i<array.length
    new_array.push(yield array[i])
    i+=1
  end
  new_array
end
#binding.pry

def reduce(array, starting_point = 0)
  i = 1
  starting_point == 0 ? a = array[0] : a = array[0] + starting_point
  while i < array.length
    a = yield [a, array[i]]
    i += 1
  end
  a
end
#binding.pry
