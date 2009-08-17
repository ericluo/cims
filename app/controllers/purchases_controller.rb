# encoding: utf-8
class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(params[:purchase])
    if @purchase.save
      flash[:notice] = "新增采购信息成功"
      redirect_to purchases_url
    else
      render :action => "new" 
    end
  end
end
