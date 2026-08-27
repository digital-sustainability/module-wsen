# SW13 / KW50 – Projektabschluss: 3-Tier-Rechnungssystem

## Auftrag

Integriert die Bausteine aus SW1–SW12 zu einer lauffähigen Anwendung. Die
gemeinsame fachliche Datenstruktur steht in
[`project_description.md`](../../../project_description.md).

### Verbindliche Teilaufgaben

1. **Datenzugriff:** Kunden und Artikel aus `data/` laden; mindestens einen
   Kunden suchen und Artikel verwalten.
2. **Businesslogik:** Positionen und Rechnungen berechnen; die MWST-Sätze
   `7.7`, `3.7`, `2.5` und `0.0` getrennt ausweisen.
3. **Validierung:** Fehlende IDs, negative Mengen/Preise und unbekannte
   MWST-Sätze verständlich ablehnen.
4. **3-Tier-Struktur:** Datenzugriff, Businesslogik und Präsentation in
   getrennten Modulen organisieren.
5. **Ausgaben:** dieselbe Rechnung als druckbaren Text, JSON und CSV
   ausgeben.

## Abnahmetests

- Rechnung ohne Positionen wird korrekt behandelt.
- Rechnung mit mindestens zwei verschiedenen MWST-Sätzen weist beide Sätze
  separat aus.
- Eine Position mit MWST `0.0` erhöht die Steuer nicht.
- Ungültige Eingaben erzeugen eine verständliche Fehlermeldung und keine
  fehlerhafte Rechnung.

## Abgabecheckliste

- [ ] Quellcode mit 3-Tier-Aufteilung
- [ ] Beispieldaten und Datenbankschema
- [ ] automatisierte oder dokumentierte Abnahmetests
- [ ] JSON-, CSV- und druckbare Ausgabe
- [ ] kurze Dokumentation mit Startanleitung

## Bewertungsraster

| Kriterium | Anteil |
|---|---:|
| Korrekte Rechnung und dynamische MWST | 35 % |
| Datenmodell und Datenzugriff | 20 % |
| Validierung und Fehlerbehandlung | 15 % |
| Klare 3-Tier-Struktur | 15 % |
| JSON/CSV und menschenlesbare Ausgabe | 10 % |
| Dokumentation und Tests | 5 % |
