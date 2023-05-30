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
  
    
***Variables***
${URL}  https://www.aboutyou.sk/tvoj-obchod

*** Test Cases ***

TC_001
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Wait Until Element Is Visible  //span[@class='sc-t6bp6s-3 figUyy']
    Click Element  //span[@class='sc-t6bp6s-3 figUyy']
    Wait Until Element Is Visible  //button[@class='button bigArrow left']
    Element Should Be Visible  //button[@class='button bigArrow left']
    Close Browser

TC_002
    Otevri browser a stranku a zkontroluj  ${URL}
    Wait Until Element Is Visible  //span[@data-test-id='Label_Šport']
    Mouse Over  //span[@data-test-id='Label_Šport']
    Element Should Be Visible  //a[contains(text(),'Športové nohavice')]
    Close Browser

TC_004
    Otevri browser a stranku a zkontroluj  ${URL}
    Wait Until Element Is Visible  //div[@class='sc-1vmwe9m-2 ioSYPe']
    Click Element  //div[@class='sc-1vmwe9m-2 ioSYPe']
    Wait Until Element Is Visible  //div[@class='sc-1ye2c1d-0 yQqzq']
    Click Element  //div[@class='sc-1ye2c1d-0 yQqzq']
    Wait Until Element Is Visible  //span[normalize-space()='Belgicko']
    Click Element  //span[normalize-space()='Belgicko']
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-1fiarj7-5 dUuUMX ioxNdx']
    Element Should Be Visible  //span[@class='sc-2qclq4-0 sc-1fiarj7-5 dUuUMX ioxNdx']
    Close Browser
    

TC_005
    Otevri browser a stranku a zkontroluj  ${URL}
    Wait Until Element Is Visible  //button[@class='sc-eqdo26-1 nEqzo']//*[name()='svg']
    Click Element  //button[@class='sc-eqdo26-1 nEqzo']//*[name()='svg']
    Click Element  //input[@placeholder='Hľadať podľa značiek, položiek a ďalších kritérií…']
    Input Text  //input[@placeholder='Hľadať podľa značiek, položiek a ďalších kritérií…']  Tričká
    Sleep  1s
    Wait Until Element Is Visible  //div[@title='Ženy > Oblečenie > Tričká & topy > Tričká']
    Click Element  //div[@title='Ženy > Oblečenie > Tričká & topy > Tričká']
    Wait Until Element Is Visible  //div[@class='sc-12e6agm-1 dexjuG']
    Element Should Be Visible  //div[@class='sc-12e6agm-1 dexjuG']
    Close Browser









