#!/usr/bin/env ruby

def fib_last_digit(i)
    if (i < 2) then return i end
    seq = [1,1]

    for i in 2..i do 
        # 1. Calculate the sum of the last two digits of each fibanicci number 
        last_digit = (seq[i-2] + seq[i-1]) % 10
        seq.push(last_digit)
    end

    return seq[i-1]
end

if __FILE__ == $0
    n = gets.to_i
    puts "#{fib_last_digit(n)}"
end