#!/usr/bin/env ruby

def max_pairwise_product(a)
  a.sort!
  return a[a.length-1] * a[a.length-2]
end

File.open('dataset.txt', 'r') do |f|
    # data = f.split('\n').map(&:to_i)
    f.each_line do |line|
        data = line.split(' ')
        data.map! { |el| el.to_i}
        puts max_pairwise_product(data)
    end
end