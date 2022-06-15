*** Settings ***
Documentation       Fills up the form fields

Resource            Shared.robot


*** Keywords ***
Fill up form fields
    Click Button    Start
    FOR    ${row}    IN    @{data}
        Input Text    xpath://input[@ng-reflect-name="labelFirstName"]    ${row}[First Name]
        Input Text    css:input[ng-reflect-name="labelLastName"]    ${row}[Last Name]
        Input Text    css:input[ng-reflect-name="labelPhone"]    ${row}[Phone Number]
        Input Text    css:input[ng-reflect-name="labelEmail"]    ${row}[Email]
        Input Text    css:input[ng-reflect-name="labelAddress"]    ${row}[Address]
        Input Text    css:input[ng-reflect-name="labelCompanyName"]    ${row}[Company Name]
        Input Text    css:input[ng-reflect-name="labelRole"]    ${row}[Role in Company]

        Click Button    css:input[value="Submit"]
    END
