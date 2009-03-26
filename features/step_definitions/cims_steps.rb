Given /^a purchase existed by "(.*)" with the following items on "(.*)" from "(.*)":$/ do |buyer, buy_date, supplier, items|
  buyer_id = Staff.find_by_name(buyer).id
  supplier_id = Supplier.find_by_company(supplier).id
  Purchase.create!(:buy_date => buy_date, :buyer_id => buyer_id, :supplier_id => supplier_id)
end
