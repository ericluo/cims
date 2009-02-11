class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name
    end
    %w{台式电脑 笔记本电脑 打印机 复印机 扫描仪}.each do |name|
      Category.create!(:name => name)
    end
  end

  def self.down
    drop_table :categories
  end
end
