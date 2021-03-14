class Array
  def my_each
    self.each do |arr_i|
      yield arr_i
    end
  end

  def my_map
    res = []

    self.my_each { |arr_i| res.push(yield(arr_i)) }

    res
  end

  def my_select
    res = []

    self.my_each { |arr_i| res.push(arr_i) if yield(arr_i) }

    res
  end
end

