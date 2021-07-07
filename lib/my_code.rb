# Your Code Here
def map(arr)
  new = []
  i = 0
  while i < arr.length do
    new << yield(arr[i])
    i += 1
  end
  new
end

#i straight up do not understand reduce and had to look at the solution, need to review the idea of the accumulator
def reduce(arr, start=nil)
  if start
    acc = start 
    i = 0 
  else
    acc = arr[0]
    i = 1
  end
  while i < arr.length do
    acc = yield(acc, arr[i])
    i +=1 
  end
  acc
end