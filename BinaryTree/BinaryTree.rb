class BinaryTree

  def self.print (root)
    p root
  end

  def self.inorder_traversal (root)

    if !root.nil?
      self.inorder_traversal(root.get_left)
      p root.get_data
      self.inorder_traversal(root.get_right)
    end

  end
  # same for preorder and postorder traversal

  def self.level_order_traversal (root)
    queue = []      # using queue for level order traversal
    if !root.nil?
      queue.push root
      while !queue.empty?
        node = queue.shift
        p node.get_data
        if !node.get_left.nil?
          queue.push(node.get_left)
        end
        if !node.get_right.nil?
          queue.push(node.get_right)
        end
      end
    end
  end

  def self.get_height (root)
    if root.nil?
      return 0
    else
      left_height = get_height(root.get_left)
      right_height = get_height(root.get_right)
      if left_height > right_height
        left_height + 1
      else
        right_height + 1
      end
    end
  end

end
