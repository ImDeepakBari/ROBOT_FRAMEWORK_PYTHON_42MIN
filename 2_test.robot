*** Settings ***
Library         OperatingSystem

*** Variables ***
${PATH}         ${CURDIR}/os.txt

*** Test Cases ***
This Is My Second Test Case For Robot Framework
    Log To Console      Test Case for checking keyword related with OperatingSystem

    Create File         ${PATH}         This is my OperatingSystem Test case
    File Should Exist   ${PATH}
    File Should Not Be Empty    ${CURDIR}/os.txt
