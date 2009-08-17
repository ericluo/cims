# encoding: utf-8
class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(params[:equipment])
    if @equipment.save
      flash[:notice] = "新增设备成功"
      redirect_to equipment_path
    else
      render :action => "new"
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
    @owner = @equipment.owner
    @candicates = @owner.nil? ? [] : Staff.find_by_section_id(@owner.section_id)
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update_attributes(params[:equipment])
      flash[:notice] = "设备信息更新成功"
      redirect_to(@equipment)
    else
      render :action => "edit"
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    redirect_to equipment_url
  end
end
