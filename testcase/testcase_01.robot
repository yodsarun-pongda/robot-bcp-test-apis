*** Settings ***
Resource    ../resources/settings.robot
Resource    ../resources/variables.robot
Resource    ../keyword/keywords.robot
Variables   ../resources/testdata/case_0001.yaml

*** Test Cases ***
CASE_00001 Test Get Customer By Ticket Id Should Be Success
    [Documentation]    To test Get customer information should be success
    Call Customer APIS Should Be Success    ${case_00001}[ticket_ids]