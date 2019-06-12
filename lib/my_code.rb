def map(array)
  # create a new array to store values
  new_array = []
  # make sure block is provided when calling method
  if block_given?
    # loop over array
    # pass current array member into block
    # push result into the new array
    i = 0
    while i < array.length
      new_array << yield(array[i])
      i += 1
    end
    # return the new array
    new_array
  else
    # error message
    "Hey! You have to give a block."
  end
end

def reduce(array, start_val = nil)
  # make sure block is provided when calling method
  if block_given?
    # if start value given
    # initialize return value with it
    # start looping from array beginning
    if start_val
      rtn = start_val
      i = 0
      # if no start value given
      # initialize return value with first array member
      # start looping from next array member
    else
      rtn = array[0]
      i = 1
    end
    # loop over array from given starting point
    # pass current return value and current array member into block
    # overwrite return value with result and move to next array member
    while i < array.length
      rtn = yield(rtn, array[i])
      i += 1
    end
    # return value
    rtn
  else
    # error message
    "Hey! You have to give a block."
  end
end
