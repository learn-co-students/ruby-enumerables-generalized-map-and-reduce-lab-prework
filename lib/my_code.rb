# Your Code Here
def map(array)
  index  = 0
  mapped = []
  
  while index < array.length do
    mapped << yield(array[index])
    index   = index + 1
  end
  
  mapped
end

def reduce(array, reduction = 0)
  index  = 0
  
  while index < array.length do
    if !reduction
      break
    end

    reduction = yield(array[index], reduction)
    index     = index + 1
  end
  
  reduction
end