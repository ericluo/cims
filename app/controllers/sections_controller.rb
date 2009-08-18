# encoding: utf-8
class SectionsController < ApplicationController
  def index
    @sections = Section.find(:all, :include => :staffs, :order => "priority")
  end

  def create
    @section = Section.create!(params[:section])
    flash[:notice] = "添加部门成功!"
    respond_to do |format|
      format.html{ redirect_to @sections }
      format.js 
    end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.delete
    flash[:notice] = "删除部门成功!"
    redirect_to :action => :index
  end

  def update
    params[:sequence].each_with_index do |id, index|
      section = Section.find(id)
      section.priority = index
      section.save
    end
    redirect_to :action => :index
  end
end
