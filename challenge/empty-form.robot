*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ../data/challenge.xlsx
Resource    ../resources/resources.robot
Suite Setup    Open page and start test
Suite Teardown    Finish with rate    0
Test Template    Submit the emty form

*** Variables ***
${firstName}
${lastName}

*** Test Cases ***
Fill the form for ${firstName} ${lastName}

*** Keywords ***
Submit the emty form
    Submit the form