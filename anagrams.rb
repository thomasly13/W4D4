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

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true