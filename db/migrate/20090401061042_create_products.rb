class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :mode
      t.integer :category_id
      t.string :detail
    end
  end

  def self.down
    drop_table :products
  end
end
