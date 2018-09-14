#!/usr/bin/env ruby

def fib_iterative(index)
    if (index < 2) then return index end
    seq = [1,1]
    
    for i in 2..index do 
        seq.push(seq[i-2] + seq[i-1])
    end

    return seq[index-1]
end

if __FILE__ == $0
    n = gets.to_i
    puts "#{fib_iterative(n)}"
end