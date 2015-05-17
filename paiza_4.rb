box_num, r = gets.chomp.split(' ')

boxs = []
box_num.to_i.times do
  boxs << gets.chomp.split(' ')
end

boxs.each.with_index(1) do |box, index|
  can_store = box.select { |b| b.to_i >= r.to_i * 2 }
  puts index if can_store.size == 3
end
