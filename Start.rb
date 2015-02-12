include Enumerable
require "./ShoppingCart"

cart = ShoppingCart.new

cart.add_item "lemon", 8

cart.add_item "tomato", 10
cart.add_item "tomato", 15

cart.add_item "Green Grape", 15
cart.add_item "Green Grape", 120

cart.get_items.map { |i| i.get_name == "lemon" ? i.set_range(0, 0.50) : 0 } 
cart.get_items.map { |i| i.get_name == "lemon" ? i.set_range(10, 0.45) : 0 } 

cart.get_items.map { |i| i.get_name == "tomato" ? i.set_range(0, 0.20) : 0 } 
cart.get_items.map { |i| i.get_name == "tomato" ? i.set_range(20, 0.18) : 0 } 
cart.get_items.map { |i| i.get_name == "tomato" ? i.set_range(100, 0.14) : 0 }

cart.get_items.map { |i| i.get_name == "Green Grape" ? i.set_range(0, 0.50) : 0 } 
cart.get_items.map { |i| i.get_name == "Green Grape" ? i.set_range(20, 0.48) : 0 } 
cart.get_items.map { |i| i.get_name == "Green Grape" ? i.set_range(100, 0.34) : 0 }

#puts cart.get_price_of "lemon"
#puts cart.get_price_of "tomato"
#puts cart.get_price_of "Green Grape"

cart.get_total_sum