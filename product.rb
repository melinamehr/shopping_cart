class Products
  attr_accessor :name, :price, :tax

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

  #Each shopping cart has a collection of products.
  #It should also have the following functionality:

  #add an product to the cart
  #remove an product from the cart
  #add up the total cost of all products in the cart before tax
  #add up the total cost of all products in the cart after tax
