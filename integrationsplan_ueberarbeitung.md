# Überarbeitungsplan: Engere Projektintegration in den Unterricht

## Ausgangslage

Der bestehende [projektintegrationsplan.md](projektintegrationsplan.md) definiert bereits
gute Meilensteine pro Woche. Bei der Umsetzung in den Notebooks sind aber zwei
Probleme entstanden:

1. **Der Projektbezug hängt lose am Ende.** In jedem `01_Unterricht.ipynb`
   folgt der Projektbezug als ein einzelner, abgeschlossener Markdown+Code-Block
   nach der letzten regulären Zelle (z. B. Woche 5: Zelle 60/61 von 62, Woche 12:
   Zelle 36/37 von 38). In `02_Aufgaben.ipynb` und `03_Loesungen.ipynb` ist die
   Projektaufgabe fast immer die allerletzte Zelle. Dadurch wirkt das Projekt wie
   ein optionaler Anhang statt wie ein durchgehender roter Faden. Woche 2 hat
   zudem gar keinen Projektbezug, obwohl der Plan das vorsieht.
2. **Der Projektteil greift Konzepte vorweg, die noch nicht behandelt wurden.**
   Konkret nachgewiesen:
   - **Listen**: Werden in den Projektbeispielen ab SW3/SW4 verwendet
     (`ERLAUBTE_MWST = [7.7, 3.7, 2.5, 0.0]`, `positionen = [...]`), obwohl
     Listen laut Semesterplan erst in SW5 ("Pandas / Arrays / Listen")
     eingeführt werden.
   - **Dictionaries**: Werden in den Projektbeispielen ab SW4/SW6 verwendet
     (`positionen = [{"anzahl": 3, ...}]`), obwohl Dictionaries laut
     Semesterplan erst in SW9 eingeführt werden.
   - **`decimal.Decimal` / `ROUND_HALF_UP`**: Wird in SW6 im Projektcode
     verwendet, aber im gesamten Kurs nie erklärt.
   - **`isinstance()`**: Wird in SW7 im Projektcode verwendet, aber nie
     eingeführt.
   - **`@property`**: Wird in SW8 im Projektcode verwendet, aber nie erklärt.

Ziel dieses Überarbeitungsplans ist es, beide Probleme zu beheben, ohne den
bestehenden `projektintegrationsplan.md` und `project_description.md`
inhaltlich neu zu erfinden.

## Leitprinzipien für die Überarbeitung

1. **Kein Wissen vorwegnehmen.** Jedes Projektbeispiel darf nur Python-Konzepte
   verwenden, die in der aktuellen oder einer früheren Woche bereits behandelt
   wurden. Wo das mit dem finalen Rechnungs-Datenmodell kollidiert (z. B.
   Listen/Dictionaries erst ab SW5/SW9), wird das Projektbeispiel für frühere
   Wochen bewusst vereinfacht (siehe "Vereinfachungspfad" unten) statt die
   Zielstruktur zu erzwingen.
2. **Projekt als roter Faden statt Anhang.** Statt eines einzelnen
   Schlussblocks wird der Projektbezug über das Notebook verteilt: Er taucht
   direkt nach der Einführung eines neuen Konzepts als kurzes Beispiel auf,
   nicht erst am Ende.
3. **Gleiches Muster in Aufgaben/Lösungen.** Projektaufgaben werden nicht mehr
   als letzte "Bonusaufgabe" angehängt, sondern als reguläre Aufgabe(n)
   zwischen den anderen platziert, thematisch dort, wo das jeweilige Konzept
   geübt wird.
4. **Sichtbare Kennzeichnung, aber keine Isolation.** Der Marker
   `## Anwendung im Projekt: ...` bleibt als Wiedererkennungsmerkmal bestehen,
   erscheint aber mehrfach pro Notebook statt einmal ganz am Schluss.

## Vereinfachungspfad für frühe Wochen (SW1–SW8)

Damit das Rechnungsprojekt kein Wissen voraussetzt, das erst später kommt,
wird die Datenrepräsentation schrittweise komplexer gemacht – parallel zum
Wissensstand:

| Wochen | Zulässige Datenstruktur im Projekt | Begründung |
|---|---|---|
| SW1–SW2 | Einzelne Variablen (`kunde_name`, `artikel_preis`, `mwst_satz`, ...) | Listen/Dicts noch nicht behandelt |
| SW3–SW4 | Mehrere Variablen bzw. **parallele Werte einzeln** durchgereicht (keine Liste von Dicts); Schleifen über `range()`/einfache, bereits erlaubte Iterierbare (Strings) falls nötig, sonst mehrere einzelne Berechnungen nacheinander | Listen erst ab SW5 |
| SW5 | Erste echte Listen (`positionen = [12.50, 20.00]` bzw. parallele Listen `mengen`, `preise`, `saetze`) und SQLite-Zeilen als Tupel | Listen neu eingeführt, Dicts noch nicht |
| SW6–SW7 | Listen von Tupeln oder parallele Listen statt Listen von Dicts (`positionen = [(3, 12.50, 7.7), (2, 20.00, 2.5)]`) | Dicts erst ab SW9 |
| SW8 | Klassen mit Attributen statt Dicts; **kein** `@property`, stattdessen normale Methode `summe()` | `@property` nicht behandelt; Klassen/OOP ist das aktuelle Thema |
| SW9 | Erstmals Dictionary-/JSON-Struktur gemäss `project_description.md` | Dictionaries neu eingeführt |
| SW10–SW14 | Volles Datenmodell wie in `project_description.md` | Alle Bausteine bekannt |

Für `decimal.Decimal`/`ROUND_HALF_UP` gilt: Entweder wird `Decimal` in SW6 kurz
und explizit als neues Werkzeug eingeführt (2–3 Sätze plus Minibeispiel,
bevor es im Projektcode verwendet wird), oder – empfohlen, da einfacher und
konsistent mit dem übrigen Kurs – SW6 verwendet weiterhin `round(x, 2)` mit
`float`, wie in allen anderen Wochen, und `Decimal` wird ganz gestrichen.
Gleiches Prinzip für `isinstance()` in SW7: entweder in 2–3 Sätzen einführen,
bevor es verwendet wird, oder durch bereits bekannte Prüfungen ersetzen
(z. B. `not kunde` statt `not isinstance(kunde, dict)` in der vereinfachten
Struktur).

## Konkrete Massnahmen pro Woche

### SW1 – Projekt einführen (unverändert inhaltlich, Struktur ok)
Keine Code-Vorgriffe vorhanden. Struktur bereits nah am Anfang, kann bleiben.

### SW2 – Projektbezug ergänzen
- Direkt nach der Einführung von Variablen/Datentypen: Kundenname, Artikelname,
  Einzelpreis, MWST-Satz als einzelne Variablen deklarieren (kein Dict/Liste).
- Direkt nach der String-Formatierung: eine einzeilige Ausgabe "Rechnungszeile"
  mit f-String bauen.
- Eine Projektaufgabe in `02_Aufgaben.ipynb` zwischen den bestehenden Aufgaben
  einfügen (nicht ans Ende).

### SW3 – MWST-Validierung
- **Ersetzen:** `ERLAUBTE_MWST = [7.7, 3.7, 2.5, 0.0]` durch verschachtelte
  `if`/`or`-Bedingung ohne Liste, z. B.
  `if satz == 7.7 or satz == 3.7 or satz == 2.5 or satz == 0.0:`.
- Block direkt nach der Einführung von `if`/`else` platzieren, nicht als
  letzte Zelle.
- Projektaufgabe in `02_Aufgaben.ipynb` an der Stelle einfügen, wo `if`/`else`
  geübt wird.

### SW4 – Rechnungspositionen summieren
- **Ersetzen:** `positionen = [{"anzahl": 3, ...}, ...]` (Liste von Dicts)
  durch mehrere einzelne, parallel benannte Variablen und eine Schleife über
  `range(anzahl_positionen)` mit parallelen Werten, oder – einfacher und
  didaktisch klarer – zwei bis drei Positionen nacheinander explizit ohne
  Schleife über Dicts berechnen (Schleifenkonzept an einem trivialen Beispiel
  wie "Zahlen 1 bis 5 aufsummieren" einführen, Projektbezug danach separat
  ohne Liste von Dicts zeigen).
- Block direkt nach der Einführung von `for`-Schleifen platzieren.

### SW5 – Stammdaten in SQLite/Listen
- Hier dürfen jetzt echte Listen verwendet werden. Bestehender Inhalt
  (Zelle 60/61) ist inhaltlich in Ordnung, wird aber **nach vorne verschoben**:
  direkt im Anschluss an die SQLite-Einführung, nicht als letzte Zelle des
  Notebooks (danach folgen noch Pandas-Themen, die den Projektbezug nochmals
  aufgreifen sollten).
- Zusätzlich: kurzer Projektbezug direkt nach der Pandas-Einführung
  (Kunden-/Artikeltabelle als DataFrame anzeigen).

### SW6 – Rechnungslogik kapseln
- **Entfernen:** `from decimal import Decimal, ROUND_HALF_UP`. Stattdessen
  `round(wert, 2)` mit `float` wie im restlichen Kurs verwenden, konsistent
  mit SW2–SW5.
- **Ersetzen:** Liste von Dicts durch Liste von Tupeln oder parallele Listen
  (`mengen`, `einzelpreise`, `mwst_saetze`), da Dicts erst SW9 kommen.
- Projektbezug direkt nach jeder neu eingeführten Funktion zeigen
  (`berechne_positionssumme` sofort nach der Funktionsdefinition-Einführung,
  nicht gesammelt am Ende).

### SW7 – Validierung und Fehlerbehandlung
- **Entfernen:** `isinstance(kunde, dict)`. In der vereinfachten
  Datenstruktur (Tupel/einzelne Variablen) durch einfache Prüfungen ersetzen,
  z. B. `if not kunde_name or not kunde_id:`.
  Zusätzlich Anzahl/Preis-Typprüfungen weiterhin ohne `isinstance` lösen
  (z. B. `try: float(wert) except ValueError:` – `try`/`except` ist das
  aktuelle Wochenthema und somit zulässig).
- Projektbezug direkt nach der `try`/`except`-Einführung zeigen.

### SW8 – Fachmodell und ERD
- **Entfernen:** `@property`. Stattdessen eine normale Methode `summe()`
  verwenden (`def summe(self): return round(self.menge * self.artikel.einzelpreis, 2)`),
  da `@property` nirgends im Kurs erklärt wird.
- Projektbezug direkt nach der Klassen-Einführung zeigen, nicht als letzte
  Zelle.

### SW9 – Rechnung als Dictionary/JSON
- Hier ist der Zeitpunkt, an dem das **volle** Datenmodell aus
  `project_description.md` erstmals zulässig ist (Dictionaries neu gelernt).
  Bestehender Code ist inhaltlich korrekt, wird aber im Notebook weiter nach
  vorne platziert (direkt nach der Dictionary-Einführung, vor evtl.
  weiterführenden, unabhängigen Dictionary-Beispielen).
- Explizit erwähnen: "Ab jetzt verwenden wir durchgehend Dictionaries für
  Positionen – vorher haben wir das mit Tupeln/Listen vereinfacht."
  Das macht den Wechsel für Studierende nachvollziehbar statt verwirrend.

### SW10 – Sortieren und Rekursion
- Kein Vorgriff-Problem. Struktur wird verbessert: Projektbezug direkt nach
  `lambda`-Einführung (Sortierbeispiel) und ein zweiter, kleinerer
  Projektbezug direkt nach der Rekursions-Einführung, statt beides gesammelt
  am Ende.

### SW11 – Vererbung
- Kein Vorgriff-Problem (verwendet nur Klassen/Vererbung, aktuelles Thema).
  Projektbezug direkt nach der Einführung von Vererbung platzieren.

### SW12 – Menschenlesbare Ausgabe
- Kein Vorgriff-Problem. Projektbezug in zwei Teile splitten: Comprehensions
  direkt nach deren Einführung, f-String-Formatierung direkt nach deren
  Einführung, statt eines gesammelten Blocks am Ende.

### SW13/SW14 – Integration/Präsentation
- Unverändert; hier ist ein zusammenhängender, umfassender Block korrekt und
  gewollt, da dies der Synthese-Termin ist.

## Vorgehen bei der Umsetzung in den Notebooks

Für jedes betroffene Notebook (`01_Unterricht.ipynb`, `02_Aufgaben.ipynb`,
`03_Loesungen.ipynb` in SW2–SW12):

1. Bestehende `## Anwendung im Projekt: ...`-Zelle(n) am Ende identifizieren.
2. Inhalt gemäss Tabelle oben vereinfachen (Listen/Dicts/`Decimal`/
   `isinstance`/`@property` entfernen, wo noch nicht eingeführt).
3. Die (ggf. aufgeteilte) Zelle an die Stelle im Notebook verschieben, die
   direkt auf die Einführung des jeweils benötigten Konzepts folgt.
4. In `02_Aufgaben.ipynb`: die Projektaufgabe ebenfalls verschieben, statt sie
   als letzte Aufgabe zu belassen; passende Musterlösung in
   `03_Loesungen.ipynb` an derselben Position halten.
5. Am Ende jedes Notebooks bleibt weiterhin eine kurze, thema-übergreifende
   Zusammenfassung – aber ohne neuen Projektinhalt, nur als Rückverweis
   ("Diese Bausteine haben wir heute auch im Rechnungsprojekt verwendet: ...").

## Reihenfolge der Umsetzung

1. SW6–SW8 zuerst (dort liegen die konkreten Wissensvorgriffe `Decimal`,
   `isinstance`, `@property`), da diese Fehler am gravierendsten sind.
2. SW3–SW4 (Listen-Vorgriff).
3. SW2 (fehlender Projektbezug ergänzen).
4. SW5, SW9–SW12 (reine Strukturverbesserung, Umplatzierung ohne inhaltliche
   Korrektur).
5. Abschliessend `projektintegrationsplan.md` mit den finalen, angepassten
   Codebeispielen aktualisieren, damit Plan und Notebooks wieder
   übereinstimmen.

## Validierung nach Umsetzung

- Für jedes Notebook: Liste der verwendeten Python-Konzepte im Projektteil
  extrahieren und mit der Liste der bis zu dieser Woche behandelten Konzepte
  abgleichen (keine Vorgriffe mehr).
- Für jedes Notebook: prüfen, dass mindestens ein Projektbezug **nicht** in
  den letzten 20 % der Zellen liegt.
- Notebooks mit `jupyter nbconvert --execute` durchlaufen lassen, um
  sicherzustellen, dass die vereinfachten Codebeispiele weiterhin lauffähig
  sind.
