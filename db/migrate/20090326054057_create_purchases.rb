class CreatePurchases < ActiveRecord::Migration
  def self.up
    create_table :purchases do |t|
      t.date :buy_date
      t.string :buyer
      t.string :supplier
      t.text :comment
    end
  end

  def self.down
    drop_table :purchases
  end
end
