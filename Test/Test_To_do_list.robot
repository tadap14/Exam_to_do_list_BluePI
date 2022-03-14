*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://abhigyank.github.io/To-Do-List/
${BRWOSER}      Chrome
${TASK1}    Exam for BluePI
${TASKFORDELETE}    IT WRONG TASKS

*** Keywords ***
Open the browser
    open browser    ${URL}  ${BRWOSER}
Add to do list 1
    input text    id:new-task   ${TASK1}
    sleep    2s
    click element    xpath://button
Add to do for delete
    input text    id:new-task   ${TASKFORDELETE}}
    sleep    2s
    click element    xpath://button
Open task tap
    click element    xpath://a[@href='#todo']
Mask task 1 complate
    click element    xpath:/html/body/div/div/div[3]/ul/li[1]/label/span[4]
Delate task 2
    click element    xpath:/html/body/div/div/div[3]/ul/li/button/span
Open complete tap
    click element    xpath://a[@href='#completed']


*** Test Cases ***
Test case 1 Open browser and go to To-Do-List page
    Open the browser
    sleep    3s
Test case 2 add task and open tap task
    Add to do list 1
    sleep    3s
    Add to do for delete
    sleep    3s
    Open task tap
    sleep    3s
Test case 3 mark complate exam Blue PI
    mask task 1 complate
    sleep    3s
    open complete tap
    sleep    3s
Test case 4 Delete task 2
    open task tap
    sleep    3s
    delate task 2



