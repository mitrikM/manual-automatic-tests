***Settings***
Library  SeleniumLibrary
Library  RequestsLibrary
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
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[contains(text(),'Veľkosť')]
    Click Element  //span[contains(text(),'Veľkosť')]
    Wait Until Element Is Visible  //button[normalize-space()='L']
    Click Element  //button[normalize-space()='L']
    Wait Until Element Is Visible  //a[@aria-label='L link']
    Element Should Be Visible  //a[@aria-label='L link']
    Close Browser

TC_002
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[normalize-space()='Farba']
    Click Element  //span[normalize-space()='Farba']
    Wait Until Element Is Visible  //body/main/div/div/section[@data-testid='splitView']/div[@data-testid='sectionEnd']/div[@data-testid='FilterBar']/div/section[@data-testid='filterDropdownColor']/div[@data-testid='dropdown']/div[@data-testid='body']/div/div[@data-testid='filterDropdownContent']/div/div[@data-testid='filterDropdownSectionColor']/label[1]/span[1]
    Click Element  //body/main/div/div/section[@data-testid='splitView']/div[@data-testid='sectionEnd']/div[@data-testid='FilterBar']/div/section[@data-testid='filterDropdownColor']/div[@data-testid='dropdown']/div[@data-testid='body']/div/div[@data-testid='filterDropdownContent']/div/div[@data-testid='filterDropdownSectionColor']/label[1]/span[1]
    Wait Until Element Is Visible  //a[@aria-label='Modrá link']
    Element Should Be Visible  //a[@aria-label='Modrá link']
    Close Browser

TC_003
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[contains(text(),'Značka')]
    Click Element  //span[contains(text(),'Značka')]
    Wait Until Element Is Visible  //input[@placeholder=' ']
    Click Element  //input[@placeholder=' ']
    Input Text  //input[@placeholder=' ']  4
    Wait Until Element Is Visible  //label[@class='sc-5hgxzv-0 kozUlE sc-e431ck-3 knocDW']
    Click Element  //label[@class='sc-5hgxzv-0 kozUlE sc-e431ck-3 knocDW']
    Click Element  //div[@class='sc-12e6agm-0 gwDGZJ sc-75p5i1-0 ceHrYk']
    Wait Until Element Is Visible  //a[@aria-label='4F link']
    Element Should Be Visible  //a[@aria-label='4F link']
    Close Browser

TC_004
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[normalize-space()='Cena']
    Click Element  //span[normalize-space()='Cena']
    Wait Until Element Is Visible  //div[@data-testid='Start']
    Element Should Be Visible  //div[@data-testid='Start']
    Element Should Be Visible  //div[@data-testid='End']
    Close Browser

TC_005
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //label[@class='sc-rxaslt-1 ePuDCE']
    Click Element  //label[@class='sc-rxaslt-1 ePuDCE']
    Element Should Be Enabled  //input[@class='sc-1m0aw8i-2 fhdMlu']
    Close Browser

TC_006
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //label[@class='sc-rxaslt-1 ePuDCE']
    Click Element  //label[@class='sc-rxaslt-1 ePuDCE']
    Element Should Be Enabled  //input[@class='sc-1m0aw8i-2 fhdMlu']
    Click Element  //button[@class='sc-vtiwso-0 cfbGmv sc-figrip-0 jvyhsd']
    Sleep  2s
    Page Should Not Contain Button  //button[@class='sc-vtiwso-0 cfbGmv sc-figrip-0 jvyhsd']
    Close Browser


TC_007
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[normalize-space()='Triedenie']
    Click Element  //span[normalize-space()='Triedenie']
    Wait Until Element Is Visible  //div[@data-testid='sortingOptionsDropdown-price_low']
    Click Element  //div[@data-testid='sortingOptionsDropdown-price_low']
    Create Session  check URL adress  https://www.aboutyou.sk
    ${response}=  Get Request  check URL adress  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324?sort=price_low
    ${statusCode}=  Convert To String  ${response.status_code}
    Should Be Equal  ${statusCode}  200
    Log To Console  ${response.status_code}

    Close Browser


TC_008
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/c/muzi/oblecenie/tricka-20324
    Wait Until Element Is Visible  //span[contains(text(),'Zobraziť')]
    Click Element  //span[contains(text(),'Zobraziť')]
    Wait Until Element Is Visible  //div[@class='sc-1hijt0p-1 bjeDWu']

    Close Browser




