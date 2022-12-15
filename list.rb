require_relative './my_enumerable'
class MyList
  include MyEnumerable
  def initialize(*num)
    @list = num
  end

  def each
    return to_enum(:each) unless block_given?

    numbers = 0
    while numbers < @list.length
      yield(@list[numbers])
      numbers += 1
    end
    @list
  end
end
