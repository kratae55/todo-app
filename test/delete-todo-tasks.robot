*** Settings ***
Library			SeleniumLibrary
Resource          resource.robot
Test Setup       Open Browser And Go To Home Page
Test Teardown       Close Browser

*** Test Cases ***
Delete todo tasks
    Create a task   Wake up
    Create a task   Shower
    Create a task   Dress up

    Open Todo Tab
    Delete First Todo Task
    Delete First Todo Task
    Delete First Todo Task

    ${count}=   Get Incomplete Tasks
    Should Be True  ${count}==0
    