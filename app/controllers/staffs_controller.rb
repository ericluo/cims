class StaffsController < ApplicationController
  before_filter :find_section

  def edit
  end

  def show
    @staff = @section.staffs.find(params[:id])
  end

  def create
    @staff = @section.staffs.new(params[:staff])
    if @staff.save
      flash[:notice] = "用户注册成功！"
      redirect_to([@section, @staff])
    else
      render :action => "new"
    end
  end

  def update
  end

  def destory
  end

  def new
    @staff = @section.staffs.new
  end

  private

  def find_section
    @section = Section.find(params[:section_id])
  end
end
