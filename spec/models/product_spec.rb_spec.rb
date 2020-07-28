require 'rails_helper'


RSpec.describe Product, type: :model do
  
  describe 'Validations' do
    before :each do
      @category = Category.new(name: "Stuff")
      @product =  Product.new(name: "things", price: 30000, quantity: 10, category: @category)
    end

    it "is not valid without a name" do
      @product.name = nil
      @product.valid?
      puts @product.errors.full_messages
      expect(@product).to_not be_valid
    end
    it "is not valid without a price" do
      @product =  Product.new(name: "things", price: nil, quantity: 10, category: @category)
      @product.valid?
      puts @product.price
      expect(@product).to_not be_valid
    end
    it "is not valid without a quantity" do
      @product.quantity = nil
      @product.valid?
      expect(@product).to_not be_valid
    end
    it "is not valid without a category" do
      @product.category = nil
      @product.valid?
      expect(@product).to_not be_valid
    end
    it "is valid with a name, price, quantity, and category" do
      @category = Category.new(name: "Stuff")
      @product = Product.new(name: "things", price: 30000, quantity: 10, category: @category)
      @product.valid?
      puts @product.errors.full_messages
      expect(@product).to be_valid
    end
  end
end

