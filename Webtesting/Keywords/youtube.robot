*** Settings ***
Library    Selenium2Library    
Resource    ../Variables/youtubeElements.robot
Resource    ../Variables/googleElements.robot
Resource    ../Variables/data.robot

*** Keywords ***
Open Youtube Page
    [Documentation]    Open Youtube Page
    Open Browser    https://www.youtube.com/watch?v=UQEFcfRBiO4    chrome
    Wait Until Element Is Visible    ${YOUTUBE_PLAY_VIDEO_BUTTON}
    Click Element                    ${YOUTUBE_PLAY_VIDEO_BUTTON}   
    Sleep    10
    
Open Google To Search For Youtube Video
    [Documentation]    Open Google To Search For Youtube Video
    :FOR    ${i}    IN RANGE    1    3
    \    Open Browser    ${GOODLE_URL}    chrome
    \    Wait Until Element Is Visible    ${SEARCH_FIELD}
    \    Input Text    ${SEARCH_FIELD}    ${TEXT_TO_SEARCH}   
    \    Press Keys    ${SEARCH_FIELD}    ENTER
    \    Wait Until Element Is Visible    ${VIDEO_BUTTON_FROM_BAR}
    \    Click Element                    ${VIDEO_BUTTON_FROM_BAR}
    \    Wait Until Element Is Visible    ${DESIRED_VIDEO}
    \    Wait Until Element Is Visible    test
    \    Click Element                    ${DESIRED_VIDEO}
    \    Sleep    1
    \    Exit For Loop If    ${i} == 1
    \    Close Browser


    