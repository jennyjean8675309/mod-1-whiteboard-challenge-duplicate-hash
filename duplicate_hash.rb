require "pry"

input = [1,2,2,3,3,4,5,5,5]
# output: {1:1, 2:2, 3:2, 4:1, 5:3}

def duplicate_hash(array)
    hash = {}

    array.each do |int|
        if hash[int]
            hash[int] += 1
        else
            hash[int] = 1
        end
    end

    hash
end

def duplicate_hash_alt(array)
    array.reduce({}) do |acc, num|
       acc[num] ? acc.update({ num => acc[num] + 1 }) : acc.update({ num => 1 })
    end
end

puts duplicate_hash(input)
puts duplicate_hash_alt(input)