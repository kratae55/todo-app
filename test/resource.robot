*** Settings ***
Library			SeleniumLibrary

*** Variables ***
${BROWSER}		%{BROWSER}
${APP_URL}		https://abhigyank.github.io/To-Do-List/
${DELAY}		0

*** Keywords ***
Open Browser And Go To Home Page
    Open Browser    ${APP_URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be    To-Do List

Create a task
    [Arguments]    ${task}
    Input Text  //*[@id="new-task"]   ${task}
    Click Button    //*[@id="add-item"]/button

Open Todo Tab
    Click Link  xpath=/html/body/div/div/div[1]/a[2]

Open Completed Tab
    Click Link  xpath=/html/body/div/div/div[1]/a[3]

Get Incomplete Tasks
    ${count}=   Get Element Count   //*[@id="incomplete-tasks"]/li
    [return]  ${count}

Get Complete Tasks
    ${count}=   Get Element Count   //*[@id="completed-tasks"]/li
    [return]  ${count}

Delete First Todo Task
    Click Element   xpath=/html/body/div/div/div[3]/ul/li[1]/button/span

Complete First Task
    Click Element   xpath=/html/body/div/div/div[3]/ul/li/label/span[4]

Delete First Completed Task
    Click Element   xpath=/html/body/div/div/div[4]/ul/li/button/span
