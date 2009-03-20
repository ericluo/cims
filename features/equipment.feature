Feature: Maitain the equipment
  CRUD the equipment

  Scenario: Create new equipment
    Given I am on the equipment_index page
    When I follow "新增设备"
    Then I should see "设备新增"

  Scenario: Persistence and Create the new equipment
    Given I am on the new_equipment page
    When I fill in "设备编号" with "3000000010"
    And I select "打印机" from "equipment[category_id]"
    And I fill in "equipment[brand]" with "HP"
    And I fill in "equipment[model]" with "51000"
    And I fill in "equipment[buy_date]" with "2009-3-20"
    And I fill in "equipment[price]" with "5000.0"
    And I press "保存"
