class Array
  def my_group_by(&filter)
    hash = Hash.new {|h,k| h[k] = Array.new}
    self.each do |item|
      group = filter.call(item)
      hash[group].push(item)
    end
    hash
  end
end
