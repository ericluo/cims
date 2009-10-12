# encoding: utf-8
module CIMS
  module Issue
    STATUSES = %w{new open complete reopen}
    PRIORITIES = %w{最高 较高 一般}
    CATEGORIES = %w{设备维护 巡检 系统管理 其他}
  end

  module Product
    CATEGORIES = %w{PC NOTEBOOK PRINTER CAMERA}
  end

end

