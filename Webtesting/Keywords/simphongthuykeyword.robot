*** Settings ***
Library    Selenium2Library    
Library    OperatingSystem    
Library    Collections    
Resource    ../Variables/simphongthuyElements.robot
Resource    ../Variables/simphongthuydata.robot

*** Keywords ***
Open Web Sim Phong Thuy
    [Documentation]    Open Web Sim Phong Thuy
    Open Browser     ${WEB_SIMPHONGTHUY_URL}   chrome
    Wait Until Element Is Visible    ${INPUT_SOSIM_NAME}
    Sleep    10
    
Enter Information To View Result
    [Documentation]    Enter Information To View Result
    ${a}=     Create List           0367981080
     ...     0395522764
     ...     0367657547
    log      ${a}

    Click Element                ${INPUT_GIOITINH_NU_XPATH}
    Select From List By Index    ${INPUT_GIOSINH_NAME}    8   
    Select From List By Value    ${INPUT_NGAY_SINH_NAME}   1    
    Select From List By Value    ${INPUT_THANG_SINH_NAME}   10     
    Select From List By Value    ${INPUT_NAM_SINH_NAME}   1966
       
    :FOR    ${i}    IN RANGE    0    312
    \    ${sim}=     Get From List    ${a}    ${i}
    \    Input Text    ${INPUT_SOSIM_NAME}    ${sim}        
    \    Click Button    ${BUTTON_XEM_KETQUA_ID}
    \    Sleep    5    
    \    Scroll Element Into View    ${LABEL_TONGDIEM_CLASS}
    \    ${diem} =     Get Text    ${LABEL_TONGDIEM_CLASS}
    \    Log    ${diem} 
    \    Set Global Variable    ${DIEM}    ${diem}
    \    Append To File         ${CURDIR}/Data/testdata.txt    ${sim}   
    \    Append To File         ${CURDIR}/Data/testdata.txt    :         
    \    Append To File         ${CURDIR}/Data/testdata.txt    ${diem}${\n}

    \    Scroll Element Into View    ${INPUT_SOSIM_NAME}
    