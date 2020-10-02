*** Settings ***
Library        Selenium2Library    
Resource       ../Keywords/youtube.robot

*** Test Cases ***
Valid Login
    Open Youtube Page
    [Teardown]    Close Browser
    
Search And Open Youtube Video
    [Documentation]    Search And Open Youtube Video
    Open Google To Search For Youtube Video
    [Teardown]    Close Browser