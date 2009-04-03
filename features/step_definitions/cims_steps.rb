Given /^a purchase existed by "(.*)" on "(.*)" from "(.*)":$/ do |buyer, buy_date, supplier, items|
  Purchase.create!(:buyer => buyer, :supplier => supplier, :buy_date => buy_date)
end
