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

${URL}  https://www.aboutyou.sk/znacka?category=20202#hladat-znacku
${Browser}  Chrome

*** Test Cases ***

TC_001
    Otevri Browser A Stranku A Zkontroluj
    Input Text    xpath=//body/main[@id='react-root']/div[2]/div[3]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]  adidas
    Press Keys   xpath=//body/main[@id='react-root']/div[2]/div[3]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]      \ue007
    Wait Until Location Is    https://www.aboutyou.sk/about/brand/adidas-originals?cluster=true&category=20202&is_s=none&is_h=gz&term=adidas
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Input Text    xpath=//body/main[@id='react-root']/div[2]/div[3]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]  lsahjfd
    Press Keys   xpath=//body/main[@id='react-root']/div[2]/div[3]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/input[1]      \ue007
    Wait Until Location Is    https://www.aboutyou.sk/hladanie?term=lsahjfd&gender=male&is_s=typein&is_h=srp&source=typein
    Page Should Contain Element    xpath=//div[contains(text(),'Bohužiaľ, nenašli sme žiadne výsledky pre"lsahjfd"')]
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//body/main[@id='react-root']/div[2]/div[3]/div[1]/div[2]/div[3]/div[1]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[3]/a[1]/span[1]
    Sleep    1s
    Element Should Be Visible    xpath=//span[contains(text(),'Barts')]
    Element Should Be Visible    xpath=//span[contains(text(),'bahé yoga')]
    Element Should Be Visible    xpath=//span[contains(text(),'BRUNOTTI')]
    Capture Page Screenshot
    Close Browser
