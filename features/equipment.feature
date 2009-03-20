Feature: Maitain the equipment
  CRUD the equipment

  Scenario: Create new equipment
    Given I am on the equipment_index page
    When I follow "新增设备"
    Then I should see "设备新增"

  Scenario: Persistence and Create the new equipment
    Given I am on the new_equipment page
    When I fill in "设备编号" with "3000000010"
    And I fill in "设备品牌" with "HP"
    And I select "Printer" from "设备类别"
    And I fill in "设备型号" with "51000"
    And I fill in "采购日期" with "2009-3-20"
    And I fill in "价格" with "5000.0"
    And I press "保存"
