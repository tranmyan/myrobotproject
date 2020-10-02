*** Settings ***
Resource    ../Configures/androidConfig.robot
Resource    ../Configures/iOSConfig.robot
Resource    ../variables/loginPage.robot
Library     AppiumLibrary

*** Keywords ***
I open the  mobile application
  [Documentation]  Starts the mobile application on the platform that is given as a parameter in the parameter file
  Run keyword if    "${PLATFORM_NAME}" == "Android"      Set telemetry for Android
  Run keyword if    "${PLATFORM_NAME}" == "iOS"          Set telemetry for iOS

Set telemetry for Android
  [Documentation]  Opens the application on Android
  Open Application  ${REMOTE_URL}
  ...   platformName=${PLATFORM_NAME}
  ...   platformVersion=${PLATFORM_VERSION}
  ...   deviceName=${DEVICE_NAME}
  ...   app=${EXECDIR}/${APK_FILENAME}
  ...   automationName=UIAutomator1
  ...   appPackage=${APP_PACKAGE}
  ...   appActivity=${APP_ACTIVITY}

Set telemetry for iOS
  [Documentation]  Opens the application on iOS
  Open Application  ${REMOTE_URL}
  ...    platformName=${PLATFORM_NAME}
  ...    platformVersion=${PLATFORM_VERSION}
  ...    deviceName=${DEVICE_NAME}
  ...    app=${EXECDIR}/${APK_FILENAME}
  ...    automationName=XCUITest
  ...    bundleID=${BUNDLE_ID}

Wait until element is visible and input text
    [Documentation]    Wait until element is visible then input text into the element text field
    [Arguments]      ${locator}    ${text_value}
    Wait Until Element Is Visible      ${locator}
    Clear Text                         ${locator}
    Input Text                         ${locator}    ${text_value}
    Hide Keyboard

Wait until element is visible and click element
    [Documentation]    Wait until element is visible then click element
    [Arguments]      ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element                     ${locator}

Wait until element is visible and click button	
    [Documentation]    Wait until element is visible then click button	
    [Arguments]                      ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Button                     ${locator}

Wait Until Text Is Visible And Click Text	
    [Documentation]    Wait until element is visible then click button	
    [Arguments]                      ${text}
    Wait Until Page Contains         ${text}
    Click Text                       ${text}

I enter email in the login page 
    [Documentation]    Enter email in Email field
    [Arguments]    ${email_value}
    Wait until element is visible and input text    ${INPUT_EMAIL}     ${email_value}
    
I enter password in the login page
    [Documentation]    Enter password in Password field
    [Arguments]    ${password_value}
    Wait until element is visible and input text    ${INPUT_PASSWORD}      ${password_value}

I check the homepage is opened successfully
    [Documentation]    Check the Home page is opened successfully by checking the Home menu icon is visible
    Wait Until Element Is Visible    ${ICON_HOME_MENU}    

I login to mobile app with ${email} and ${password}
    [Documentation]    I login to mobile app with ${email} and ${password}
    I enter email in the login page         ${email}
    I enter password in the login page      ${password}
    Click Element                           ${BUTTON_SUBMIT}