# Solutions to some common data structure problems in ruby
# Auther: Vijay Soni (vs4vijay@gmail.com)

require './Node.rb'
require './BinaryTree.rb'

require './LNode.rb'
require './LinkedList.rb'

mode = 'linkedlist'  # can be 'binarytree', 'linkedlist'

if mode.empty? || mode == 'binarytree'
  p 'Binary Search Tree'

  #         1
  #     2       3
  #  4    5   6    7

  root = Node.new 1

  root.left = Node.new 2
  root.right = Node.new 3

  root.left.left = Node.new 4
  root.left.right = Node.new 5
  root.right.left = Node.new 6
  root.right.right = Node.new 7

  p BinaryTree.print root
  p 'Height: ' + (BinaryTree.get_height root).to_s
  # p BinaryTree.inorder_traversal root
  p BinaryTree.level_order_traversal root
end

if mode.empty? || mode == 'linkedlist'
  p "Mode: #{mode}"

  # 11 -> 22 -> 33 -> 44 -> 55

  list = LinkedList.new
  list.add(11)
  list.add(22)
  list.add(33)
  list.add(44)
  list.add(55)

  p list.to_s
  list.insert(25, 3)
  p list.to_s

  list.reverse
  p list.to_s

  while true
    p "Insert Node"
    print "Enter Node: "
    input = gets.chomp
    if input != 'stop'
      data = input.to_i
    else
      break
    end

    print "Enter Position: "
    input = gets.chomp
    if input != 'stop'
      position = input.to_i
    else
      break
    end

    list.insert(data, position)
    p list.to_s
  end

  while !true
    p "Remove Node"
    print "Enter Position: "
    input = gets.chomp
    if input != 'stop'
      position = input.to_i
    else
      break
    end

    list.remove(position)
    p list.to_s
  end


end
