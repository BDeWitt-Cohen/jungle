class Admin::DashboardController < ApplicationController
  def show
    @category = Category.count
    @products = Product.count
  end
end
