require 'byebug'

def first_anagram?(word1,word2)
    permutations = word1.split("").permutation(word1.length).to_a.map(&:join)
    permutations.each do |word|
        if word2 == word
            return true
        end
    end

    false
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def second_anagram?(word1,word2)
    split = word2.split("")
    word1.each_char.with_index do |char, index|
        if split.index(char) == nil
            return false
        else
            split.delete_at(split.index(char))
        end
    end
    if split.length == 0
        return true
    end
    false
end



def third_anagram?(word1, word2)
    word1.split('').sort == word2.split('').sort
end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(word1, word2)
    counter1 = Hash.new(0)
    counter2 = Hash.new(0)

    word1.each_char { |char1| counter1[char1] += 1}
    word2.each_char { |char2| counter2[char2] += 1}

    counter1 == counter2

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true