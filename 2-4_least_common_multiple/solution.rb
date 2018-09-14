#!/usr/bin/env ruby

def lcm(a, b, product=nil)
    product = product === nil ? a * b : product
    remainder = a % b
    remainder === 0 ? (product/b) : lcm(b, remainder, product)
end

File.open('dataset.txt', 'r') do |f|
    f.each_line do |line|
        data = line.split(' ')
        data.map! { |el| el.to_i}
        puts lcm(data[0], data[1])
    end
end