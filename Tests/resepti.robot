*** Settings ***
Documentation  This is...
#Library  SeleniumLibrary
#Library  Collections
Resource    ../Resources/Common.robot
#Resource    ../Resources/
Test Setup          Start web test     ${BROWSER}
Test Teardown       End web test
# use the below line (without the # sign) to run the script
# robot -d results tests

*** Variables ***
#${URL}                                  https://ristoxxx.github.io/
#${BROWSER}                              firefox

*** Test Cases ***
Validte start page
          Common.Validte start page



*** Keywords ***