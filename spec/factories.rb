# encoding: utf-8

Factory.define :supplier do |f|
  f.name "lenovo"
  f.boss "yang"
  f.address "beijing"
  f.phone "86"
end

Factory.define :issue_priority do |f|
  f.name CIMS::DICT[:issue_priority].rand
end

Factory.define :issue_category do |f|
  f.name CIMS::DICT[:issue_category].rand
end

Factory.define :product_category  do |f|
  f.name CIMS::DICT[:product_category].rand
end

Factory.define :section do |f|
  f.sequence :name do |n| 
    "section#{n}"
  end
  f.sequence :priority do |n|
    n
  end
end

Factory.define :user do |f|
  f.email "example@mail.com"
  f.password "x32345"
  f.room "310"
  f.phone "5025"
end

Factory.define :staff do |f|
  f.sequence :account do |n| 
    "account#{n}" 
  end
  f.sequence :name do |n|
    "name#{n}"
  end
  f.room "310"
  f.phone "85565025"
  f.password "secret"
  f.password_confirm {|u| u.password}

  f.association :section
end

Factory.define :issue do |f|
  f.subject "电脑维修"
  f.description "主板故障，需要更换"

  f.association :applicant, factory: :staff
  f.association :author, factory: :staff
  f.association :priority, factory: :issue_priority
  f.association :category, factory: :issue_category
end
