***Settings***
Library  SeleniumLibrary
***Keywords***
Otevri browser a stranku a zkontroluj
    [Arguments]  ${URL}
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Location Should Be  ${URL}
    Wait Until Element Is Visible  //button[@id='onetrust-accept-btn-handler']
    Click Element  //button[@id='onetrust-accept-btn-handler']
    
***Variables***
${URL}  https://www.aboutyou.sk/tvoj-obchod


***Test Cases***
TC_001
    Otevri browser a stranku a zkontroluj  ${URL}
    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //input[@name='email']
    Input Text  //input[@name='email']  utb.ap4ts@gmail.com
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  123456
    Click Element  //button[@type='submit']
    Sleep  7s
    Mouse Over  //a[@class='userIcon--zdWV7']
    Wait Until Element Is Visible  //button[@aria-label='Odhlásiť sa']
    Element Should Be Visible  //button[@aria-label='Odhlásiť sa']
    Close Browser



TC_005
    Otevri browser a stranku a zkontroluj  ${URL}
    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 sc-3ffazj-2 dMHBmb erJZvc']
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  123
    Click Element  //button[@type='submit']
    Element Should Be Visible  //span[contains(text(),'Heslo musí mať 6 až 20 znakov')]
    Close Browser


TC_007
    Otevri browser a stranku a zkontroluj  ${URL}
    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //input[@name='email']
    Input Text  //input[@name='email']  asdf@gmail.com
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  142356
    Click Element  //button[@type='submit']
    Wait Until Element Is Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Element Should Be Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Close Browser

TC_008
    Otevri browser a stranku a zkontroluj  ${URL}
    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //input[@name='email']
    Input Text  //input[@name='email']  utb.ap4ts@gmail.com
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  142356
    Click Element  //button[@type='submit']
    Wait Until Element Is Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Element Should Be Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Close Browser

TC_009
    Otevri browser a stranku a zkontroluj  ${URL}
    Mouse Over  //a[@class='userIcon--zdWV7']
    Click Element  //button[@aria-label='Prihlásiť sa']
    Wait Until Element Is Visible  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //div[@class='sc-3ffazj-1 dMHBmb']
    Click Element  //input[@name='email']
    Input Text  //input[@name='email']  utb.ap4tsss@gmail.com
    Click Element  //input[@name='password']
    Input Text  //input[@name='password']  123456
    Click Element  //button[@type='submit']
    Wait Until Element Is Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Element Should Be Visible  //div[@class='sc-ovefx6-6 gCMsSs']
    Close Browser