require "byebug"

# def windowed_max_range(array, windowed_max_range)
#     current_max_range = 0
#     (0..(array.length - windowed_max_range)).each do |i|
#         min = array[i...(i + windowed_max_range)].min
#         max = array[i...(i + windowed_max_range)].max
#         # debugger 
#         if max - min > current_max_range
#             current_max_range = max - min
#         end
#     end
# current_max_range

# end


# p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8 == 4
# p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5 == 5
# p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8 == 6
# p windowed_max_range([1, 3, 2, 5, 4, 8], 5)  # 3, 2, 5, 4, 8 == 6

class MyQueue
    def initialize 
        @store = []
    end

    def peek
        @store[0]
    end

    def size
        @store.size 
    end

    def empty?
        @store.empty?
    end

    def enqueue(item)
        @store << item
    end

    def dequeue
        @store.shift
    end
    
end

def windowed_max_range(array, window)
    q = MyQueue.new
    q.enqueue(array.shift)
    current_max_range = 0

    until q.empty?

        if q.size < window 
            q.enqueue(array.shift)
        elsif q.size == window
            if q.last - q.first > current_max_range
                current_max_range = q.last - q.first
                q.enqueue(array.shift)
                q.dequeue
            end
        end


    end
    current_max_range
end


p windowed_max_range([1, 0, 2, 5, 4, 8], 2) # 4, 8 == 4
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) # 0, 2, 5 == 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) # 2, 5, 4, 8 == 6
p windowed_max_range([1, 3, 2, 5, 4, 8], 5)  # 3, 2, 5, 4, 8 == 6

