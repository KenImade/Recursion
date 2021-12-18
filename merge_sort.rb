def merge_sort(array)
    if array.length < 2
        array
    else
        div = array.length / 2
        left_array = merge_sort(array[0...div])
        right_array = merge_sort(array[div...array.length])
        merge(left_array, right_array)
    end
end

def merge(left, right, sorted = [])

    (left.size + right.size).times do
        if left.empty?
            sorted << right.shift
        elsif right.empty?
            sorted << left.shift
        else
            comparison = left <=> right
            if comparison == -1
                sorted << left.shift
            elsif comparison == 1
                sorted << right.shift
            else
                sorted << left.shift
            end
        end
    end
    sorted
end

arr = []

50.times do
    arr << rand(200) + 1
end
p arr
merge_sort(arr)