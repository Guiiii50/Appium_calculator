*** Settings ***
Library           AppiumLibrary

Resource      ../Resources/variables.robot

*** Keywords ***
I Open Calculator
    Open Application    ${REMOTE_URL}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}

I wait for the calculator to open
    Sleep    3s
I addition 9 + 1
    Click Element    com.google.android.calculator:id/digit_9
    Click Element    com.google.android.calculator:id/op_add
    Click Element    com.google.android.calculator:id/digit_1
    Click Element    com.google.android.calculator:id/eq
    

The result should be 10
    ${result}=    Get Text    com.google.android.calculator:id/result_final
    Should Be Equal As Strings    ${result}    10
    Log To Console    Le resultat affiché est : ${result}