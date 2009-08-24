# encoding: utf-8

Factory.define :issue_status do |f|
  f.name "new"
end

Factory.define :issue_priority do |f|
  f.name "high"
end

Factory.define :section do |f|
  f.sequence :name do |n| 
    "section#{n}"
  end
  f.sequence :priority do |n|
    n
  end
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
  f.association :status, factory: :issue_status
  f.association :priority, factory: :issue_priority
end
