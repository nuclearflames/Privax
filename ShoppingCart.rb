class ShoppingCart
  include Enumerable
  require "./item"

  def initialize()
  end

  def get_total_sum
    @@items.each do |f|
      printf("%-6s  %-#{get_longest_product_name_length}s  %-s \n", f.get_quantity, f.get_name, "lb " + "%.2f" % f.get_price.round(2).to_s)
    end
    puts "-----------------------------------------------"
    printf("%-6s  %-#{get_longest_product_name_length}s  %-s \n", "Total:", "", "lb " + "%.2f" % get_total_price.round(2).to_s)
  end

  def add_item(product, amount)
    existingItem = @@items.select { |i| i.get_name == product }.first
    if existingItem.nil?
      @@items << Item.new(product, amount)
    else
      existingItem.set_quantity(existingItem.get_quantity + amount)
    end
  end

  def get_price_of(product)
    @@items.find { |i| i.get_name == product }.get_price
  end

  def get_items
    @@items
  end

  def get_total_price
    @total_price = 0
    get_items.each do |i|
      @total_price = total_price + i.get_price
    end
    return @total_price
  end

  def get_longest_product_name_length
    @longest_string_len = 0
    get_items.each do |f|
      @longest_string_len = f.get_name_length if @longest_string_len < f.get_name_length
    end
    return longest_string_len
  end

  protected

    attr_accessor :longest_string_len, :total_price

    @@items = Array.new

end