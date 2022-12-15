module MyEnumerable
  def all?
    return true unless block_given?

    each { |n| return false unless yield n }
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    number_arr = []
    each do |element|
      number_arr << element if yield(element)
    end
    number_arr
  end
end
