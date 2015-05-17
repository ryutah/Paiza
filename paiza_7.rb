m, p, q = gets.chomp.split ' '

m = m.to_f - (m.to_f * p.to_f / 100)
m = m - (m * q.to_f / 100)

puts m
