*** Settings ***
Library  SeleniumLibrary
Metadata  Author Khajavali

*** Variables ***
${Browser}  Chrome
${URL}  https://admin-demo.nopcommerce.com/login

*** Keywords ***
Open And Verify Browser
    [Documentation]  Opens the browser, verifies the page title, and performs initial checks.
    Open Browser  ${URL}  ${Browser}
    Page Should Contain  Admin area demo

*** Test Cases ***
TC_001 Browser Start and Verify title
    [Documentation]  This test case uses the custom keyword to open and verify the page title.
    [Tags]  Smoke
    Open And Verify Browser
    Close Browser
