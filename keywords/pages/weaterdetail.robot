**Keywords**
Weater keep
    ${location}     Get text    //h1[@class='CurrentConditions--location--kyTeL']
    ${location}         Remove String   ${location}      Weather
    #log to console      ${location}  
    ${temp}         Get text    //span[@class='CurrentConditions--tempValue--3a50n']
    ${temp}         Remove String   ${temp}     °
    ${temp}=    Convert To Integer  ${temp}
    &{dict}     Create Dictionary   location=${location}    temp=${temp}
    [Return]    ${dict} 