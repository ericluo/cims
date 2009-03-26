class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.date :buy_date
      t.integer :buyer_id
      t.integer :supplier_id
      t.text :comment
    end
  end

  def self.down
    drop_table :purchases
  end
end
