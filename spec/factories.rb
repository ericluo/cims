# encoding: utf-8

Factory.define :section do |f|
  f.sequence :name do |n| 
    "section#{n}"
  end
  f.priority "1"
end

Factory.define :staff do |f|
  f.sequence :account do |n| 
    "account#{n}" 
  end
  f.name "罗文波"
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
end
