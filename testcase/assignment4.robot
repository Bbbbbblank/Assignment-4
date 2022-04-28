** Settings **
Resource    ${CURDIR}/../import.robot

Suite Setup                
Suite Teardown    Close Browser
Test Setup        Start Video Recording     name=${TEST NAME}
Test Teardown     Stop All Video Recordings

** Test Cases **
TC_WEATER_001
    @{testdata}     Read Csv File To List       ${CURDIR}/assignment_csv.csv
    ${list_length}  Get Length      ${testdata}
    @{temp_list}    Create List    
    #log to console  ${list_length}      
    #log to console  ${testdata}
    Open Browser    https://weather.com/   safari 

TC_WEATER_002

    Open Browser    https://weather.com/   chrome

