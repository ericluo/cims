Given /^a purchase existed by "(.*)" on "(.*)" from "(.*)":$/ do |buyer, buy_date, supplier, items|
  Purchase.create!(:buy_date => buy_date, :buyer => buyer, :supplier => supplier)
end
