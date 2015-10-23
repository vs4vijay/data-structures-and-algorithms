# Solutions to some common data structure problems in ruby
# Auther: Vijay Soni (vs4vijay@gmail.com)

require './BinaryTree/Node.rb'
require './BinaryTree/BinaryTree.rb'

require './LinkedList/LNode.rb'
require './LinkedList/LinkedList.rb'

mode = 'linkedlist'  # can be 'binarytree', 'linkedlist'

if mode.empty? || mode == 'binarytree'
  p 'Binary Search Tree'

  #         1
  #     2       3
  #  4    5   6    7

  root = Node.new 1

  root.set_left Node.new 2
  root.set_right Node.new 3

  root.get_left.set_left Node.new 4
  root.get_left.set_right Node.new 5
  root.get_right.set_left Node.new 6
  root.get_right.set_right Node.new 7

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



end
