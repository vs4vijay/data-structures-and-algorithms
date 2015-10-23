class LNode
  attr_accessor :data, :next
  @@size = 0

  def initialize(data = 0)
    @@size += 1
    @data = data
  end

  def self.size
    @@size
  end

end
