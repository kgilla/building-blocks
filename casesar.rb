def caesar(string, key)
    converted = ""
    string.each_byte do |c|
        if c >= 97 && c <= 122
            c = c - 97 + key
            if c > 0
                c = (c % 26) + 97
            else
                while c < 0
                    c += 26
                end
                c += 97
            end
            converted << c.chr
        elsif c >= 65 && c <= 90
            c = c - 65 + key
            if c > 0
                c = (c % 26) + 65
            else
                while c < 0
                    c += 26
                end
                c += 65
            end
            converted << c.chr
        end
    end 
    return converted
end

#asks user for a string and a key
puts "Okay give me a string to encode!"
string = gets.chomp
puts "Now give me an integer!"
key = gets.chomp
key = key.to_i
puts caesar(string, key)
    


