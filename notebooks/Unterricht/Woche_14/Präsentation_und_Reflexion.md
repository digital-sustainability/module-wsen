# SW14 / KW51 – Präsentation und Auswertung

## Präsentationsstruktur (5–7 Minuten)

1. **Problem:** Welche Aufgabe löst das Rechnungssystem?
2. **Datenmodell:** Wie hängen Kunde, Artikel, Position und Rechnung
   zusammen?
3. **3-Tier-Aufteilung:** Wo liegen Datenzugriff, Businesslogik und Ausgabe?
4. **Demonstration:** Eine Rechnung mit mehreren MWST-Sätzen sowie eine
   Validierungsfehlermeldung zeigen.
5. **Reflexion:** Welche Entscheidung war wichtig, was würdet ihr verbessern?

## Technische Checkliste

- [ ] Projekt startet mit der dokumentierten Anleitung.
- [ ] Beispiel-Datenbank oder CSV-Dateien sind vorhanden.
- [ ] Rechnung ohne Positionen wurde getestet.
- [ ] MWST `0.0` und mehrere MWST-Sätze wurden getestet.
- [ ] JSON, CSV und druckbare Ausgabe funktionieren.
- [ ] Keine ungültige Rechnung wird nach einem Validierungsfehler ausgegeben.

## Modulevaluation

Beantwortet schriftlich:

- Warum wird der MWST-Satz aus den Artikeldaten übernommen und validiert?
- Wie verhindert die Anwendung negative Mengen oder Preise?
- Welche Aufgabe übernimmt die Präsentationsschicht?
- Warum ist JSON zusätzlich zur druckbaren Ausgabe sinnvoll?

## Peer-/Selbstreflexion

Bewertet euch auf einer Skala von 1 (noch unsicher) bis 4 (sicher):

| Kompetenz | 1–4 |
|---|---:|
| Daten aus SQLite/CSV laden |   |
| Rechnungs- und MWST-Beträge erklären |   |
| Fehler verständlich behandeln |   |
| 3-Tier-Struktur begründen |   |
| Ausgabeformate testen |   |

Nennt anschliessend eine konkrete Verbesserung für die nächste Version.
