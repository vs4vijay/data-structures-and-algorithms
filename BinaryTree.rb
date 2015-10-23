class BinaryTree

  def self.print (root)
    p root
  end

  def self.inorder_traversal (root)

    if root.nil?
      return
    else
      if !root.get_left.nil?
        self.inorder_traversal(root.get_left)
      end
      p root.get_data
      if !root.get_right.nil?
        self.inorder_traversal(root.get_right)
      end
    end

  end

end
