LmUtils
============

Ein Lib-Addon für verschiedene Lm* Addons. Es stellt grundlegende Funktionen für Lua zur Verügung.


Funktionen
===========

**`LmUtils.tableLength(table): number`**

    Gibt die Anzahl der Elemente im übergebenen Table zurück.

    table --- Die Tabelle (Datentyp Table)

**`LmUtils.tableHasValue(table, value): boolean`**

    Prüft ob im angegebenen Table der übergebene Wert vorhanden ist. Keys des Tables werden ignoriert.

    table --- Die Tabelle (Datentyp Table)
    value --- Der Wert nach dem gesucht werden soll (Datentyp Mixed)

**`LmUtils.round(wert): number`**

    Aktuell ein alias für `math.floor`.

    wert --- Die Nummer (Datentyp Number)

**`LmUtils.findTableKey(table, value): string`**
    
    Sucht im Table nach dem übergebenen Wert und gibt den Key zurück.

    table --- Die Tabelle (Datentyp Table)
    value --- Der Wert nachdem gesucht werden soll (Datentyp Mixed)