-- Gemeinsames SW5-SW8-Schema (SQLite)
CREATE TABLE kunden (kunden_id INTEGER PRIMARY KEY, name TEXT NOT NULL, adresse TEXT NOT NULL, plz TEXT NOT NULL, ort TEXT NOT NULL);
CREATE TABLE artikel (artikel_id INTEGER PRIMARY KEY, bezeichnung TEXT NOT NULL, einzelpreis NUMERIC NOT NULL CHECK (einzelpreis >= 0), mwst_satz NUMERIC NOT NULL CHECK (mwst_satz IN (0.0, 2.5, 3.7, 7.7)));
CREATE TABLE rechnungen (rechnung_id INTEGER PRIMARY KEY, kunden_id INTEGER NOT NULL REFERENCES kunden(kunden_id), datum TEXT NOT NULL);
CREATE TABLE rechnungspositionen (rechnung_id INTEGER NOT NULL REFERENCES rechnungen(rechnung_id), positions_nr INTEGER NOT NULL, artikel_id INTEGER NOT NULL REFERENCES artikel(artikel_id), menge NUMERIC NOT NULL CHECK (menge > 0), einzelpreis NUMERIC NOT NULL CHECK (einzelpreis >= 0), PRIMARY KEY (rechnung_id, positions_nr));
-- Beispiel: INSERT INTO rechnungspositionen VALUES (1, 1, 1001, 2, 12.50);
