Given /^a (.*) named "(.*)"$/ do |obj, name|
  Factory.create(obj, name: name)
end

Given /^a purchase by "(.*)" on "(.*)" from "(.*)" with items$/ do |b, date, s, items|
  buyer = Staff.find_by_name(b)
  supplier = Supplier.find_by_name(s)
  item = items.hashes[0]
  category = Category.create!(:name => item["category"])
  product = Product.create!(:category_id => category.id,
                            :brand => item[:brand],
                            :mode => item[:mode])
  purchase = Purchase.new(:buyer => buyer, :supplier => supplier, :buy_date => date)
  purchase.line_items << LineItem.new(:product_id => product.id, 
                                      :quanlity => item[:quanlity].to_i)
  purchase.save!
end
