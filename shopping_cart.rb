require_relative 'products.rb'

class Shopping_cart

      @@cart = []
  def initialize

  end

  def add_product(name, price, tax_rate)
    new_product = Product.new(name, price, tax_rate)
    @@cart.push(new_product)
  end

  def remove_product(name)
      @@cart.each do |prod|
          if prod.name == name
            @@cart.delete(prod)
          end
      end
  end

  def price_pre_tax
    sum = 0
    @@cart.each do |product|
      sum = sum + product.price
    end
    return sum
  end

  def price_with_tax
    sum = 0
    @@cart.each do |product|
      sum = sum + product.price + product.price * product.tax_rate
    end
    return sum
  end



end

cart1 = Shopping_cart.new

cart1.add_product('Product1', 100, 0.1)
cart1.add_product('Product2', 100, 0.1)


p cart1

puts cart1.price_pre_tax
puts cart1.price_with_tax
