a, b, r = gets.chomp.split(' ')

tree_num = gets.chomp.to_i
trees = []
tree_num.times do
  trees << gets.chomp.split(' ')
end

trees.each do |tree|
  tree_r = ((tree[0].to_i - a.to_i) ** 2) + ((tree[1].to_i - b.to_i) ** 2)
  puts tree_r >= r.to_i ** 2 ? 'silent' : 'noisy'
end
