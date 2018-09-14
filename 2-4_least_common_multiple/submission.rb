#!/usr/bin/env ruby

def lcm(a, b, product=nil)
    product = product === nil ? a * b : product
    remainder = a % b
    remainder === 0 ? (product/b) : lcm(b, remainder, product)
end

if __FILE__ == $0
    n = gets.split().map(&:to_i)
    puts lcm(n[0], n[1]) 
end