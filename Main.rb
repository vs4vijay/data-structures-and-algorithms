require './Node.rb'
require './BinaryTree.rb'


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
p BinaryTree.inorder_traversal root
