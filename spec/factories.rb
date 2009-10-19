# encoding: utf-8

Factory.define :supplier do |f|
  f.name "lenovo"
  f.boss "yang"
  f.address "beijing"
  f.phone "86"
end

Factory.define :issue_priority do |f|
  f.sequence(:name) {|n| "priority#{n}"}
end

Factory.define :issue_category do |f|
  f.sequence(:name) {|n| "issue_category#{n}"}
end

Factory.define :product_category  do |f|
  f.sequence(:name) {|n| "product_category#{n}"}
end

# Factory.define :section do |f|
#   f.sequence :name do |n| 
#     "section#{n}"
#   end
#   f.sequence :priority do |n|
#     n
#   end
# end

Factory.define :user do |f|
  f.sequence(:email) {|n| "example#{n}@mail.com" }
  f.password "x32345"
  f.room "310"
  f.phone "5025"
end

Factory.define :issue do |f|
  f.subject "电脑维修"
  f.description "主板故障，需要更换"

  f.association :applicant, factory: :user
  f.association :author, factory: :user
  f.association :priority, factory: :issue_priority
  f.association :category, factory: :issue_category
end
