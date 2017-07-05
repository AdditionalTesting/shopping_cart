class Product

  attr_accessor :name, :price, :tax_rate

  def initialize(name, price, tax_rate)
    @name = name
    @price = price
    @tax_rate = tax_rate
  end

  def total_price
     @price + @price * @tax_rate

  end



end

product1 = Product.new('Product1', 100, 0.1)
product2 = Product.new('Product2', 200, 0.5)
product3 = Product.new('Product3', 50, 0.05)

# puts product1.total_price
# puts product2.total_price
# puts product3.total_price
