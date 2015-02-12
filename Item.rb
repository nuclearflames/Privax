class Item
  include Enumerable
  require "./range"

  def initialize(name, quantity)
    set_name(name)
    set_quantity(quantity)

    @ranges = Array.new
  end

  def get_name
    @name
  end

  def get_quantity
    @quantity
  end

  def get_price
    @price = self.get_ranges.select { |i| i.is_in_range?(quantity) }.last.get_price * get_quantity
    return @price
  end

  def set_name(name)
    @name = name
  end
  def set_quantity(quantity)
    quantity = 0 if quantity < 0
    @quantity = quantity
  end

  def set_range(low, price)
    low = 0 if low < 0
    @ranges << Range.new(low, price)
  end

  def get_ranges
    @ranges
  end

  def get_name_length
    return get_name.length
  end

  protected
    attr_accessor :name, :quantity, :ranges

  private
end