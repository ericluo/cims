Feature: 问题管理与事件管理
  为规范问题管理与事件管理流程
  系统用户应该能够
  提交问题、查看提交问题状态、变更问题状态并对问题进行评论

  Background: 
    Given a issue_category named "设备维修"
      And a issue_priority named "high"
      And a staff named "罗文波"
      And a issue_status named "new"

  Scenario: 提交问题
    Given I am on the new_issue page
    When I fill in "任务描述" with "笔记本电脑维修"
      And I select "设备维修" from "类别"
      And I select "罗文波" from "申请人"
      And I select "high" from "优先级"
      And I press "确定"
    Then I should see "任务新建成功"
      And I should see "笔记本电脑维修"
