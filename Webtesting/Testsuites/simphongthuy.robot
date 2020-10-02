*** Settings ***
Library        Selenium2Library    
Resource       ../Keywords/simphongthuykeyword.robot

*** Test Cases ***
Lay Ket Qua Sim Hop Tuoi
    [Documentation]    Lay Ket Qua Sim Hop Tuoi
    Open Web Sim Phong Thuy
    Enter Information To View Result
    [Teardown]    Close Browser