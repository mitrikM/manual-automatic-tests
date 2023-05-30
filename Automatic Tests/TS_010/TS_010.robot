*** Settings ***

Library  SeleniumLibrary

*** Keywords ***

Otevri browser a stranku a zkontroluj
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Location Should Be  ${URL}
    Wait Until Element Is Visible  //button[@id='onetrust-accept-btn-handler']
    Click Element  //button[@id='onetrust-accept-btn-handler']

Login
    [Arguments]

    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //input[@name='email']
    Input Text  //input[@name='email']  utb.ap4ts@gmail.com
    Sleep  1s
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  123456
    Click Element  //button[@type='submit']


*** Variables ***

${URL}  https://www.aboutyou.sk/tvoj-obchod
${Browser}  Chrome

*** Test Cases ***

TC_001
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Ženy')]
    Wait Until Location Is    https://www.aboutyou.sk/?gender=female
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Muži')]
    Wait Until Location Is    https://www.aboutyou.sk/?gender=male
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Deti')]
    Wait Until Location Is    https://www.aboutyou.sk/c/deti-138113
    Capture Page Screenshot
    Close Browser