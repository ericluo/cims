# encoding: utf-8

class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end

  def new
    @supplier = Supplier.new
  end

  def edit
    @supplier = Supplier.find(params[:id])
  end

  def create
    @supplier = Supplier.new(params[:supplier])
    if @supplier.save
      flash[:notice] = '供应商新建成功'
      redirect_to suppliers_url
    else
      render :new
    end
  end

  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(params[:supplier])
      redirect_to suppliers_url
    else
      render :edit
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])
    @supplier.destroy

    redirect_to suppliers_url
  end
end
