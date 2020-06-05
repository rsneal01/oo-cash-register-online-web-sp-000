class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    self.total -= self.total * (discount/100.0 )
  end
  

end
