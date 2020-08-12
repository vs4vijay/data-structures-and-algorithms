require './LNode.rb'

class LinkedList

  attr_accessor :head

  def initialize
    #@head = LNode.new 0
  end

  def add(data)
    if @head.nil?
      @head = LNode.new data
    else
      node = @head
      while !node.next.nil?
        node = node.next
      end
      node.next = LNode.new data
    end
  end

  def insert(data, position)
    count = 0;
    if @head.nil?
      @head = LNode.new data
    elsif position == 1
      new_node = LNode.new data
      new_node.next = @head
      @head = new_node
    else
      node = @head
      count = 1;    # add 1 for head
      while count < position - 1
        count += 1
        node = node.next
      end
      p "Inserting after: #{node.data}"
      new_node = LNode.new data
      new_node.next = node.next
      node.next = new_node
    end
  end

  def remove(position)
    count = 0
    if @head.nil?
      return
    elsif position == 1
      @head = @head.next
    else
      node = @head
      count = 1;    # add 1 for head
      while count < position - 1
        count += 1
        node = node.next
      end
      prev_node = node
      node = node.next
      p "Removing node: #{node.data}"
      next_node = node.next
      prev_node.next = next_node
    end
  end

  def reverse
    temp = nil
    next_node = nil
    while !@head.nil?
      next_node = @head.next
      @head.next = temp
      temp = @head
      @head = next_node
    end
    @head = temp
  end

  def to_s
    node = @head
    while !node.nil?
      print "#{node.data} -> "
      node = node.next
    end
  end

end
