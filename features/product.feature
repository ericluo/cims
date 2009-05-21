Feature: 管理产品信息
  为了更好地进行设备管理，需要维护设备的类别，型号，品牌信息

  Scenario: 增加产品
    Given I am on the new_product page
    When I fill in "产品类别" with "计算机"
      And I fill in "品牌" with "IBM"
      And I fill in "型号" with "X61"
      And I press "保存"
    Then I should see "新增产品信息成功"
      And I should see "X61"


# vim:set sw=2:
