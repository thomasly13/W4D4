require 'byebug'
# def bad_two_sum?(arr, target_sum)

#     (0..arr.length - 2).each do |i|
#         (i + 1...arr.length).each do |j|
#             return true if arr[i] + arr[j] == target_sum
#         end
#     end
# false
# end

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort
    first = 0
    last = sorted.length - 1

    until first == last
        if sorted[first] + sorted[last] < target_sum
            first += 1
        elsif sorted[first] + sorted[last] > target_sum
            last -= 1 
        else
            return true
        end
    end

false
end

arr = [0, 7, 5, 1] # 0, 1, 5, 7
# p okay_two_sum?(arr, 6) # => should be true
# 0 + 7 , 0 + 5, 1 + 7
# p okay_two_sum?(arr, 10) # => should be false

def two_sum?(arr, target_sum)
    hash = {}

    arr.each do |num|
        # debugger
        difference = target_sum - num
        if difference == num
            next
        end
        
        if hash[num]
            return true
        else
            hash[difference] = true
        end
    end
    false
end

arr = [0, 7, 5, 1] # 0, 1, 5, 7
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false

