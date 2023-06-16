module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    res = true
    @list.each do |item|
      res &&= yield item
    end
    res
  end

  def any?
    res = false
    @list.each do |item|
      res ||= yield item
    end
    res
  end

  def filter
    filtered_arr = []
    @list.each do |item|
      res = yield item
      filtered_arr.append(item) if res
    end
    filtered_arr
  end
end
