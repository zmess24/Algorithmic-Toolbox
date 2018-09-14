#!/usr/bin/env ruby

def gcd(a, b) 
    # Calculate Remainder (a`)
    remainder = a % b
    remainder === 0 ? b : gcd(b, remainder)
end

if __FILE__ == $0
    n = gets.split().map(&:to_i)
    puts gcd(n[0], n[1]) 
end