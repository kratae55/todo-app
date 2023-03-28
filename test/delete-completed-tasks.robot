*** Settings ***
Library			SeleniumLibrary
Resource          resource.robot
Test Setup       Open Browser And Go To Home Page
Test Teardown       Close Browser

*** Test Cases ***
Delete completed tasks
    Create a task   Wake up

    Open Todo Tab
    Complete First Task
    ${count}=   Get Incomplete Tasks
    Should Be True  ${count}==0

    Open Completed Tab
    Delete First Completed Task
    ${count}=   Get Complete Tasks
    Should Be True  ${count}==0
    