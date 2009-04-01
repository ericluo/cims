Given /^a purchase existed by "(.*)" on "(.*)" from "(.*)":$/ do |buyer, buy_date, supplier, items|
  puts buyer, supplier, items
  Purchase.create!(:buyer => buyer, :supplier => supplier, :buyer_date => buy_date)
  puts buy_date
end
