**README**

---

### SirRezi - Waffenteile
Dieses System ermöglicht es Spielern in einem FiveM Server, Schrott von einem bestimmten Punkt zu sammeln und ihn zu Waffenteilen zu verarbeiten.

---

#### Funktionen:
- **Schrottsammlung:** Spieler können sich einem bestimmten Schrottsammelpunkt nähern und Schrott durch Interaktion damit sammeln.
- **Schrottverarbeitung:** Gesammelter Schrott kann an einem anderen festgelegten Punkt zu Waffenteilen verarbeitet werden.
- **Visuelles Feedback:** Spieler erhalten Benachrichtigungen über erfolgreiche Sammlung oder Verarbeitung von Schrott.
- **Animation:** Eine Sammelanimation wird abgespielt, wenn ein Spieler mit dem Schrottsammelpunkt interagiert.

---

#### Installation:
1. Laden Sie die Skriptdateien herunter.
2. Platzieren Sie die Skriptdateien im Ordner `resources` Ihres FiveM-Servers.
3. Fügen Sie `ensure Rezi_Waffenteile` Ihrer `server.cfg`-Datei hinzu.
4. Importieren Sie die MySQL-Datenbankstruktur aus der Datei `SirRezi_Import.sql` in Ihre MySQL-Datenbank.

---

#### Verwendung:
- **Schrott sammeln:** Nähern Sie sich dem Schrottsammelpunkt. Drücken Sie die Kontexttaste (`E`), um Schrott zu sammeln. Eine Sammelanimation wird abgespielt, und nach einer kurzen Verzögerung wird Schrott Ihrem Inventar hinzugefügt.
- **Schrott verarbeiten:** Nähern Sie sich dem Schrottverarbeitungspunkt. Drücken Sie die Kontexttaste, um die Schrottverarbeitung zu starten. Wenn Sie mindestens 10 Einheiten Schrott in Ihrem Inventar haben, wird dieser zu einem Waffenteil verarbeitet.

---

#### Konfiguration:
- Sie können die Koordinaten der Schrott-Sammel- und -Verarbeitungspunkte in den Lua-Skriptdateien (`client.lua` und `server.lua`) an die Umgebung Ihres Servers anpassen.
- Passen Sie die Benachrichtigungsnachrichten und die Namen der Gegenstände nach Ihren Wünschen an.

---

#### Credits:
- **Skriptautor:** SirRezi
---



