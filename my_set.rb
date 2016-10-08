class MySet
  def initialize
    @set = Hash.new
  end

  def include?(item)
    @set.keys.include?(item)
  end

  def add(item)
    @set[item] = true
  end

  def delete(item)
    @set.delete(item)
  end
end
