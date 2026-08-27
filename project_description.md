# **Projekt: Rechnungssystem für ein Handelsunternehmen**

---

## **Übersicht**
Entwicklung eines **Rechnungssystems** für ein Handelsunternehmen, das die Erstellung, Verwaltung und Nachverfolgung von Rechnungen automatisiert. Das System soll Kundendaten, Rechnungspositionen und variable Mehrwertsteuersätze (gemäß Schweizer Steuerrecht) verarbeiten.

---

## **Kernanforderungen**

### **1. Rechnungsstruktur**
Jede Rechnung **muss** folgende Elemente enthalten:

- **Kopfzeile**
  - Rechnungsdatum und -uhrzeit
  - Kundendaten:
    - Kundennummer
    - Name
    - Adresse

- **Rechnungspositionen**
  Jede Position **muss** folgende Felder aufweisen:
  - Positionsnummer
  - Artikelnummer und Artikelbezeichnung
  - Anzahl der Artikel
  - Einzelpreis
  - Gesamtpreis der Position (berechnet: `Anzahl × Einzelpreis`)
  - **Mehrwertsteuersatz** (artikelabhängig):
    - 7,7 % (Normalsteuersatz)
    - 3,7 % (Reduzierter Satz)
    - 2,5 % (Spezialsatz)
    - 0 % (Steuerbefreit)

---

### **2. Wichtige Funktionen**
- **Kundenverwaltung**
  - Speichern und Abrufen von Kundenprofilen (ID, Name, Adresse).
- **Artikeldatenbank**
  - Pflege eines Artikelkatalogs mit:
    - Artikelnummer
    - Bezeichnung
    - Standard-Mehrwertsteuersatz
    - Einzelpreis
- **Rechnungserstellung**
  - Automatische Berechnung der Positionsgesamtsummen und Mehrwertsteuerbeträge.
  - Unterstützung **mehrerer Steuersätze pro Rechnung**.
  - Generierung von PDF-/druckbaren Rechnungen.
- **Datenvalidierung**
  - Prüfung auf fehlende Felder (Kunde, Artikel, Preise).
  - Validierung der Steuersätze gemäß Schweizer Vorgaben.

---

### **3. Technische Aspekte**
- **Datenmodell (Beispiel)**:
  ```json
  {
    "rechnung": {
      "id": "RE-2026-001",
      "datum": "2026-08-27T10:00:00+02:00",
      "kunde": {
        "id": "K-123",
        "name": "Marcel Gygli",
        "adresse": "Rue de la Corraterie, Genf"
      },
      "positionen": [
        {
          "positionsnummer": 1,
          "artikel": {
            "nummer": "A-456",
            "bezeichnung": "Produkt X",
            "mwst_satz": 7.7
          },
          "anzahl": 5,
          "einzelpreis": 100.00,
          "positionsgesamt": 500.00
        }
      ],
      "summen": {
        "zwischensumme": 500.00,
        "mwst": { "7,7%": 38.50 },
        "endbetrag": 538.50
      }
    }
  }
  ```
- **Lokalisierung**: Unterstützung für **Deutsch, Französisch, Italienisch** (Schweiz) und Währung **CHF**.
- **Compliance**: Einhaltung der Schweizer Mehrwertsteuergesetze (z. B. [ESTV-Richtlinien](https://www.estv.admin.ch)).

---
## **Erfolgsfaktoren**
✅ Rechnungen sind **korrekt**, **prüfbar** und **rechtssicher**.
✅ System verarbeitet **dynamische Steuersätze pro Position**.
✅ Kunden und Artikel sind **einfach verwaltbar**.
✅ Ausgaben sind **maschinenlesbar (JSON/CSV)** und **menschenlesbar (PDF)**.
