def bubble_sort_by (arr)
    unsorted = true
    while unsorted == true
        unsorted = false
        for a in 0...arr.length - 1
            result = yield(arr[a], arr[a + 1])
            if result > 0
                temp = arr[a]
                arr[a] = arr[a+1]
                arr[a+1] = temp
                unsorted = true
            end
        end
    end
print arr     
end

# change the block params and the array!
arr = ["hi", "hey", "hello"]
bubble_sort_by(arr) do |first, second|
    (first.length - second.length)
end
