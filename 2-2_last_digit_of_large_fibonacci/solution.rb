#!/usr/bin/env ruby

# Efficient Solution
def fib_last_digit(i)
    if (i < 2) then return i end
    seq = [1,1]

    for i in 2..i do 
        last_digit = (seq[i-2] + seq[i-1]) % 10
        seq.push(last_digit)
    end

    return seq[i-1]
end

File.open('dataset.txt', 'r') do |f|
    f.each_line do |line|
        puts fib_last_digit(line.to_i)
    end
end