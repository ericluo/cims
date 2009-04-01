module FixtureReplacement
  attributes_for :department do |a|

	end

  attributes_for :section do |s|
    s.name = String.random
    s.priority = rand(10)
	end

  attributes_for :staff do |s|
    s.account = String.random
    s.name = String.random
    s.room = String.random
    s.phone = String.random(8)
    s.password = s.password_confirm = String.random

    s.section = default_section
	end

  attributes_for :category do |c|
    c.name = String.random
	end

  attributes_for :equipment do |e|
    e.brand = String.random
    e.code = String.random
    e.model = String.random
    e.price = rand(100)
    e.date = Date.today

    e.category = default_category
    e.owner = default_staff
	end

  attributes_for :assignment do |a|
    
	end

  attributes_for :purchase do |p|
    p.buy_date = Date.today
    p.buyer = String.random
    p.supplier = String.random
    p.comment = "comment"
	end
end
