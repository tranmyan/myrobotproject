*** Settings ***
Resource    ../keywords/mobile.robot
Library     AppiumLibrary

*** Test Cases ***
Launch The Mobile App
  [Tags]  iOS  Android
  I open the  mobile application
  
Login To Mobile App Successfully With Valid Credentials
    [Documentation]    I login to mobile app with valid credentials successfully
    [Tags]    MOBILE    SIT    LOGIN
    Given I open the  mobile application
    When I login to mobile app with ${email} and ${password}
    Then I check the homepage is opened successfully
    [Teardown]    Quit Application

