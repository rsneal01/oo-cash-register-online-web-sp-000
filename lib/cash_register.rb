class CashRegister
  
  attr_accessor :new, :total
  
  def initialize(total = 0)
    @total = total
  end
  
  def discount
    self.new = 20
  end
  
  def total
    @total = 100
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    
    # @total + price
    # self.total = @total + price
  end
  
end
