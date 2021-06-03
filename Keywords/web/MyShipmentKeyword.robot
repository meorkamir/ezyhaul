*** Setting ***
Resource        ${EXECDIR}/Keywords/web/Main.robot
Variables       ${EXECDIR}/Locators/web/MyShipmentPage.py

*** Keyword ***
wait until My Shipment page loaded
    wait until element is visible       ${btn_refresh}      ${TIMEOUT}

search by using order no
    [Arguments]     ${orderNo}
    input text      ${txt_transportorder}       ${orderNo}
    press keys       ${txt_transportorder}   RETURN

# combine keyword
user search by using order no
    [Arguments]     ${orderNo}
    wait until My Shipment page loaded
    search by using order no        ${orderNo}