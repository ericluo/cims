Given /^I am on the (.+) page/ do |page|
  eval "visit #{page}_path"
end
