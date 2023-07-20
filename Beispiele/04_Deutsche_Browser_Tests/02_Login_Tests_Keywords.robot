language: de
*** Einstellungen ***
Bibliothek      Browser


*** Testfälle ***
Anmeldung mit korrekten Daten und technischen Keywords
    CarConfig Öffnen
    Benutzername Setzen    buch
    Passwort Setzen    keyword-driven
    Anmelden Klicken
    Seitentitel und URL prüfen    CarConfigurator    list

Anmeldung mit funktionalen Keywords
    CarConfig Öffnen
    Benutzer Anmelden    buch    keyword-driven
    Anmeldung Prüfen

Abgewiesene Anmeldung mit funktionalen Keywords
    CarConfig Öffnen
    Benutzer Anmelden    buch    falsches Passwort
    Abgewiesene Anmeldung Prüfen

Anmeldung mit fachlichen Keywords
    CarConfig als Leser starten
    Seitentitel und URL prüfen    CarConfigurator    list


*** Schlüsselwörter ***
CarConfig als Leser starten
    [Marker]    business
    CarConfig Öffnen
    Benutzer Anmelden    buch    keyword-driven

Benutzer Anmelden
    [Marker]    functional
    [Argumente]    ${user}    ${pwd}
    Benutzername Setzen    ${user}
    Passwort Setzen    ${pwd}
    Anmelden Klicken

Benutzername Setzen
    [Dokumentation]     Setzt den Benutzernamen \${username} in das Benutzernameneingabefeld.
    [Marker]    technical
    [Argumente]    ${username}
    Type Text    id=input_username    ${username}

Passwort Setzen
    [Dokumentation]     Setzt das Passwort \${password} in das Passworteingabefeld.
    [Marker]    technical
    [Argumente]    ${password}
    Type Text    id=input_password    ${password}

Anmelden Klicken
    [Dokumentation]     Klickt auf den Anmelden-Button.
    [Marker]    technical
    Click    id=button_login

Anmeldung Prüfen
    [Marker]    technical
    Seitentitel und URL prüfen    CarConfigurator    list

Abgewiesene Anmeldung Prüfen
    [Marker]    technical
    Login Fehlermeldung Prüfen
    Seitentitel und URL prüfen    CarConfigurator    login

Login Fehlermeldung Prüfen
    [Marker]    technical
    Get Element States    simple-snack-bar.mat-simple-snackbar    contains    visible    message=Fehlermeldung nicht sichtbar.

Seitentitel und URL prüfen
    [Argumente]    ${Title}    ${url}
    Get Title    ==    ${Title}
    Get Url    $=    ${url}

CarConfig Öffnen
    New Browser    headless=False
    New Context
    New Page    http://car.keyword-driven.de
