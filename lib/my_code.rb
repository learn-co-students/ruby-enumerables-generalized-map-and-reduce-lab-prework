def map(source_array)
  counter = 0 
  new_array = []
  
  while counter < source_array.length do 
  new_array << yield(source_array[counter])
  counter += 1 
  end
  new_array
end 

def reduce(source_array, starting_point = 0)
  counter = 0
  total = starting_point
  while counter < source_array.length do
    total = yield(total, source_array[counter])
    counter += 1
  end

  total == 0 ? true : total
end

=begin
def reduce(source_array, starting_point = nil)
  if starting_point
    sum = starting_point
    counter = 0
  else 
    sum = source_array[0]
    counter = 1
  end
  
  while counter < source_array.length do 
    sum = yield(source_array[counter], sum)
    counter += 1
  end
  sum 
end
=end 
    #next memo if memo = !true ? false : true
    #next memo if memo = true ? true : false
    #break false if n == !true
    #memo + n 
