# encoding: utf-8

module CIMS
  DICT = { 
    # issue data
    :issue_priority => %w[最高   较高  一般],
    :issue_category => %w[设备维护 巡检  系统管理 其他],

    # product data
    :product_category => %w[PC NOTEBOOK PRINTER CAMERA],
  }

  def self.bootstrap
    DICT.each do |k, v|
      c = k.to_s.camelize.constantize
      v.each {|name| c.new(:name => name).save}
    end
  end
end

