
# def my_min(list)

#     list.each do |items_1|
#         switch = true
#         list.each do |items_2|
#             if items_2 < items_1
#                 switch = false
#             end
#         end
#         return items_1 if switch == true
#     end

# end

# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])
# n(1 + n(1 + 1) + 2) > n(3 +n(2)) > 3n + 2n^2



# def my_min(list)

#     min = list.pop

#     list.each do |items|
#         if items < min
#             min = items
#         end
#     end
    
# return min
# end

# p my_min([ 0, 3, 5, 4, -5, 10, 1, 90 ])
# 2 + n(2) + 1 > n

#phase I
def largest_contiguous_subsum(list)
    subs = []
    list.each_with_index do |number, index|
        (index...list.length).each do |range_index|
            subs << list[index..range_index]
        end
    end
    subs.map! {|arrays| arrays.sum}
    subs.max
end

#phase II
# def largest_contiguous_subsum(list)
#     largest_sum = 0
#     list.each_with_index do |number, index|
#         (index...list.length).each do |range_index|
#             sub_num = list[index..range_index]
                   
#             if largest_sum == 0
#                 largest_sum = sub_num.sum
#             elsif largest_sum < sub_num.sum
#                 largest_sum = sub_num.sum
#             end
#         end
#     end
#     largest_sum
# end

list = [5, 3, -7]
p largest_contiguous_subsum(list)
list = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list)
list = [-5, -1, -3]
p largest_contiguous_subsum(list)
