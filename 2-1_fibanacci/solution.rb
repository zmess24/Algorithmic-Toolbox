#!/usr/bin/env ruby

# Efficient Solution
def fib_iterative(index)
    if (index < 2) then return index end
    seq = [1,1]

    for i in 2..index do 
        seq.push(seq[i-2] + seq[i-1])
    end

    return seq[index-1]
end

File.open('dataset.txt', 'r') do |f|
    f.each_line do |line|
        puts fib_iterative(line.to_i)
    end
end