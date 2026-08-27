# Projektintegrationsplan: Rechnungssystem

## Ziel

Das in [project_description.md](project_description.md) beschriebene Rechnungssystem begleitet die Studierenden durch das gesamte Semester. Jede Woche ergänzt einen fachlichen Baustein. In SW13 werden die Bausteine zu einer 3-Tier-Anwendung zusammengeführt.

Der Projektbezug soll in Unterricht, Übungen und Lösungen sichtbar sein, ohne die Einführung der Python-Grundlagen zu überladen. Beispiele verwenden deshalb schrittweise dieselben Kunden-, Artikel- und Rechnungsdaten.

## Wochenplan und Meilensteine

| SW/KW | Unterrichtsthema | Projektbezug und Meilenstein |
|---|---|---|
| 1 / 38 | Einführung, Grundbegriffe, 3-Tier-Systeme, Tools | Projekt vorstellen und die drei Schichten zuordnen: Daten (Kunden/Artikel), Businesslogik (Rechnungen) und Präsentation (Ausgabe). |
| 2 / 39 | Textverarbeitung, Datentypen, Funktionen | Rechnungsfelder modellieren. Die erste Funktion berechnet eine Positionssumme aus Anzahl und Einzelpreis. |
| 3 / 40 | If/Else, Bool, logische Operationen | Gültige Schweizer MWST-Sätze prüfen: 7,7 %, 3,7 %, 2,5 % und 0 %. |
| 4 / 41 | Schleifen | Rechnungspositionen durchlaufen und Zwischen-, MWST- und Endbeträge berechnen. |
| 5 / 42 | Kurztest 1, Datenbankzugriff, Pandas, Arrays/Listen | Kunden und Artikel in SQLite speichern, abrufen und mit Python/Pandas verarbeiten. |
| 6 / 43 | Eigene Funktionen definieren | Die Rechnungslogik in wiederverwendbare Funktionen aufteilen, zum Beispiel für MWST-Berechnung und Rechnungserstellung. |
| 7 / 44 | Fehlerbehandlung | Eingaben validieren und Fehler bei fehlenden Daten, ungültigen Preisen oder nicht erlaubten Steuersätzen verständlich behandeln. |
| 8 / 45 | Kurztest 2, Objektorientierung, Businessobjekte, ERD | Die Klassen `Kunde`, `Artikel`, `Rechnungsposition` und `Rechnung` entwerfen und mit einem ERD verknüpfen. |
| 9 / 46 | Tuples und Dictionaries | Eine Rechnung als verschachtelte Dictionary-Struktur analog zum JSON-Datenmodell der Projektbeschreibung abbilden. |
| 10 / 47 | Lambdas und Rekursion | Rechnungspositionen mit `lambda` sortieren; rekursive Summenberechnung als vertiefende Übung einsetzen. |
| 11 / 48 | Vererbung | Eine gemeinsame Rechnungsklasse erweitern, beispielsweise mit `Gutschrift` oder `Mahnrechnung`. |
| 12 / 49 | Comprehensions und String-Formatierung | Positionen filtern und eine übersichtliche, druckbare Rechnungsausgabe mit Comprehensions und f-Strings erzeugen. |
| 13 / 50 | Synthese: Entwicklung einer 3-Tier-Anwendung | Alle Bausteine integrieren: Datenbank, Geschäftslogik, Validierung und maschinen- sowie menschenlesbare Ausgabe. Projektabschluss und Abgabe. |
| 14 / 51 | Modulevaluation und Prüfungsvorbereitung | Projekte kurz präsentieren, Erfahrungen reflektieren und die Prüfungsrepetition mit den eigenen Projektbeispielen durchführen. |

## Konkrete Änderungen nach Semesterwoche

Die folgenden Änderungen sind in den jeweiligen Wochenmaterialien vorzunehmen. Jede Woche ergänzt bestehende Inhalte, Übungen und Lösungen; bereits eingeführte Projektartefakte werden weiterverwendet.

### SW1 / KW38 – Projekt und Architektur einführen

- In `01_Unterricht.ipynb` das Rechnungssystem als Semesterprojekt vorstellen und die Anforderungen aus der Projektbeschreibung auf die 3-Tier-Schichten verteilen.
- Ein einfaches Systemdiagramm mit Daten-, Business- und Präsentationsschicht ergänzen.
- In `02_Aufgaben.ipynb` die Studierenden Kunden, Artikel, Rechnungsposition und Rechnung als Fachbegriffe markieren und erste Anforderungen den Schichten zuordnen lassen.
- In `03_Lösungen.ipynb` eine Musterzuordnung sowie eine Checkliste der Projektanforderungen ergänzen.
- Ein Projektverzeichnis und ein verbindliches Namensschema für Notebooks, Daten und Ergebnisse vorgeben.

### SW2 / KW39 – Rechnungsdaten und erste Berechnung

- Beispiele zu Variablen und Datentypen auf Kundennummer, Artikelnummer, Anzahl, CHF-Preis und MWST-Satz umstellen.
- Eine Funktion `positionsgesamt(anzahl, einzelpreis)` einführen und die Rundung auf zwei Nachkommastellen thematisieren.
- Eine einfache Rechnungsposition als Dictionary erstellen, ohne bereits Klassen oder Datenbanken zu verwenden.
- Aufgaben ergänzen, in denen Studierende Felder typisieren, eine Positionssumme berechnen und fehlende Werte erkennen.
- Lösungen um die erwarteten Resultate und einen Beispiel-Datensatz erweitern.

### SW3 / KW40 – MWST-Regeln validieren

- Eine Konstante oder Liste der erlaubten Sätze `7.7`, `3.7`, `2.5` und `0.0` einführen.
- Eine Bool-Funktion `ist_gueltiger_steuersatz(satz)` mit `if`/`else` erklären.
- Projektbeispiele für steuerpflichtige und steuerbefreite Positionen ergänzen.
- Aufgaben für gültige/ungültige Sätze sowie für die Prüfung von Anzahl und Preis bereitstellen.
- Lösungen müssen auch Grenzfälle wie `0` und einen unbekannten Satz zeigen.

### SW4 / KW41 – Rechnungspositionen summieren

- Eine Liste mit mehreren Rechnungspositionen einführen und mit `for` durchlaufen.
- Die Berechnung von Zwischensumme, MWST-Betrag je Position und Endbetrag schrittweise aufbauen.
- Eine Aufgabe ergänzen, die eine Rechnung mit mindestens zwei unterschiedlichen MWST-Sätzen verarbeitet.
- Eine Tracing-Aufgabe aufnehmen, in der die Werte nach jeder Schleifeniteration notiert werden.
- Die Lösung so strukturieren, dass jede Zwischenvariable und jeder Rechenschritt nachvollziehbar ist.

### SW5 / KW42 – Stammdaten speichern und abrufen

- Die gemeinsame Beispieldatenbasis mit Kunden und Artikeln als CSV und SQLite-Schema bereitstellen.
- Im Unterrichtsnotebook Tabellen `kunden` und `artikel` anlegen und Datensätze mit `sqlite3` laden und abfragen.
- Den Standard-MWST-Satz und den Einzelpreis aus dem Artikelkatalog in eine Rechnung übernehmen.
- Aufgaben ergänzen: Kunde per ID suchen, Artikel filtern und eine Rechnung aus Datenbankwerten vorbereiten.
- Lösungen um SQL-Abfragen, erwartete Tabelleninhalte und eine kurze Prüfung auf fehlende IDs ergänzen.

### SW6 / KW43 – Rechnungslogik kapseln

- Die bisher verstreuten Berechnungen in klar benannte Funktionen aufteilen: `berechne_positionssumme`, `berechne_mwst` und `berechne_rechnung`.
- Für Funktionen Ein- und Ausgaben sowie die verwendeten Einheiten (CHF bzw. Prozent) dokumentieren.
- Aufgaben ergänzen, in denen Studierende die Funktionen mit Einzel- und Mehrpositionsrechnungen testen.
- Eine kleine Testtabelle mit Eingaben und erwarteten Ergebnissen in das Aufgaben- oder Lösungsnotebook aufnehmen.
- Lösungen müssen zeigen, dass mehrere Steuersätze getrennt ausgewiesen werden.

### SW7 / KW44 – Validierung und Fehlerbehandlung

- Eine zentrale Validierungsfunktion für Kunde, Artikel, Anzahl, Preis und MWST-Satz entwerfen.
- `try`/`except` nur für erwartbare Eingabefehler verwenden und verständliche Fehlermeldungen definieren.
- Aufgaben mit fehlenden Feldern, negativen Mengen, Text statt Zahlen und ungültigen MWST-Sätzen ergänzen.
- Einen gültigen Datensatz und mehrere absichtlich fehlerhafte Datensätze bereitstellen.
- Lösungen müssen zeigen, dass Fehler gemeldet werden, ohne eine fehlerhafte Rechnung auszugeben.

### SW8 / KW45 – Fachmodell und ERD erstellen

- Die Projektobjekte `Kunde`, `Artikel`, `Rechnungsposition` und `Rechnung` als Klassen einführen.
- Attribute, Beziehungen und Verantwortlichkeiten jeder Klasse am Rechnungssystem erklären.
- Das ERD um die Beziehungen Kunde–Rechnung, Rechnung–Position und Position–Artikel ergänzen.
- Aufgaben vorsehen, in denen Studierende Klassen instanziieren und eine Rechnung mit mehreren Positionen aufbauen.
- Lösungen um ein konsistentes Klassengerüst und eine Zuordnung vom ERD zum Code erweitern.

### SW9 / KW46 – Rechnung als Dictionary/JSON abbilden

- Das Dictionary-Modell exakt an die Struktur aus `project_description.md` angleichen.
- Zugriff auf verschachtelte Werte wie Kundendaten, Positionen und Summen üben.
- Eine Funktion zur Umwandlung des Rechnungsobjekts in JSON ergänzen.
- Aufgaben für das Hinzufügen, Ändern und Auslesen einer Position sowie für die MWST-Zusammenfassung bereitstellen.
- Lösungen müssen eine vollständige, gültige Beispielrechnung ausgeben.

### SW10 / KW47 – Sortierung und rekursive Verarbeitung

- Eine Sortieraufgabe mit `sorted(..., key=lambda ...)` für Artikelnummer, Positionsnummer oder Positionsbetrag ergänzen.
- Rekursion anhand einer kleinen, klar abgegrenzten Summenfunktion für Rechnungspositionen demonstrieren.
- Den Basisfall und den rekursiven Schritt explizit markieren und die Grenzen der Lösung erklären.
- Aufgaben mit einer iterativen Vergleichslösung versehen, damit die Studierenden beide Varianten unterscheiden.
- Lösungen um Testfälle für leere Listen und eine ein-elementige Liste ergänzen.

### SW11 / KW48 – Rechnungstypen erweitern

- Eine Basisklasse `Rechnung` und mindestens eine Unterklasse `Gutschrift` oder `Mahnrechnung` modellieren.
- Festlegen, welche Attribute und Methoden geerbt und welche überschrieben werden.
- Aufgaben ergänzen, in denen Studierende das Verhalten und die Betragslogik des erweiterten Rechnungstyps prüfen.
- Den Kurztest auf Vererbung und die bisher behandelten Grundlagen abstimmen.
- Lösungen müssen die fachliche Auswirkung der Unterklasse auf die Ausgabe erklären.

### SW12 / KW49 – Menschenlesbare Ausgabe

- Eine formatierte Rechnung mit Kopfzeile, Kundendaten, Positionstabelle, MWST-Aufstellung und Endbetrag erzeugen.
- List-Comprehensions für gezielte Filterungen verwenden, zum Beispiel alle Positionen eines MWST-Satzes.
- CHF-Formatierung, Datumsformat und die drei Schweizer Sprachen als offene Erweiterung dokumentieren.
- Aufgaben ergänzen, in denen Studierende eine druckbare Textausgabe und eine JSON/CSV-Ausgabe erzeugen.
- Lösungen müssen auf fehlende Felder reagieren und Beträge einheitlich auf zwei Nachkommastellen formatieren.

### SW13 / KW50 – 3-Tier-Anwendung fertigstellen

- Ein Projektgerüst mit getrennten Modulen für Datenzugriff, Businesslogik und Präsentation bereitstellen.
- Eine Integrationsaufgabe formulieren, die Kunden-/Artikelverwaltung, Rechnungserstellung, Validierung und Ausgaben verbindet.
- Abnahmetests mit Rechnungen ohne Positionen, mit mehreren MWST-Sätzen und mit MWST 0 % vorgeben.
- Eine Abgabecheckliste für Code, Beispieldaten, JSON/CSV, druckbare Ausgabe und kurze Dokumentation ergänzen.
- Ein Bewertungsraster mit den Erfolgsfaktoren aus der Projektbeschreibung in das Projektmaterial aufnehmen.

### SW14 / KW51 – Präsentation und Auswertung

- Eine kurze Präsentationsstruktur vorgeben: Problem, Datenmodell, 3-Tier-Aufteilung, Demonstration und Reflexion.
- Die Modulevaluation um Fragen ergänzen, die direkt auf Entscheidungen im Rechnungssystem Bezug nehmen.
- Eine technische Checkliste für das Starten, Testen und Präsentieren des Projekts bereitstellen.
- Eine Peer- oder Selbstreflexion zu Validierung, MWST-Berechnung und Zusammenarbeit durchführen.
- Optionalen Kurztest nur aus den im Projekt tatsächlich verwendeten Grundlagen zusammenstellen.

## Umsetzung in den Lehrmitteln

### Unterrichtsnotebooks

Jedes Unterrichtsnotebook erhält einen kurzen Abschnitt **«Anwendung im Projekt»**. Dieser zeigt, wie das aktuelle Python-Thema im Rechnungssystem eingesetzt wird. Die Beispiele werden aufeinander aufgebaut und verwenden ein einheitliches Beispieldataset.

### Übungen und Lösungen

In jedem Übungsnotebook wird mindestens eine Aufgabe auf das Rechnungssystem bezogen. Das Anspruchsniveau steigt schrittweise:

- SW1–SW4: einzelne Werte, Berechnungen und Kontrollstrukturen
- SW5–SW7: Datenzugriff, Funktionen und Validierung
- SW8–SW12: Modellierung, Datenstrukturen und Ausgabe
- SW13: Integration und eigenständige Projektarbeit

Die Lösungsnotebooks enthalten jeweils eine Musterlösung und bleiben auf den in der betreffenden Woche behandelten Stoff beschränkt.

## Gemeinsame Datenbasis

Ab SW5 wird eine kleine, feste Beispieldatenbasis für Kunden und Artikel verwendet. Sie enthält verschiedene MWST-Sätze und wird in späteren Übungen wiederverwendet. Dadurch erkennen die Studierenden die fachliche Kontinuität und müssen nicht jede Woche neue Beispieldaten verstehen.

## Abschluss und Beurteilung

Für SW13 wird ein Projektgerüst mit klaren Teilaufgaben bereitgestellt:

1. Datenmodell und Stammdaten
2. Rechnungs- und MWST-Berechnung
3. Validierung und Fehlerbehandlung
4. 3-Tier-Struktur
5. JSON/CSV- sowie PDF-/druckbare Ausgabe

Die Beurteilung orientiert sich an den Erfolgsfaktoren der Projektbeschreibung: korrekte und prüfbare Rechnungen, dynamische Steuersätze, einfache Verwaltung sowie maschinen- und menschenlesbare Ausgaben. In SW14 präsentieren die Studierenden die Lösung kurz und reflektieren die wichtigsten Entwicklungsentscheidungen.
