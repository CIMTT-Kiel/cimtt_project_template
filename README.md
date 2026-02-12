# Projektname

Kurzbeschreibung des Projekts. Was wird bearbeitet?

## Setup

Beschreibung wie das Projekt nach dem Klonen aufgesetzt und genutzt werden kann. Gerne auch durch Beipielcode für Kernfunktionen ergänzen. 

```bash
uv sync
source .venv/bin/activate
```

## Projektstruktur

```
├── configs/         ← YAML-Konfigurationen
├── data/            ← Daten (per default nicht getrackt, wenn gewünscht aus .gitignore löschen, bei großen Daten lfs oder dvc erwägen)
├── models/          ← Gespeicherte Modelle
├── notebooks/       ← Jupyter Notebooks
├── scripts/         ← Standalone-Skripte
├── src/project/     ← Python-Package
├── tests/           ← Tests
└── pyproject.toml
```
