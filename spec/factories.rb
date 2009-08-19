# encoding: utf-8

Factory.define :section do |f|
  f.name "办公室"
  f.priority "1"
end

Factory.define :staff do |f|
  f.account "luowenbo"
  f.name "罗文波"
  f.room "310"
  f.phone "85565025"
  f.password "secret"
  f.password_confirm {|u| u.password}

  f.association :section
end
