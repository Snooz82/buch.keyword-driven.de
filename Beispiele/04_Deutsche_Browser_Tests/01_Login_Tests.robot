language: de
*** Einstellungen ***
Bibliothek      Browser


*** Testfälle ***
Anmelden mit korrekten Daten
    New Browser    headless=False
    New Context
    New Page    http://car.keyword-driven.de
    Type Text    id=input_username    buch
    Type Text    id=input_password    keyword-driven
    Click    id=button_login
    Get Title    ==    CarConfigurator
    Get Url    ==    http://car.keyword-driven.de/list
