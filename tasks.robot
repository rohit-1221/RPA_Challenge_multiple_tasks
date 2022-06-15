*** Settings ***
Documentation       Template robot main suite.

Resource            login_task.robot
Resource            Fetch_data.robot


*** Tasks ***
Minimal tasks
    @{fetched_data}=    Fetch csv data
    Open website    @{fetched_data}
