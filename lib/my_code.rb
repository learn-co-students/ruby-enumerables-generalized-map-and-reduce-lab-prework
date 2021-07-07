# Your Code Here
 def map(dune, &block)
  dune.map(&block)
 end
 
def reduce(elements, starting_point = nil, &block)
  if starting_point.nil?
    elements.reduce(&block)
  else
    elements.reduce(starting_point, &block)
  end
end
 
 