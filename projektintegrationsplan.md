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

- Direkt nach der Einführung von Variablen und Datentypen: Kundenname, Artikelname, Einzelpreis und MWST-Satz als **einzelne Variablen** ablegen (noch keine Liste, kein Dictionary), z. B. `kunde_name = "Anna Muster"`, `artikel_name = "USB-Kabel"`, `einzelpreis = 12.90`, `mwst_satz = 7.7`, und deren Typen mit `type()` prüfen.
- Direkt nach der f-String-Einführung eine einzeilige Rechnungszeile bauen: `rechnungszeile = f"{kunde_name} kauft {artikel_name} zu CHF {einzelpreis} (MWST {mwst_satz}%)"`.
- Beide Beispiele stehen als eigene `## Anwendung im Projekt: ...`-Abschnitte direkt nach dem jeweiligen Konzept, nicht mehr gesammelt am Ende des Notebooks.
- In `02_Aufgaben.ipynb` eine Projektaufgabe zwischen den bestehenden Aufgaben einfügen (nicht ans Ende), in der Studierende Felder typisieren und eine Rechnungszeile formatieren.
- Lösungen um die erwarteten Resultate und einen Beispiel-Datensatz erweitern.

### SW3 / KW40 – MWST-Regeln validieren

- Statt einer Liste der erlaubten Sätze eine verschachtelte `if`/`or`-Bedingung ohne Liste verwenden (Listen kommen erst in SW5): `def ist_gueltiger_steuersatz(satz): if satz == 7.7 or satz == 3.7 or satz == 2.5 or satz == 0.0: return True else: return False`.
- Der Abschnitt `## Anwendung im Projekt: MWST-Regeln validieren` folgt direkt nach der Einführung von `if`/`else`, nicht als letzte Zelle.
- Projektbeispiele für steuerpflichtige und steuerbefreite Positionen ergänzen (`ist_gueltiger_steuersatz(7.7)`, `ist_gueltiger_steuersatz(0)`, `ist_gueltiger_steuersatz(8.1)`).
- Aufgaben an der Stelle einfügen, wo `if`/`else` geübt wird, für gültige/ungültige Sätze sowie für die Prüfung von Anzahl und Preis.
- Lösungen müssen auch Grenzfälle wie `0` und einen unbekannten Satz zeigen.

### SW4 / KW41 – Rechnungspositionen summieren

- Statt einer Liste von Dictionaries **mehrere parallele, einzeln benannte Variablen** je Position verwenden (`anzahl_1`, `einzelpreis_1`, `mwst_satz_1`, `anzahl_2`, `einzelpreis_2`, `mwst_satz_2`, ...), da Listen erst ab SW5 erlaubt sind.
- Mit den Akkumulatoren `zwischensumme` und `mwst_gesamt` Position für Position `netto_1`/`mwst_1`, dann `netto_2`/`mwst_2` berechnen und zu `endbetrag = round(zwischensumme + mwst_gesamt, 2)` aufsummieren.
- Der Abschnitt `## Anwendung im Projekt: Mehrere Rechnungspositionen` folgt direkt auf die Einführung von `for`-Schleifen bzw. das Akkumulator-Muster.
- Eine Aufgabe ergänzen, die eine Rechnung mit mindestens zwei unterschiedlichen MWST-Sätzen verarbeitet.
- Eine Tracing-Aufgabe aufnehmen, in der die Werte nach jeder Schleifeniteration bzw. jedem Rechenschritt notiert werden.
- Die Lösung so strukturieren, dass jede Zwischenvariable und jeder Rechenschritt nachvollziehbar ist.

### SW5 / KW42 – Stammdaten speichern und abrufen

- Direkt nach der Pandas-Einführung `data/kunden.csv` und `data/artikel.csv` als `DataFrame` einlesen und inspizieren (`kunden_df.head()`, `artikel_df[artikel_df["mwst_satz"] > 0]`), bevor die Daten in SQLite abgelegt werden.
- Danach im Anschluss an die SQLite-Einführung die Tabellen `kunden` und `artikel` per `rechnung_schema.sql` anlegen, mit `csv.DictReader` befüllen und über `pd.read_sql_query` sowie direkte `SELECT`-Abfragen (`con.execute(...).fetchone()`) auslesen. Ab jetzt bilden diese festen Dateien in `data/` die gemeinsame Projektbasis.
- Beide Projektbezüge stehen als eigene Abschnitte an ihrer jeweiligen Stelle im Notebook, nicht mehr gesammelt als letzte Zelle.
- Aufgaben ergänzen: Kunde per ID suchen, Artikel filtern und eine Rechnung aus Datenbankwerten vorbereiten.
- Lösungen um SQL-Abfragen, erwartete Tabelleninhalte und eine kurze Prüfung auf fehlende IDs ergänzen.

### SW6 / KW43 – Rechnungslogik kapseln

- Die bisher verstreuten Berechnungen in klar benannte Funktionen aufteilen: `berechne_positionssumme(anzahl, einzelpreis)`, `berechne_mwst(nettobetrag, mwst_satz)` und `berechne_rechnung(mengen, einzelpreise, mwst_saetze)`. Alle Beträge werden weiterhin mit `round(..., 2)` auf `float` gerundet; `decimal.Decimal`/`ROUND_HALF_UP` wird **nicht** verwendet, da im Kurs nirgends eingeführt.
- `berechne_rechnung` verwendet **parallele Listen** (`mengen`, `einzelpreise`, `mwst_saetze`) statt einer Liste von Dictionaries, da Dictionaries erst ab SW9 eingeführt werden; die Funktion iteriert mit `for index in range(len(mengen))` und liefert `netto_total, mwst_total, brutto_total` zurück.
- Jeder Projektbezug folgt direkt auf die Einführung der jeweiligen Funktion (`## Anwendung im Projekt: Positionssummen als Funktion`, `... MWST mit return berechnen`, `... Mehrere Funktionen zusammensetzen`), statt gesammelt am Ende zu stehen.
- Aufgaben ergänzen, in denen Studierende die Funktionen mit Einzel- und Mehrpositionsrechnungen testen.
- Eine kleine Testtabelle mit Eingaben und erwarteten Ergebnissen in das Aufgaben- oder Lösungsnotebook aufnehmen.
- Lösungen müssen zeigen, dass mehrere Steuersätze getrennt ausgewiesen werden.

### SW7 / KW44 – Validierung und Fehlerbehandlung

- `try`/`except` zur sicheren Umwandlung von Text in Zahlen verwenden: `position_pruefen(menge_input, einzelpreis_input, mwst_input)` wandelt Menge/Preis/MWST um und prüft anschliessend Menge > 0, Preis ≥ 0 sowie `mwst_satz not in ERLAUBTE_MWST` (Tupel `(0.0, 2.5, 3.7, 7.7)` statt Liste), jeweils mit `raise ValueError(...)`.
- `validiere_rechnungsdaten(...)` prüft Kunden- und Artikeldaten mit einfachen Bedingungen (`if not kunde_id or not kunde_name:`) statt mit `isinstance()`, das im Kurs nirgends eingeführt wird; die Daten werden weiterhin als einzelne Werte bzw. Tupel (`kunde`, `artikel`, `position`) durchgereicht, da Dictionaries erst SW9 kommen.
- Die Projektbezüge `## Anwendung im Projekt: Zahlenfelder sicher prüfen` und `... Rechnungsdaten gemeinsam validieren` folgen direkt auf die `try`/`except`-Einführung, nicht als letzte Zelle.
- Aufgaben mit fehlenden Feldern, negativen Mengen, Text statt Zahlen und ungültigen MWST-Sätzen ergänzen.
- Einen gültigen Datensatz und mehrere absichtlich fehlerhafte Datensätze bereitstellen.
- Lösungen müssen zeigen, dass Fehler gemeldet werden, ohne eine fehlerhafte Rechnung auszugeben.

### SW8 / KW45 – Fachmodell und ERD erstellen

- Die Projektobjekte `Kunde`, `Artikel`, `Rechnungsposition` und `Rechnung` als Klassen einführen; Beziehungen laufen über Referenzen und Listen (`self.rechnungen`, `self.positionen`), **nicht** über Dictionaries.
- `Rechnungsposition` erhält eine normale Methode `summe()` (`return round(self.menge * self.artikel.einzelpreis, 2)`) statt `@property`, das im Kurs nirgends erklärt wird; `Rechnung.netto()` summiert die Positionssummen mit einer `for`-Schleife.
- Das ERD um die Beziehungen Kunde–Rechnung, Rechnung–Position und Position–Artikel ergänzen.
- Der Projektbezug `## Anwendung im Projekt: Klassen fuer das Rechnungsmodell` folgt direkt auf die Klassen-Einführung, nicht als letzte Zelle.
- Aufgaben vorsehen, in denen Studierende Klassen instanziieren und eine Rechnung mit mehreren Positionen aufbauen.
- Lösungen um ein konsistentes Klassengerüst und eine Zuordnung vom ERD zum Code erweitern.

### SW9 / KW46 – Rechnung als Dictionary/JSON abbilden

- Erstmals das **volle** verschachtelte Dictionary-Modell aus `project_description.md` verwenden: `kunde`, `positionen` (jeweils mit eingebettetem `artikel`) und `summen` (inkl. `mwst`-Teildictionary je Satz und `gesamtbetrag`).
- Explizit erwähnen, dass ab jetzt durchgehend Dictionaries für Positionen verwendet werden – vorher wurde das mit Tupeln/parallelen Listen vereinfacht.
- Zugriff auf verschachtelte Werte wie `rechnung["kunde"]["name"]` und `rechnung["positionen"][0]["artikel"]["bezeichnung"]` üben.
- Mit `json.dumps(rechnung, ensure_ascii=False, indent=2)` die JSON-Umwandlung zeigen und mit `json.loads(json_text) == rechnung` verifizieren.
- Aufgaben für das Hinzufügen, Ändern und Auslesen einer Position sowie für die MWST-Zusammenfassung bereitstellen.
- Lösungen müssen eine vollständige, gültige Beispielrechnung ausgeben.

### SW10 / KW47 – Sortierung und rekursive Verarbeitung

- Eine Sortieraufgabe mit `sorted(positionen, key=lambda p: p["betrag"], reverse=True)` für die Rechnungspositionen aus SW9 ergänzen, direkt im Anschluss an die `lambda`-Einführung.
- Rekursion anhand von `summe_rekursiv(positionen)` demonstrieren, mit explizitem Basisfall (`if not positionen: return 0.0`) und rekursivem Schritt (`positionen[0]["betrag"] + summe_rekursiv(positionen[1:])`), direkt nach der Rekursions-Einführung als kleines Zusatzbeispiel.
- Aufgaben mit einer iterativen Vergleichslösung (`summe_iterativ`) versehen, damit die Studierenden beide Varianten unterscheiden und per `assert summe_rekursiv(positionen) == summe_iterativ(positionen)` verifizieren.
- Lösungen um Testfälle für leere Listen (`summe_rekursiv([]) == 0.0`) und eine ein-elementige Liste ergänzen.

### SW11 / KW48 – Rechnungstypen erweitern

- Eine Basisklasse `Rechnung` mit `gesamtbetrag()` (`sum(p["betrag"] for p in self.positionen)`) und `ausgabe_typ()` modellieren; die Unterklasse `Gutschrift` überschreibt `gesamtbetrag()` so, dass der Betrag negativ ausgewiesen wird (`return -super().gesamtbetrag()`) sowie `ausgabe_typ()`.
- Festlegen, welche Attribute und Methoden geerbt und welche überschrieben werden; der Projektbezug folgt direkt auf die Vererbungs-Einführung.
- Aufgaben ergänzen, in denen Studierende das Verhalten und die Betragslogik des erweiterten Rechnungstyps prüfen (z. B. `Rechnung(...).gesamtbetrag()` vs. `Gutschrift(...).gesamtbetrag()`).
- Den Kurztest auf Vererbung und die bisher behandelten Grundlagen abstimmen.
- Lösungen müssen die fachliche Auswirkung der Unterklasse auf die Ausgabe erklären.

### SW12 / KW49 – Menschenlesbare Ausgabe

- Aus dem Rechnungs-Dictionary mit List-Comprehensions je eine Zeile pro Position (`zeilen`) und eine Zeile pro MWST-Satz (`steuerzeilen`) aufbauen, direkt im Anschluss an die Comprehensions-Einführung.
- Direkt nach der f-String-Formatierung eine druckbare Textausgabe zusammensetzen (`"\n".join([...])`) sowie dieselbe Rechnung als JSON (`json.dumps`) und CSV (`csv.DictWriter`) exportieren.
- CHF-Formatierung, Datumsformat und die drei Schweizer Sprachen als offene Erweiterung dokumentieren.
- Aufgaben ergänzen, in denen Studierende eine druckbare Textausgabe und eine JSON/CSV-Ausgabe erzeugen.
- Lösungen müssen auf fehlende Felder reagieren (z. B. `.get("bezeichnung", "(ohne Bezeichnung)")`) und Beträge einheitlich auf zwei Nachkommastellen formatieren.

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

Jedes Unterrichtsnotebook erhält mehrere kurze Abschnitte **«Anwendung im Projekt»**, die jeweils direkt nach der Einführung des zugehörigen Python-Konzepts platziert sind – nicht mehr als einzelner Block am Ende. Dadurch wirkt der Projektbezug als durchgehender roter Faden statt als Anhang. Die Beispiele werden aufeinander aufgebaut und verwenden ein einheitliches Beispieldataset; bis SW8 wird die Datenrepräsentation dabei bewusst vereinfacht (einzelne Variablen, parallele Variablen/Listen, Tupel), da Listen erst ab SW5 und Dictionaries erst ab SW9 zur Verfügung stehen. Ab SW9 kommt durchgehend das volle Dictionary-/JSON-Datenmodell aus `project_description.md` zum Einsatz.

### Übungen und Lösungen

In jedem Übungsnotebook wird mindestens eine Aufgabe auf das Rechnungssystem bezogen und an der Stelle platziert, an der das zugehörige Konzept geübt wird – nicht mehr als letzte «Bonusaufgabe» angehängt. Das Anspruchsniveau steigt schrittweise:

- SW1–SW4: einzelne Werte, Berechnungen und Kontrollstrukturen (keine Listen/Dicts)
- SW5–SW7: Datenzugriff (Listen, SQLite), Funktionen und Validierung (parallele Listen/Tupel statt Dicts)
- SW8–SW12: Modellierung mit Klassen, ab SW9 volle Dictionary-/JSON-Datenstrukturen und Ausgabe
- SW13: Integration und eigenständige Projektarbeit

Die Lösungsnotebooks enthalten jeweils eine Musterlösung an derselben Position wie die zugehörige Aufgabe und bleiben auf den in der betreffenden Woche behandelten Stoff beschränkt.

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
