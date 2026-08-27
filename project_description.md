# Projektbeschreibung: Rechnungssystem

## Ziel

Entwickelt wird eine kleine 3-Tier-Anwendung zur Verwaltung von Kunden und
Artikeln sowie zur Erstellung prüfbarer Rechnungen. Die Anwendung verwendet
die gemeinsame Datenbasis in `data/` und berechnet Schweizer MWST-Sätze
dynamisch.

## Datenmodell

Eine Rechnung wird maschinenlesbar in dieser Form dargestellt:

```json
{
  "rechnung_id": 1,
  "datum": "2024-11-01",
  "kunde": {
    "kundennummer": "K-100",
    "name": "Alpenblick AG",
    "adresse": "Bahnhofstrasse 1, 8000 Zürich"
  },
  "positionen": [
    {
      "positionsnummer": 1,
      "artikel": {
        "artikelnummer": "A-10",
        "bezeichnung": "Beratung",
        "einzelpreis": 150.0
      },
      "menge": 2,
      "mwst_satz": 7.7,
      "betrag": 300.0
    }
  ],
  "summen": {
    "zwischensumme": 300.0,
    "mwst": {"7.7": 23.1},
    "gesamtbetrag": 323.1
  }
}
```

Erlaubte MWST-Sätze sind `7.7`, `3.7`, `2.5` und `0.0` Prozent. Geldbeträge
werden in CHF geführt und auf zwei Nachkommastellen gerundet. Die Feldnamen
und die Verschachtelung sind verbindlich und werden ab SW9 verwendet.

## 3-Tier-Aufteilung

- **Daten:** SQLite/CSV mit Kunden, Artikeln, Rechnungen und Positionen.
- **Businesslogik:** Validierung, Positionssummen, MWST und Rechnungstypen.
- **Präsentation:** druckbare CHF-Rechnung sowie JSON- und CSV-Export.

Die Wochen 1–12 führen schrittweise in diese Bestandteile ein. In Woche 13
werden sie integriert; Woche 14 dient Präsentation, Reflexion und Evaluation.
