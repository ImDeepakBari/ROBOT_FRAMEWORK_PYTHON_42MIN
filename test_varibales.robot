*** Settings ***
Documentation       This is testing for variables in robot framework


*** Variables ***
${FIRSTNAME}         Deepak
${LASTNAME}          Bari

@{INT_LIST_ITEM}       23      45      7       78      89
@{LIST_ALL_DATATYPES}   ${true}    ImDeepak     Bari    78      786

&{DICT_ITEM}        userName=ImDeepakBari       pwd=@lteryX9678


*** Test Cases ***
Test variables
    [Tags]      smoke
    Log         This is test case for checking variables
    Log To Console         My name is: ${FIRSTNAME} ${LASTNAME}
    Log To Console      ${INT_LIST_ITEM}
    Log To Console      ${LIST_ALL_DATATYPES}
    Log To Console      Accessing list Item using index below:
    Log To Console      ${LIST_ALL_DATATYPES}[3]

    Log To Console      Accessing Dictionary values using key
    Log To Console      ${DICT_ITEM}[userName]
    Log To Console      ${DICT_ITEM}[pwd]

