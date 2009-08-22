# encoding: utf-8
class StaffsController < ApplicationController
  before_filter :find_section

  def edit
    @staff = Staff.find(params[:id])
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def create
    @section = Section.find(params[:section_id])
    @staff = @section.staffs.build(params[:staff])
    if @staff.save
      flash[:notice] = "用户注册成功！"
      redirect_to(sections_path)
    else
      render :action => "new"
    end
  end

  def update
    @staff = Staff.find(params[:id])
    if @staff.update_attributes(params[:staff])
      flash[:notice] = "用户修改成功"
      redirect_to(sections_path)
    else
      render :action => "edit"
    end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy
    redirect_to(sections_path)
  end

  def new
    @staff = @section.staffs.new
  end

  private

  def find_section
    @section = Section.find(params[:section_id])
  end
end
