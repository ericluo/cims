Feature: 管理设备采购信息
  为了便于设备采购管理，包括采购时间，供货商，采购设备
  等信息。

  Scenario: 浏览及查询设备采购情况
    Given I am on the homepage page
    When I follow "采购管理"
    Then I should see "新增采购"

  Scenario: 新建设备采购信息
    Given I am on the purchases page
    When I follow "新增采购"
    Then I should see "采购信息录入"

