class CartsController < ApplicationController
  def index
    @cart = current_user.carts.first.cart_items
  end

  def addproduct
    @cartitems = current_user.carts.first.cart_items.new(product_id:params[:id])
    @cartitems.save
    # render :index
    redirect_to carts_path
  end

  def removeproduct
    @cartitems = CartItem.find(params[:id])
    @cartitems.destroy
    redirect_to carts_path
  end
end
