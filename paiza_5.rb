unlike_num = gets.chomp

room_num = gets.chomp.to_i
rooms = []
room_num.times do
  room = gets.chomp.split('')
  include_num = room.find { |r| r == unlike_num }
  rooms << room.join if include_num.nil?
end

puts rooms.size == 0 ? 'none' : rooms
