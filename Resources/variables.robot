*** Settings ***
Library           AppiumLibrary
*** Variables ***
# Definition des capabilities
${REMOTE_URL}    http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    15
${DEVICE_NAME}    emulator-5554
${APP_PACKAGE}    com.google.android.calculator
${APP_ACTIVITY}    com.android.calculator2.Calculator
${AUTOMATION_NAME}    UiAutomator2

