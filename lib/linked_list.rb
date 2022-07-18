require_relative 'node'

class LinkedList
  attr_reader :head, :tail

  @@size = 0

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    @@size += 1
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @@size += 1
  end

  def size
    counter = 0
    current_node = @head
    until current_node.nil?
      counter += 1
      current_node = current_node.next_node
    end
    counter
  end

  def length
    @@size
  end

  def at(index)
    counter = 0
    current_node = @head
    until current_node.nil?
      # return "#{current_node}: #{current_node.value}" if counter == index
      return current_node if counter == index

      current_node = current_node.next_node
      counter += 1
    end
  end
  
end


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
