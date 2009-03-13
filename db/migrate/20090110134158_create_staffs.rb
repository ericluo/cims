class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :account
      t.string :name
      t.string :room
      t.string :phone
      t.string :encrypted_password

      t.references :section 
      t.timestamps
    end
  end

  def self.down
    drop_table :staffs
  end
end
