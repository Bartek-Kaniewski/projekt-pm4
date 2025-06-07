# Projekt na ocenę celującą z PM4

## Opis projektu

Aplikacja internetowa stworzona w celu symulowania egzaminów zawodowych z kwalifikacji: **E12**, **E13**, **E14**, **EE08**, **EE09**. Projekt umożliwia losowe wyświetlanie pytań z bazy danych, wybór naszej odpowiedzi (A/B/C/D), sprawdzenie poprawności tej odpowiedzi oraz zliczanie punktów, pokazanie wyników na koniec, a także możliwość edytowania istniejących pytań i dodawania własnych – od wybranej kwalifikacji – zapisując wszystko w bazie danych z poziomu strony.

## Technologie

- HTML  
- CSS  
- PHP  
- MySQL (wymagana baza danych)

## Struktura plików

- `index.php` – strona główna zawierająca:
  - przyciski do wyboru kwalifikacji
  - formularz do **dodawania nowych pytań** oraz **edycji istniejących pytań**
- `e12.php`, `e13.php`, `e14.php`, `ee08.php`, `ee09.php` – strony z quizami z poszczególnych kwalifikacji. Każda z nich:
  - wyświetla pytania w losowej kolejności
  - umożliwia wybór odpowiedzi
  - podświetla poprawną i błędną odpowiedź
  - zlicza punkty i wyświetla je na koniec
- `pytania.sql` – gotowa baza danych z pytaniami i odpowiedziami do poszczególnych kwalifikacji

## Uwaga

Żeby przetestować projekt, trzeba samemu zhostować (np. za pomocą XAMPP) serwer i postawić bazę danych.

Bartłomiej Kaniewski 2G
