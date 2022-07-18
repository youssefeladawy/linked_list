require_relative 'lib/linked_list'

list = LinkedList.new

list.append('X')
list.prepend('C')
list.prepend('B')
list.prepend('A')
list.append('Y')
list.append('Z')

p list

puts list.size
puts list.length

puts "Node head is #{list.head} & its value is #{list.head.value}"
puts "Node tail is #{list.tail} & its value is #{list.tail.value}"

puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3)
puts list.at(4)
puts list.at(5)
puts list.at(5).value
