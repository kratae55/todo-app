*** Settings ***
Library			SeleniumLibrary
Resource          resource.robot\
Test Setup       Open Browser And Go To Home Page
Test Teardown       Close Browser

*** Test Cases ***
Creat tasks
    Create a task   Wake up
    Create a task   Shower
    Create a task   Dress up
    
    Open Todo Tab
    ${count}=   Get Incomplete Tasks
    Should Be True  ${count}==3

    Open Completed Tab
    ${count}=   Get Complete Tasks
    Should Be True  ${count}==0
    