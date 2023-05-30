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
    Click Element    xpath=//span[contains(text(),'Oblečenie')]
    Wait Until Location Is    https://www.aboutyou.sk/c/zeny/oblecenie-20204
    Capture Page Screenshot
    Close Browser

TC_002
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Muži')]
    Wait Until Location Is    https://www.aboutyou.sk/?gender=male
    Mouse Over    xpath=//span[contains(text(),'Oblečenie')]
    Wait Until Element Is Visible    xpath=//header/div[1]/div[2]/ul[1]/li[2]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[3]/span[1]/a[1]
    Click Element    xpath=//header/div[1]/div[2]/ul[1]/li[2]/div[1]/div[1]/div[1]/div[2]/ul[1]/li[3]/span[1]/a[1]
    Wait Until Location Is    https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Capture Page Screenshot
    Close Browser

TC_003
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Muži')]
    Wait Until Location Is    https://www.aboutyou.sk/?gender=male
    Mouse Over    xpath=//span[contains(text(),'Oblečenie')]
    Wait Until Element Is Visible    xpath=//header/div[1]/div[2]/ul[1]/li[2]/div[1]/div[1]/div[3]/a[2]/img[1]
    Click Element    xpath=//header/div[1]/div[2]/ul[1]/li[2]/div[1]/div[1]/div[3]/a[2]/img[1]
    Wait Until Location Is    https://www.aboutyou.sk/about/brand/tommy-hilfiger?category=20290&cluster=true
    Capture Page Screenshot
    Close Browser

TC_004
    Otevri Browser A Stranku A Zkontroluj
    Click Element    xpath=//span[contains(text(),'Muži')]
    Wait Until Location Is    https://www.aboutyou.sk/?gender=male
    Sleep    1s
    Click Element    xpath=//header/div[1]/div[2]/ul[1]/li[2]/a[1]/span[1]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Tričká')]
    Click Element    xpath=//span[contains(text(),'Tričká')]
    Wait Until Element Is Visible    xpath=//span[contains(text(),'Tričká s dlhým rukávom')]
    Click Element    xpath=//span[contains(text(),'Tričká s dlhým rukávom')]
    Location Should Be    https://www.aboutyou.sk/c/muzi/oblecenie/tricka/tricka-s-dlhym-rukavom-20955
    Capture Page Screenshot
    Close Browser