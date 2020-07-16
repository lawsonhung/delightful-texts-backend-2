class IceCreamOrdersController < ApplicationController

  def index
    @ice_cream_orders = IceCreamOrder.all
    render json: { ice_cream_orders: @ice_cream_orders }
  end

  def create
    @ice_cream_order = IceCreamOrder.create(ice_cream_order_params)
    render json: { ice_cream_order: @ice_cream_order }
  end

  private

  def ice_cream_order_params
    params.require(:ice_cream_order).permit(:flavor, :size, :m_and_ms, :peanuts, :sprinkles, :hot_chocolate_fudge, :user_id)
  end

end
