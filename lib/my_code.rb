require 'pry'

def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array << yield(source_array[i])
    i += 1 
  end
  return new_array
end