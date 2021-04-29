*** Settings ***
Library   SeleniumLibrary


*** Test Cases ***
Count table
        open browser   https://testautomationpractice.blogspot.com/   chrome
        maximize browser window
        ${rows}=  get element count  xpath://table[@name='BookTable']/tobody/tr
        ${cols}=  get element count  xpath://table[@name='BookTable']/tobody/tr[1]/th
        log to console  ${rows}
        log to console  ${cols}

        ${data}=  get text  xpath://table[@name='booktable']/tobody/tr[5]/th
        log to console  ${data}
        table column should contain  xpath://table[@name='BookTable']   2   author
        table row should contain  xpath://table[@name='BookTable']      4   Learn JS
        table cell should contain  xpath://table[@name='BookTable']     5   2  Mukesh
        table header should contain  xpath://table[@name='BookTable']  BookName

        close browser