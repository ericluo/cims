Feature: Maitain the equipment
  CRUD the equipment

  Background:
    Given a product_category named "打印机"

  Scenario: Create new equipment
    Given I am on the equipment page
    When I follow "新增设备"
    Then I should see "新增设备"

  Scenario: Persistence and Create the new equipment
    Given I am on the new_equipment_instance page
    When I fill in "编码" with "3000000010"
    And I fill in "品牌" with "HP"
    And I select "打印机" from "类别"
    And I fill in "型号" with "51000"
    And I fill in "采购日期" with "2009-3-20"
    And I fill in "价格" with "5000.0"
    And I press "保存"
    Then I should see "新增设备"
