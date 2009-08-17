# encoding: utf-8
class CategoriesController < ApplicationController
  def index
    @categories = Category.find(:all)
  end

end
