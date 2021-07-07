def map (source_array)
  new_array = []
  i = 0
  while i < source_array.length
    new_array.push(
      yield (source_array[i])
      )
    i += 1
  end
  new_array
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end
  
  
  
