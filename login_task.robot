*** Settings ***
Documentation       Opens the Website and fills data

Resource            Fetch_data.robot
Resource            Shared.robot


*** Keywords ***
Open website
    [Arguments]    @{fetched_data}
    Open Available Browser    https://www.rpachallenge.com/
    Click Button    Start
    FOR    ${row}    IN    @{fetched_data}
        Input Text    xpath://input[@ng-reflect-name="labelFirstName"]    ${row}[First Name]
        Input Text    css:input[ng-reflect-name="labelLastName"]    ${row}[Last Name]
        Input Text    css:input[ng-reflect-name="labelPhone"]    ${row}[Phone Number]
        Input Text    css:input[ng-reflect-name="labelEmail"]    ${row}[Email]
        Input Text    css:input[ng-reflect-name="labelAddress"]    ${row}[Address]
        Input Text    css:input[ng-reflect-name="labelCompanyName"]    ${row}[Company Name]
        Input Text    css:input[ng-reflect-name="labelRole"]    ${row}[Role in Company]

        Click Button    css:input[value="Submit"]
    END
