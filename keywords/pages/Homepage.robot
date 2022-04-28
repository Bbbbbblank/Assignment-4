**Keywords**
Select location
    [Arguments]     ${postcode}     ${country}
    Sleep   5
    #ตรงนี้ ไม่รู้ว่าจะ wait ตรงไหนฮะ
    Click Element                       //input[@id='LocationSearch_input']
    Input text                          //input[@id='LocationSearch_input']     ${postcode}
    Wait Until Element Is Visible       //div[contains(text(),'No results found')]
    Wait Until Element Is Visible       //button[contains(text(),'${country}')]
    ${text}      Get Text                            //button[contains(text(),'${country}')]
    log to console  ${text}                  
    Click Element                      //button[contains(text(),'${country}')]
    [Return]    ${text}       

Select degree
    [Arguments]     ${degree}
    Wait Until Element Is Visible      //h2[contains(text(),'Sponsored Content')]   10
    Wait Until Element Is Visible       //span[@class='LanguageSelector--unitDisplay--23xY5']
    Click Element           //span[@class='LanguageSelector--unitDisplay--23xY5']
    Click Element           //span[contains(text(),${degree})]


Setup chromedriver
  Set Environment Variable  webdriver.chrome.driver  ${CURDIR}../bin/chromedriver 


