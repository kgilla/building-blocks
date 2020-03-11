def picker (arr, profit = 0)
    for a in 0...arr.length
        for b in a...arr.length
            temp = arr[b] - arr[a]
            if temp > profit
                profit = temp
                buy_sell = [a, b]
            end
        end
    end
    puts "Buy: #{buy_sell[0]} / Sell: #{buy_sell[1]} / Profit: #{profit}" 
end

#charge the array to change results
arr = [17,3,6,9,15,8,6,1,55]
picker(arr)
