class CashRegister
  
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    self.total += price * quantity
    quantity.times.do 
      @items << item
    
  end
  
  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
    self.total -= self.total * (discount/100.0 )
    "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  
  def items
    @items
  end

end
