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
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//span[contains(text(),'Pomoc & kontakt')]
    Switch Window    new
    Location Should Be    https://www.aboutyou.sk/h
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//span[contains(text(),'Partnerský program')]
    Switch Window    new
    Sleep    5s
    Page Should Contain Element    xpath://body/div[@id='whole-page']/div[1]/div[1]/div[1]/div[2]/div[1]/div[1]/a[1]
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//span[contains(text(),'Oblasť doručenia')]
    Switch Window    new
    Location Should Be    https://www.aboutyou.sk/vseobecne-obchodne-podmienky
    Capture Page Screenshot
    Close Browser

TC_004
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//span[contains(text(),'Tvoje dáta sú u nás v bezpečí')]
    Switch Window    new
    Location Should Be    https://www.rapidssl.com/
    Capture Page Screenshot
    Close Browser