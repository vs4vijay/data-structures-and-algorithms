require './LinkedList/LNode.rb'

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

  def to_s
    node = @head
    while !node.nil?
      print "#{node.data} -> "
      node = node.next
    end
  end

end
