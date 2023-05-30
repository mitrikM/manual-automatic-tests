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
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Input Text    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]   psoaddhufiiuh
    Press Keys   xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]      \ue007
    Wait Until Page Contains Element    //div[contains(text(),'Bohužiaľ, nenašli sme žiadne výsledky pre"psoaddhu')]
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Input Text    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]   tri
    Wait Until Page Contains Element    xpath=//div[contains(text(),'Gina Tricot')]
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Input Text    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]   tričká
    Wait Until Page Contains Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[2]/div[1]/div[1]
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/div[2]/div[1]/div[3]/div[2]/div[2]/div[1]/div[1]
    Location Should Be    https://www.aboutyou.sk/p/triumph/tricka-na-spanie-7918385
    Capture Page Screenshot
    Close Browser

TC_004
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Input Text    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]   psoaddhufiiuh
    Press Keys   xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]      \ue007
    Wait Until Page Contains Element    //div[contains(text(),'Bohužiaľ, nenašli sme žiadne výsledky pre"psoaddhu')]
    Click Element    xpath=//header/div[1]/div[1]/div[2]/span[1]/a[1]/span[1]
    Wait Until Page Contains Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Wait Until Page Contains Element    xpath=//div[contains(text(),'psoaddhufiiuh')]
    Capture Page Screenshot
    Close Browser

TC_005
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[1]/*[1]
    Input Text    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/input[1]   ôasldfjkhgnblyksjdfghb
    Click Element    xpath=//header/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/form[1]/button[2]/*[1]
    Page Should Not Contain Element    xpath://div[contains(text(),'ôasldfjkhgnblyksjdfghb')]
    Capture Page Screenshot
    Close Browser