class Products
  attr_accessor :name, :price
  attr_reader :tax

 def initialize(name, price)
  @name = name
  @price = price
  @tax = 1.13
end

  def total_price
    price * tax
  end

  product1 = Products.new("coffee", 5)
  product2 = Products.new("donut", 7)
  product3 = Products.new("tea", 3)
end
