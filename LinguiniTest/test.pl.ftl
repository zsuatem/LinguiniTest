## Closing tabs

tabs-close-button = Zamknij
tabs-close-tooltip = {$tabCount ->
    [one] Zamknij kartę
    [few] Zamknij {$tabCount} karty
    *[many] Zamknij { $tabCount } kart
}
tabs-close-warning = {$tabCount ->
    [few] Zostaną zamknięte {$tabCount} karty.
          Czy chcesz kontynuować?
    *[many] Zostanie zamkniętych {$tabCount} kart.
           Czy chcesz kontynuować?
}

## Syncing

-sync-brand-name = {$case ->
    *[nominative] Konto Firefox
    [genitive] Konta Firefox
    [accusative] Kontem Firefox
}

sync-dialog-title = {-sync-brand-name}
sync-headline-title =
    {-sync-brand-name}: Najlepszy sposób na to,
        aby mieć swoje dane zawsze przy sobie
sync-signedout-title =
    Zaloguj do {-sync-brand-name(case: "genitive")}


## Test

## 1 Mianownik
## 2 Dopełniacz
## 3 Celownik
## 4 Biernik
## 5 Narzędnik
## 6 Miejscownik
## 7 Wołacz

## 1 nominative
## 2 genitive
## 3 dative
## 4 accusative
## 5 instrumental
## 6 locative
## 7 vocative

-brand-name = { $case ->
    *[nominative] Konto Firefox
    [genitive] Konta Firefox
    [accusative] Kontem Firefox
    [locative] Koncie Firefox
}

brand-name = { -brand-name(case: "nominative") }

signedout-title = Zaloguj się do { -brand-name(case: "genitive") }

about = Informacje o { -brand-name(case: $case) }.

messages = {$msgCount} wiadomości o { -brand-name(case: $case) }.