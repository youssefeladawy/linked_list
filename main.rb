require_relative 'lib/linked_list'

list = LinkedList.new

list.append('X')
list.prepend('C')
list.prepend('B')
list.prepend('A')
list.append('Y')
list.append('Z')

p list
p '----------------------------'
puts list.size
puts list.length
p '----------------------------'
puts "Node head is #{list.head} & its value is #{list.head.value}"
puts "Node tail is #{list.tail} & its value is #{list.tail.value}"
p '----------------------------'
puts list.at(0)
puts list.at(1)
puts list.at(2)
puts list.at(3)
puts list.at(4)
puts list.at(5)
puts list.at(5).value
puts list.at(8)
p '----------------------------'
puts list.contains?('B')
puts list.contains?('K')
p '----------------------------'
puts list.find('C')
p list.find('K')
p '----------------------------'
puts list
p '----------------------------'
list.pop
puts list
p '----------------------------'
# list.insert_at(nil, 10)
list.insert_at('0', 0)
list.insert_at('D', 4)
list.insert_at('K', 10)
puts list
p '----------------------------'
list.remove_at(0)
list.remove_at(4)
puts list
