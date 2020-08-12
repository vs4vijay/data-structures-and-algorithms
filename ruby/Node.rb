class Node
  attr_accessor :data, :left, :right
  @@count = 0

  def initialize(data = nil)
    @@count += 1
    @data = data
    p "Node created: #{@data}"
  end

  # def get_left
  #   @left
  # end
  #
  # def set_left (left)
  #   @left = left
  # end

  # class level method for getting counts
  def self.count
    @@count
  end

end
