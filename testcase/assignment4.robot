** Settings **
Resource    ${CURDIR}/../import.robot

Suite Setup             
Suite Teardown    Close Browser
Test Setup        Start Video Recording     name=${TEST NAME}
Test Teardown     Stop All Video Recordings

** Test Cases **
TC_WEATER_001
    @{testdata}     Read Csv File To List       assignment_csv.csv
    ${list_length}  Get Length      ${testdata}
    @{temp_list}    Create List    
    #log to console  ${list_length}      
    #log to console  ${testdata}
    Open Browser    https://weather.com/   gc 
    Select degree       '°C'  

    FOR     ${i}    IN RANGE    0       ${list_length}
    #log to console  @{testdata[${i}]}   
    ${loc}=     Select location     @{testdata[${i}]}       Thailand
    Wait Until Element Contains         //h1[@class='CurrentConditions--location--kyTeL']       ${loc} 
    &{x}    Weater keep    
    Append To List      ${temp_list}        ${x}
    END



    ${max}=         findinlist.find_max             ${temp_list}
    log to console      Max tempature is:
    log to console      ${max} 


    ${min}=         findinlist.find_min             ${temp_list}
    log to console      Minimum tempature is:
    log to console      ${min} 

    log to console      Order list :
    ${order_list}=  findinlist.order_list    ${temp_list}
    log to console      ${order_list}  
