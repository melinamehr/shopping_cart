require_relative 'product.rb'

class Shopping_carts
  @@products = []

  def self.all_products
    @@products
  end

  def initialize
    @total_before = 0
    @total_after = 0
  end

  def self.add_product(name, price)
    new_product = Products.new(name, price)
    @@products << new_product
    new_product
  end

  def self.rem_product(product)
    @@products.delete(product)
  end


  def self.total_before
    @total_before = 0
    @@products.each do |product|
      @total_before += product.price
    end
    @total_before
  end

  def self.total_after
    @total_after = 0
    @@products.each do |product|
      @total_after += product.price * 1.13
    end
    @total_after
  end



end


  #Each shopping cart has a collection of products.
  #It should also have the following functionality:

  #add an product to the cart
  #remove an product from the cart
  #add up the total cost of all products in the cart before tax
  #add up the total cost of all products in the cart after tax
