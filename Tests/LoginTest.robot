*** Setting ***
Resource        ../Keywords/LoginKeyword.robot

*** Test cases ***
User should able to login to Ezyhaul portal
    user launch browser     Chrome      https://demo-carrier.ezyhaul.com/login
    user select login as carrier
    user input username     670167389
    user input password     123456
    user click login button



