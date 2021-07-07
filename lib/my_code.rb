# def my_own_map(source_array)
#  return map(source_array) {|n| n * -1}
#  return source_array.map {|n| n * 1}
#  return source_array.map {|n| n * 2}  
#  return source_array.map {|n| n ** 2}
# end

def map(s)
  new = []
  i = 0
  while i < s.length
    new.push(yield(s[i]))
    i += 1
  end
  new
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