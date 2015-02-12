class Range
  def initialize(lowest, price)
    set_lowest(lowest)
    set_price(price)
  end

  def set_lowest(low)
    @lowest = low
  end

  def set_price(price)
    @price = price
  end

  def is_in_range?(value)
    if lowest <= value
      return true 
    else
      return false
    end
  end

  def get_range
    return @lowest.to_s + ", " + @price.to_s
  end

  def get_price
    return @price
  end

  protected

    attr_accessor :lowest, :price

end