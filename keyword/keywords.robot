*** Settings ***
Resource    ../resources/settings.robot

*** Keywords ***
Call Customer APIS Should Be Success
    [Arguments]    ${ticket_ids}
    ${headers}       Create Dictionary    Content-Type    application/json    x-access-key      FjkwMX4GbdUqmAYwWhdhpxCRJf73eHV
    FOR    ${index}    ${element}    IN ENUMERATE    @{ticket_ids}
        ${url}=    Set Variable    https://api.baanchangphab.online/api/v1/customer/${element}
        ${response}=    GET    url=${url}    headers=${headers}
        Response Status should be Success    ${response}
    END

Response Status should be Success
    [Arguments]    ${resp}
    Should Be Equal As Strings    ${resp.status_code}    200
    Log    Response Status is ${resp.status_code}