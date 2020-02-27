def bubble (arr)
    unsorted = true
    while unsorted == true
        unsorted = false
        for a in 0...arr.length - 1
            if arr[a] > arr[a + 1]
                temp = arr[a]
                arr[a] = arr[a+1]
                arr[a+1] = temp
                unsorted = true
            end 
        end
    end
return arr
end

arr = [23,54,87,32,12,1,23,2,77,43,21,1,2,3,4,5,6,7,8,9,50]
puts bubble(arr)