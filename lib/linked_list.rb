require_relative 'node'
require 'pry-byebug'

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
    found = false
    current_node = @head
    until current_node.nil?
      # return "#{current_node}: #{current_node.value}" if counter == index
      if counter == index
        found = true
        return current_node
      end

      current_node = current_node.next_node
      counter += 1
    end
    return 'There is no node with this index' if found == false
  end

  def pop
    if size <= 1
      @head, @tail = nil, nil
    else
      pre_tail = at(size - 2)
      pre_tail.next_node = nil
      @tail = nil
      @tail = pre_tail
    end
  end

  def contains?(value, head = @head)
    return false if head.nil?
    return true if value == head.value

    contains?(value, head.next_node)
  end
  
  def find(value)
    index = 0
    current_node = @head
    until current_node.nil?
      return "index of #{value} is #{index}" if value == current_node.value

      current_node = current_node.next_node
      index += 1
    end
    nil
  end

  def to_s
    size.times do |i|
      print "( #{at(i).value} ) -> "
    end
    print 'nil '
  end
  
  def insert_at(value, index)
    if index >= size
      puts 'Index is out of reach'
    elsif index == 0
      prepend(value)
    else
      current_node = at(index)
      tmp = current_node.clone
      current_node.value = value
      current_node.next_node = tmp
    end
  end

  def remove_at(index)
    if index >= size
      puts 'Index is out of reach'
    elsif index == 0
      @head = at(1)
    else
      current_node = at(index - 1)
      current_node.next_node = at(index + 1)
    end
  end
end
