*** Settings ***
Documentation       Fetches data from input csv file

Resource            Shared.robot


*** Variables ***
@{data}


*** Keywords ***
Fetch csv data
    Open Workbook    C:/Users/rohit.talekar/Downloads/challenge.xlsx
    @{data} =    Read Worksheet as Table    header=True
    Close Workbook
    RETURN    @{data}
