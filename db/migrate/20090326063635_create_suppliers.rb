class CreateSuppliers < ActiveRecord::Migration
  def self.up
    create_table :suppliers do |t|
      t.string :name
      t.string :boss
      t.string :address
      t.string :phone
    end
  end

  def self.down
    drop_table :suppliers
  end
end
