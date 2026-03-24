*** Settings ***
Library     String
Library     OperatingSystem

*** Variables ***
${PATH}         ${CURDIR}/test_data.txt


*** Test Cases ***
Test Case To Create A Random String
    Log To Console      Started generating random string using String library in RobotFramework
    ${random_string} =  Generate Random String  10
    Log To Console      ${random_string}
    Create File         ${PATH}        Hello Deepak Welcome to Jungle
    File Should Exist   ${PATH}


    Log To Console      Generating Random String with length is success