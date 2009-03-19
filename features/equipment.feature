Feature: Maitain the equipment
  CRUD the equipment

  Scenario: Create new equipment
    Given I go to equipment
    When I follow "新增设备"
    Then I should see "Unknown action"
