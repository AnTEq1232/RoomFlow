# RoomFlow

# 🏢 RoomFlow

**RoomFlow** to prosty system zarządzania pokojami i sprzętem, który umożliwia rezerwację pomieszczeń oraz monitorowanie dostępności wyposażenia.
Projekt został stworzony w celach edukacyjnych — jako praktyczne połączenie technologii **HTML, CSS, JavaScript, PHP i SQL** w jednym, pełnym projekcie fullstack.

---

## 🚀 Funkcjonalności

* 🏠 **Zarządzanie pokojami**

  * Dodawanie, edytowanie i usuwanie pokoi.
  * Przeglądanie listy pokoi z podstawowymi informacjami (np. nazwa, pojemność, typ).

* 💻 **Zarządzanie sprzętem**

  * Dodawanie sprzętu przypisanego do pokoju.
  * Oznaczanie sprzętu jako „niesprawny”.
  * Przeglądanie sprzętu dostępnego w danym pokoju.

* 📅 **Rezerwacje**

  * Rezerwacja pokoju przez użytkownika na określony dzień i godzinę.
  * Walidacja konfliktów — brak możliwości podwójnej rezerwacji.
  * Przeglądanie listy aktualnych i przyszłych rezerwacji.

* 👤 **Użytkownicy**

  * Logowanie i role (administrator / użytkownik).
  * Administrator może dodawać pokoje i sprzęt.
  * Użytkownicy mogą tworzyć rezerwacje.

---

## 🧩 Technologie

| Warstwa     | Technologia | Zastosowanie                                             |
| ----------- | ----------- | -------------------------------------------------------- |
| Frontend    | HTML, CSS   | Struktura i styl strony                                  |
| Frontend    | JavaScript  | Walidacja danych, dynamiczne elementy                    |
| Backend     | PHP         | Obsługa logiki aplikacji, komunikacja z bazą             |
| Baza danych | MySQL       | Przechowywanie danych o pokojach, sprzęcie, rezerwacjach |

---

## 🗂️ Struktura projektu

```
RoomFlow/
│
├── index.php           # Strona główna z listą pokoi
├── add_room.php        # Formularz dodawania nowego pokoju
├── add_equipment.php   # Formularz dodawania sprzętu
├── reserve.php         # Formularz rezerwacji
├── db.php              # Połączenie z bazą danych
├── style.css           # Stylizacja interfejsu
└── script.js           # Walidacja i interakcje na stronie
```

---

## ⚙️ Instalacja i uruchomienie

1. Sklonuj repozytorium:

   ```
   git clone https://github.com/twoj-login/RoomFlow.git
   ```
2. Skopiuj projekt do folderu serwera lokalnego (np. `htdocs` w XAMPP).
3. Utwórz bazę danych i zaimportuj plik `roomflow.sql`.
4. Skonfiguruj dane dostępowe w pliku `db.php`.
5. Uruchom projekt w przeglądarce:

   ```
   http://localhost/RoomFlow
   ```

---

## 📚 Cel projektu

Projekt został stworzony w celu nauki integracji frontendu i backendu oraz zrozumienia pełnego przepływu danych pomiędzy użytkownikiem, aplikacją i bazą danych.
RoomFlow może służyć jako baza do dalszego rozwoju — np. dodania autoryzacji, systemu powiadomień lub kalendarza rezerwacji.
