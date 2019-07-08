### Instalare
- copiate fisierele intr-un director accesibil de catre webserver
- composer install
- run on server game.201907.sql
- setat in webserver */web* ca public folder 
- setate credentialele de DB in */config/db.php*

### Ce a mai ramas
- Partea cu uploadul fisierelor (si afisatul lor - fisierele sunt salvate pe disk, iar in db salvata doar calea/numele fisierului)
- In DB, la produse, camp de `created` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, care ar trebuie si afisat

### Subiect

Incearca in nu mai mult de trei ore sa acoperi cat mai mult din functionalitatile descrise mai jos:

2 tabele in baza de date, unul pentru "produs", altul pentru "producator".
In "producator" se vor stoca diversi producatori (Samsung, IBM etc.). Numele de producator trebuie sa fie unic in tabela.
In tabela de produse se vor gasi diverse produse. Fiecare inregistrare va avea, in plus fata de informatiile produsului, producatorul acestuia (cu referinta la tabela "producator").
nume produs (unic)
descriere
poza

Folosind framework-ul Yii2, implementeaza o pagina care va permite unui utilizator sa adauge un nou produs folosind un formular. Trebuie sa poata introduce denumirea produsului, descrierea, sa aleaga producatorul dintr-o lista cu producatori disponibili, sa adauge poza. La trimiterea formularului, produsul va fi adaugat in baza de date. Formularul trebuie sa afiseze erori de validare.
Sub formular trebuie afisata intr-un tabel lista de produse existente. Fiecare inregistrare va avea afisata: denumire, descriere, producator, data la care s-a creat inregistrarea, poza.
Adauga filtrare si sortare in tabel, dupa unul sau mai multe proprietati ale produsului.

La final, trimite dump-ul bazei de date si script-ul tau, eventual pasi pentru a configura aplicatia; script-ul va trebui sa ruleze fara erori.
