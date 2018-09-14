#!/usr/bin/env ruby

def gcd(a, b)
    # Calculate Remainder (a`)
    # remainder = a % b
    # remainder === 0 ? b : gcd(b, remainder)
end

File.open('dataset.txt', 'r') do |f|
    f.each_line do |line|
        data = line.split(' ')
        data.map! { |el| el.to_i}
        puts gcd(data[0], data[1])
    end
end