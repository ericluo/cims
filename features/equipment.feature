Feature: Maitain the equipment
  CRUD the equipment

  Scenario: Create new equipment
    Given I am on the equipment_index page
    When I follow "新增设备"
    Then I should see "Unknown action"

  Scenario: Persistence and Create the new equipment
    Given I am on the new_equipment page
    When I fill in "code" with "3000000010"
    And I fill in "name" with "打印机"
    And I press "确定"
    Then I should see "新建成功"
