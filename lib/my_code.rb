# Your Code Here
def map(arr)
  i = 0
  new = []
  while i < arr.length 
    new.push(yield(arr[i]))
    i += 1
  end
   return new
end

def reduce(arr, start = 0)
    i = 0
    if arr[i].class == start.class
      result = start
    else
      result = arr [i]
      i = 1
    end
  while i < arr.length 
    result =  yield(result, arr[i])
    i += 1
  end
  return result
end