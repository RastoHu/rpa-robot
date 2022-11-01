*** Settings ***
Library    SeleniumLibrary
Library    DataDriver    ../data/challenge-invalid-data.xlsx
Resource    ../resources/resources.robot
Suite Setup    Open page and start test
Suite Teardown    Finish with rate    90
Test Template    Input data and Submit the form

*** Variables ***
${firstName}
${lastName}

*** Test Cases ***
Fill the form for ${firstName} ${lastName}

*** Keywords ***
Input data and Submit the form
    [Arguments]    ${firstName}    ${lastName}    ${companyName}    ${role}    ${address}    ${email}    ${phone}
    Input data    ${firstName}    ${lastName}    ${companyName}    ${role}    ${address}    ${email}    ${phone}
    Submit the form