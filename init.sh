#!/usr/bin/env bash
# Initialisiert das Template mit einem Projektnamen.
# Nutzung: ./init.sh mein_projekt

set -euo pipefail

NAME="${1:?Nutzung: ./init.sh <projektname>}"

# Nur Kleinbuchstaben, Zahlen und Unterstriche erlauben
if [[ ! "$NAME" =~ ^[a-z][a-z0-9_]*$ ]]; then
    echo "Fehler: Projektname darf nur Kleinbuchstaben, Zahlen und Unterstriche enthalten."
    exit 1
fi

# Platzhalter in Dateien ersetzen
if [[ "$(uname)" == "Darwin" ]]; then
    SED="sed -i ''"
else
    SED="sed -i"
fi

for f in pyproject.toml README.md scripts/example.py tests/test_utils.py src/project/utils.py notebooks/example.ipynb; do
    $SED "s/project/$NAME/g" "$f"
done

# Paketverzeichnis umbenennen
mv "src/project" "src/$NAME"

# README-Titel setzen
$SED "s/^# Projektname/# $NAME/" README.md

# Dieses Skript entfernen
rm -- "$0"

echo "Projekt '$NAME' initialisiert."
