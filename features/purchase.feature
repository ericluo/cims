Feature: 管理设备采购信息
  为了便于维护设备采购信息，包括采购时间，供货商，采购设备等信息。
  采购及设备系统管理员
  需要进行采购信息CRUD操作

  Background:
    Given a supplier named "佳维科技"
      And a category named "PC"
    #  And a staff named "罗文波"

  Scenario: 浏览及查询设备采购情况
    Given a purchase by "刘波" on "2008/3/3" from "佳维" with items
      | category   | brand | mode | quanlity | 
      | PC         | IBM   | X61  | 50       | 
      And I am on the purchases page
    When I follow "采购管理"
    Then I should see "新增采购"

  Scenario: 新建设备采购信息
    Given I am on the new_purchase page
    When I fill in "采购日期" with "2009-3-31"
      And I fill in "经办人" with "罗文波"
      And I select "佳维科技" from "供货单位" 
      And I press "保存"
    Then I should see "新增采购信息成功"
      And I should see "罗文波"


