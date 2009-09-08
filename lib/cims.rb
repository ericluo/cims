# encoding: utf-8
module CIMS
  module Issue
    STATUSES = %w{new open complete reopen}
    PRIORITIES = %w{high medium low}
    CATEGORIES = %w{设备维护 巡检 系统管理 其他}
  end

  module Product
    CATEGORIES = %w{PC NOTEBOOK PRINTER CAMERA}
  end

end

