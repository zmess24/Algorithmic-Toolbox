#!/usr/bin/env ruby

def max_pairwise_product(a)
  a.sort!
  return a[a.length-1] * a[a.length-2]
end

if __FILE__ == $0
  data = STDIN.read.split().map(&:to_i)
  n = data[0]
  a = data[1..n]
  puts "#{max_pairwise_product(a)}"
end