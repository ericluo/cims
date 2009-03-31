Feature: 管理设备采购信息
  为了便于维护设备采购信息，包括采购时间，供货商，采购设备等信息。
  采购及设备系统管理员
  需要进行采购信息CRUD操作

  Scenario: 浏览及查询设备采购情况
    Given a purchase existed by "刘波" on "2008/3/3" from "佳维":
      | code       | quantity | 
      | 3000000001 | 50       | 
    When I go to purchases
    When I follow "采购管理"
    Then I should see "新增采购"

  Scenario: 新建设备采购信息
    Given I am on the purchases page
    When I follow "新增采购"
    Then I should see "采购信息录入"

