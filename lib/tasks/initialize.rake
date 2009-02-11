namespace :db do
  namespace :data do
    desc 'import the initialize data to the database'
    task :import => :environment do
      Section.delete_all
      %w{局领导 办公室 政策法规处 非现场一处 非现场二处 现场检查一处 现场检查二处 城市商业银行监管处 非银行机构监管处 合作处 外资银行和金融资产管理公司监管处 直辖监管办协调处 统计信息处 财务会计处 人事处 监察室 机关党委 机关服务中心 案件治理工作督导组 银行业协会 其他}.each_with_index do |name, index| 
        Section.create(:name => name, :priority => index + 1)
      end
      #section = Section.first(:name => '局领导')
      #%w{李怀珍 何学良 阙方平 段银弟}.each_with_index do |name, index|
        #section.
      #end
    end
  end
end

