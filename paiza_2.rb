parent_cards = gets.chomp.split(' ')

child_cards = []
gets.chomp.to_i.times do
  child_cards << gets.chomp.split(' ')
end

child_cards.each do |child|
  if parent_cards.first.to_i > child.first.to_i
    puts 'High'
  elsif parent_cards.first.to_i < child.first.to_i
    puts 'Low'
  else
    result = parent_cards[1].to_i < child[1].to_i ? 'High' : 'Low'
    puts result
  end
end
