class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=
    node2.parent = node1
    node3.parent = node1
  end

end