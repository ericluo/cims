# encoding: utf-8

namespace :db do
  desc "import the sections data"
  task :seed => [:reset] do
    # %w{局领导 政策法规处 非现场一处 非现场二处 现场检查一处 现场检查二处 \
# 城市商业银行监管处 非银行机构监管处 合作处 外资银行监管处 直管办 统计信息处 \
# 财务会计处 人事处 监察室 机关党委 机关服务中心 案件治理督导组 银行业协会 其他}.each_with_index do|n, i|
      # Section.create!(name: n, priority: i)
    # end

    statuses, priorities, categories, staffs = [],[],[],[]
    CIMS::Issue::STATUSES.each {|s| statuses << Factory(:issue_status, name: s)}
    CIMS::Issue::PRIORITIES.each {|p| priorities << Factory(:issue_priority, name: p)}
    CIMS::Issue::CATEGORIES.each {|c| categories << Factory(:issue_category, name: c)}
    CIMS::Product::CATEGORIES.each {|c| Factory(:product_category, name: c)}

    10.times { staffs << Factory(:staff) } 
    5.times { Factory(:issue) }
  end
end
