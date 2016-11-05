*** Settings ***
Library     Selenium2Library   15

*** Test Cases ***
Search Google
    Open Browser    http://google.com       chrome      none     http://172.17.0.2:4444/wd/hub
    Input Text      name=q    github skrymer
    Click Button    name=btnG
    Wait Until Page Contains    skrymer
    Close Browser
