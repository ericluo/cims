class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.find(:all)
  end
end
