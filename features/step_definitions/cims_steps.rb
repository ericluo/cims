Given /^a purchase existed by "(.*)" with the following items on "(.*)" from "(.*)":$/ do |buyer, buy_date, supplier, items|
  @purchase = Purchase.new do |p|
    p.buy_date = buy_date
    p.buyer = Staff.find_by_name(buyer)
    p.supplier = Supplier.find_by_name(supplier)
  end
  @purchase.create!
end
