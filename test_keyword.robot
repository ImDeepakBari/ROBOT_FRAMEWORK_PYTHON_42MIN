*** Settings ***


*** Variables ***
${FIRSTNAME}        ImDeepak
${USER}             Sandeepbankira

@{LIST_ITEM}        ${True}     ${False}    Deepak      78  WhereIam    Now

&{DICT_DATA}        name=SandeepBankira     email=ImSandeep@gmail.com


*** Test Cases ***
Test case suing keyword
    Log My UserName
    Log List Item
    Log Email

Test case using chain Keyword
    Log UserName and Email


Test case using Keyword and Arguments
    Log UserName and Email With Arguments       ${FIRSTNAME}        ${DICT_DATA}[email]

Test case using Keyword and Arguments 2
    Log UserName and Email With Arguments       ${USER}        ${DICT_DATA}[email]



*** Keywords ***
Log My UserName
    Log To Console      My name is ${FIRSTNAME}

Log Email
    Log To Console      ${DICT_DATA}[email]

Log List Item
    Log To Console                 ${LIST_ITEM}


Log UserName and Email
    Log My UserName
    Log Email

Log UserName and Email With Arguments
    [Arguments]         ${Username}          ${Email}
    Log To Console          UserName is :${Username}
    Log To Console           ${Email}




