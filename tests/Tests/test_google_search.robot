*** Settings ***
Documentation     *Example test for testing google search*
...
...               This test checks search engine on google.com.
Suite Setup       Open Browser    https://www.google.com/    chrome
Suite Teardown    Close Browser
Library           SeleniumLibrary
Library           ../Common/GoogleSearch.py



*** Test Cases ***
Test Google Search Engine
    [Documentation]    *Verifies google searching functionality*
    [Tags]    search
    SeleniumLibrary.Set Selenium Speed    2
    go to google search page
    Verify Login Page Url
    Enter search query
    Press Key    name=q    \\13
