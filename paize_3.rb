input_lines = gets.chomp.to_i

nums = []
input_lines.times do
  nums << gets.chomp.to_i
end

nums.each do |num|
  n = []
  for i in 1..num - 1
    n << i if (num % i) == 0
  end
  sum = n.inject(:+)
  if num == sum
    puts 'perfect'
  elsif (num - sum).abs == 1
    puts 'nearly'
  else
    puts 'neither'
  end
end
