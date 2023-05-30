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
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[1]/img[1]
    Switch Window    new
    Location Should Be    https://www.facebook.com/aboutyoude
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[2]/img[1]
    Switch Window    new
    Location Should Be    https://www.instagram.com/aboutyou_cz_sk/
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[3]/img[1]
    Switch Window    new
    Location Should Be    https://twitter.com/aboutyou_com
    Capture Page Screenshot
    Close Browser

TC_004
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[4]/img[1]
    Switch Window    new
    Location Should Be    https://consent.youtube.com/m?continue=https%3A%2F%2Fwww.youtube.com%2Fchannel%2FUCBXVazjXMJjPqvj1RPi-9Rg%3Fcbrd%3D1&gl=SK&m=0&pc=yt&uxe=eomty&hl=sk&src=1
    Capture Page Screenshot
    Close Browser

TC_005
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[5]/img[1]
    Switch Window    new
    Location Should Be    https://sk.pinterest.com/aboutyoude/
    Capture Page Screenshot
    Close Browser

TC_006
    Otevri Browser A Stranku A Zkontroluj
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Press Keys   xpath=//body        \ue00f
    Click Element    xpath=//body/main[@id='react-root']/div[3]/div[2]/div[7]/div[1]/div[1]/div[3]/div[1]/a[6]/img[1]
    Switch Window    new
    Location Should Be    https://www.tiktok.com/@aboutyoude
    Capture Page Screenshot
    Close Browser