def sum_of_num(nums)
  even, odd = 0, 0

  nums = nums.split ''
  nums.delete 'X'

  nums.each.with_index(2) do |num, index|
    if (index % 2) == 0
      n = num.to_i * 2
      if n >= 10
        n1, n2 = n.to_s.split ''
        n = n1.to_i + n2.to_i
      end
      even += n
    else
      odd += num.to_i
    end
  end
  even + odd
end

def check_disit(sum)
  num = sum % 10
  num = 10 - num unless num == 0
  num
end

cards = []

input_lines = gets

input_lines.to_i.times do
  cards << gets.chomp.reverse
end

cards.each do |n|
  puts check_disit(sum_of_num n)
end
