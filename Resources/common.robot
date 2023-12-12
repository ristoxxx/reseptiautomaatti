*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}                  https://www.s-kaupat.fi/
${BROWSER}              firefox
${KEY_TAG_START_PAGE}   "alepa"
${ACCEPT_COOKIES_BUTTON}    xpath=//@data-testid
*** Keywords ***
Start web test
    [Arguments]    ${BROWSER}
    open browser    about:blank     ${BROWSER}

End web test
    sleep    2 s
    close browser

Validte start page
    go to               ${URL}
    Sleep    4s
    #Wait Until Page Contains Element   ${ACCEPT_COOKIES_BUTTON}
    #Click Element   ${ACCEPT_COOKIES_BUTTON} 
    wait until page contains      ${KEY_TAG_START_PAGE}


Accept terms
    go to               ${URL}
    wait until page contains      ${KEY_TAG_START_PAGE}


    