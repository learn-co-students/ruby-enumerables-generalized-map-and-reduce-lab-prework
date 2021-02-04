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

def reduce(source_array, starting_point = nil)
  if starting_point  
  new_value = starting_point
  index = 0
else 
  new_value = source_array[0]
  index = 1 
end
   while index < source_array.length 
    new_value = yield(new_value, source_array[index])
    index += 1 
  end
  new_value
end
  #while index < source_array.length
  #new_value.push(yield(source_array[index, starting_point]))
                # ^General yield here, as this lab needs a generalized method to solve all 6 questions at once.  
  #index += 1 
#end
  #puts new_value
#end


  
  
  
  
  
  #index = 0 
  #while index < source_array.length
   # new_value = (yield(source_array[starting_point]))
    #index += 1 
     # end
      #new_value{
      







  # Your Code Here
