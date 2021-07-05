# Your Code Here

def map(array)
    count = 0
    new_array = []
    while count < array.length do
        new_array.push(yield(array[count]))
    	count += 1
    end
    return new_array    
end

def reduce(array, starting_point = nil)
    count = 0
    if starting_point
        count = 0
        total = starting_point
    else
        count = 1
        total = array[0]
    end
    while count < array.length do
        total = yield(total, array[count])
    	count += 1
    end
    return total
end
