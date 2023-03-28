*** Settings ***
Library			SeleniumLibrary
Resource          resource.robot
Test Setup       Open Browser And Go To Home Page
Test Teardown       Close Browser

*** Test Cases ***
Complete todo tasks
    Create a task   Wake up
    Create a task   Shower
    Create a task   Dress up

    Open Todo Tab
    Complete First Task
    Complete First Task
    Complete First Task
    ${count}=   Get Incomplete Tasks
    Should Be True  ${count}==0

    Open Completed Tab
    ${count}=   Get Complete Tasks
    Should Be True  ${count}==3
    