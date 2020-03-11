module Enumerable
    
    def my_each
        i = 0
        while i < self.size
            yield(self[i])
            i+=1
        end
        self
    end

    def my_each_with_index
        i = 0
        while i < self.size
            yield(self[i], i)
            i+=1
        end
        self
    end

    def my_select
        thing = []
        self.my_each do |a|
           if yield(a) == true
            thing << a
           end
        end
        return thing
    end

    def my_all?
        self.my_each do |a|
            if yield(a) == false 
                return false
            end
        end
        return true
    end

    def my_any?
        self.my_each do |a|
            if yield(a) == true 
                return true
            end
        end
        return false
    end

    def my_none?
        self.my_each do |a|
            if yield(a) == true 
                return false
            end
        end
        return true
    end

    def my_count
        counter = 0
        self.my_each do |a|
            if yield(a) == true
                counter+=1
            end
        end
        return counter
    end

    def my_map (block = nil)
        thing = []
        self.my_each do |a|
            if block == nil
                temp = yield(a)
                thing << temp
            else
                thing << block.call(a)
            end    
        end
        return thing
    end

    def my_inject (base = 0)
        self.my_each do |a|
            base = yield(base, a)
        end
        return base
    end

end


array = [5,4,3,5,8,4,3,5,6,1,3,3,5,65,7,8]

by_10 = Proc.new { |a| a + 10 }

puts array.my_map(by_10) { |a| a + 100 }

