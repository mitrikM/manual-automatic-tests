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
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Wait Until Element Is Visible  //div[@class='sc-ng7tk1-3 enBVfL']//button[@type='button'][contains(text(),'Prejsť k pokladni')]
    Element Should Be Visible  //span[@class='sc-63k7af-3 jRWVFW']
    Close Browser

TC_002
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Login
    Sleep  5s
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Wait Until Element Is Visible  //div[@class='sc-ng7tk1-3 enBVfL']//button[@type='button'][contains(text(),'Prejsť k pokladni')]
    Click Element  //div[@class='sc-mmn4od-3 jZnxqL']
    Wait Until Element Is Visible  //a[@class='userIcon--zdWV7']
    Mouse Over  //a[@class='userIcon--zdWV7']
    Wait Until Element Is Visible  //button[@aria-label='Odhlásiť sa']
    Click Element  //button[@aria-label='Odhlásiť sa']
    Sleep  5s
    Mouse Over  //a[@class='basketIcon--lefgx']
    Element Should Be Visible  //*[@id="react-root"]/div[2]/header/div/div[1]/div[3]/ul/li[5]/div/div/div[1]/span
    Close Browser

TC_003
    Otevri browser a stranku a zkontroluj  ${URL}
    Element Should Be Visible  //a[@class='basketIcon--lefgx']
    Mouse Over  //a[@class='basketIcon--lefgx']
    Element Should Be Visible  //*[@id="react-root"]/div[2]/header/div/div[1]/div[3]/ul/li[5]/div/div/div[1]/span
    Login
    Sleep  5s
    Element Should Be Visible  //a[@class='basketIcon--lefgx link--Hq3QD isSaleAmountBadge--_AJJJ']
    Mouse Over  //a[@class='basketIcon--lefgx link--Hq3QD isSaleAmountBadge--_AJJJ']
    Element Should Be Visible  //button[contains(text(),'Prejsť k pokladni')]
    Close Browser

TC_004
    Otevri browser a stranku a zkontroluj  ${URL}
    Login
    Sleep  5s
    Element Should Be Visible  //a[@class='basketIcon--lefgx link--Hq3QD isSaleAmountBadge--_AJJJ']
    Mouse Over  //a[@class='basketIcon--lefgx link--Hq3QD isSaleAmountBadge--_AJJJ']
    Click Element  //a[@class='sc-1cvy4q8-0 sc-1jwhlec-4 gpXCxO kDZRZq']
    Wait Until Element Is Visible  //button[contains(text(),'Vymazať')]
    Click Element  //button[contains(text(),'Vymazať')]
    Wait Until Element Is Visible  //div[@class='sc-fmv7mx-2 gHMFow']//*[name()='svg']
    Element Should Be Visible  //div[@class='sc-fmv7mx-2 gHMFow']//*[name()='svg']
    Close Browser


TC_005
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']//div[@class='sc-122ag38-1 jgtUPf']
    Click Element  //button[@aria-label='[object Object]']//div[@class='sc-122ag38-1 jgtUPf']
    Sleep  1s
    Wait Until Element Is Visible  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[1]/div[1]/div[1]
    Element Should Be Visible  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[1]/div[1]/div[1]
    Close Browser

TC_006
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    
    Wait Until Element Is Visible  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Click Element  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Wait Until Element Is Visible  //span[@class='openerInner--BaqBO customOpenInner']
    Click Element  //span[@class='openerInner--BaqBO customOpenInner']
    Wait Until Element Is Visible  //div[@class='dropdownItem--_dZkU'][normalize-space()='2']
    Click Element  //div[@class='dropdownItem--_dZkU'][normalize-space()='2']
    Wait Until Element Is Visible  //div[@class='sc-16u3oe3-2 geaEOj']
    Element Should Be Visible  //div[@class='sc-16u3oe3-2 geaEOj']
    Close Browser

TC_007
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Login
    Sleep  5s
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Wait Until Element Is Visible  //div[@class='sc-mmn4od-3 jZnxqL']
    Click Element  //div[@class='sc-mmn4od-3 jZnxqL']
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Wait Until Element Is Visible  //div[@class='sc-ng7tk1-3 enBVfL']//button[@type='button'][contains(text(),'Prejsť k pokladni')]
    Element Should Be Visible  //div[@class='sc-ng7tk1-3 enBVfL']//button[@type='button'][contains(text(),'Prejsť k pokladni')]
    Click Element  //span[@class='sc-63k7af-2 kPccyw']
    Close Browser

TC_008
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Login
    Sleep  5s
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Sleep  2s
    Wait Until Element Is Visible  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Click Element  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Wait Until Element Is Visible  //button[contains(text(),'Objednať s povinnosťou platby')]
    Click Element  //button[contains(text(),'Objednať s povinnosťou platby')]
    Sleep  5s
    Wait Until Element Is Visible  //a[normalize-space()='Tvoje údaje']
    Element Should Be Visible  //a[normalize-space()='Tvoje údaje']
    Close Browser

TC_009
    Otevri browser a stranku a zkontroluj  https://www.aboutyou.sk/p/jack-jones/boxerky-oliver-4373414
    Login
    Sleep  5s
    Wait Until Element Is Visible  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //span[@class='sc-2qclq4-0 sc-3xrapk-2 jxDJAr jTKFih']
    Click Element  //body/main[@id='react-root']/div[@class='sc-12pn4qb-0 iOtXpG']/div[@class='sc-ce562w-0 hhbgqW']/section[@class='sc-kygozv-0 sc-9cb3ns-2 grTZlH hBHcqI sc-1jxh1tn-9 OTmeV']/div[@class='sc-9cb3ns-1 havmjQ']/div[@class='sc-1jxh1tn-1 bZTATY']/div/div[@class='sc-1jxh1tn-3 kMDBSi']/section[@class='sc-1jxh1tn-7 dZjzxA']/div[@class='aysa-size-selection']/div[@class='sc-1abwf7p-0 hxbZJC sc-1jxh1tn-2 gAltoT']/div[@class='sc-1abwf7p-1 ezanCp']/ul[@class='sc-106ixz4-2 eqmFmD sc-1mn89lb-1 kDVhIK']/li[3]/div[1]/div[1]
    Wait Until Element Is Visible  //button[@aria-label='[object Object]']
    Click Element  //button[@aria-label='[object Object]']
    Sleep  2s
    Wait Until Element Is Visible  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Click Element  //a[@class='sc-1cvy4q8-0 sc-ng7tk1-5 gpXCxO kamwiJ']
    Wait Until Element Is Visible  //button[contains(text(),'Objednať s povinnosťou platby')]
    Click Element  //a[normalize-space()='JACK & JONES']
    Wait Until Element Is Visible  //img[@alt='JACK & JONES']
    Element Should Be Visible  //img[@alt='JACK & JONES']
    Close Browser
    