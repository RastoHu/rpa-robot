*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          https://www.rpachallenge.com/
${browser}      chrome

*** Keywords ***
Input data
    [Arguments]    ${firstName}    ${lastName}    ${companyName}    ${role}    ${address}    ${email}    ${phone}
    Input Text    css:input[ng-reflect-name="labelFirstName"]    ${firstName}
    Textfield Value Should Be    css:input[ng-reflect-name="labelFirstName"]    ${firstName}
    Input Text    css:input[ng-reflect-name="labelLastName"]    ${lastName}
    Textfield Value Should Be    css:input[ng-reflect-name="labelLastName"]    ${lastName}
    Input Text    css:input[ng-reflect-name="labelCompanyName"]    ${companyName}
    Textfield Value Should Be    css:input[ng-reflect-name="labelCompanyName"]    ${companyName}
    Input Text    css:input[ng-reflect-name="labelRole"]    ${role}
    Textfield Value Should Be    css:input[ng-reflect-name="labelRole"]    ${role}
    Input Text    css:input[ng-reflect-name="labelAddress"]    ${address}
    Textfield Value Should Be    css:input[ng-reflect-name="labelAddress"]    ${address}
    Input Text    css:input[ng-reflect-name="labelEmail"]    ${email}
    Textfield Value Should Be   css:input[ng-reflect-name="labelEmail"]    ${email}
    Input Text    css:input[ng-reflect-name="labelPhone"]    ${phone}
    Textfield Value Should Be    css:input[ng-reflect-name="labelPhone"]    ${phone}
Submit the form
    Click Button    Submit
Open page and start test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Button    Start
Finish with rate
    [Arguments]    ${rate}
    Page Should Contain    Your success rate is ${rate}%
    Close Browser