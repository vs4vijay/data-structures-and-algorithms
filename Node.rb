class Node

  @@count = 0

  def initialize(data = nil)
    @@count = @@count + 1
    @data = data
    p 'creating node'
    p data
  end

  def get_data
    @data
  end

  def set_data (data)
    @data = data
  end

  def get_left
    @left
  end

  def set_left (left)
    @left = left
  end

  def get_right
    @right
  end

  def set_right (right)
    @right = right
  end

  # class level method for getting counts
  def self.count
    @@count
  end

end
