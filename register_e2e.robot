*** Settings ***
Documentation       Test Case for opening ecommerce application
Resource             ../resources/e-commerce-registerpage.robot
# Test Template          Run The Test Cases
Test Setup             Login Ecommerce Website
Test Teardown          Close Browser


*** Test Cases ***
Login Standard Test User
        Log To Console      Test case started
        Log To Console      Test Case Ended!!