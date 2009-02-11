class CreateEquipment < ActiveRecord::Migration
  def self.up
    create_table :equipment do |t|
      t.string :brand, :code, :model
      t.float :price
      t.date :buy_date

      t.references :category, :staff
      t.timestamps
    end

    Equipment.create!(:code => "300000001",
                      :brand => "Lenovo",
                      :model => "X61", 
                      :price => 17500, 
                      :buy_date => "2009-1-20",
                      :category_id => "1")
  end

  def self.down
    drop_table :equipment
  end
end
