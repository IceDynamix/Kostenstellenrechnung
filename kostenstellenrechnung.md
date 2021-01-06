---
title: Kostenstellenrechnung
author: IceDynamix
date: 2020-01-07
lang: de
theme: metropolis
header-includes: | # used for scaling the table
    \usepackage{adjustbox}
numbersections: true # used for handout
---

# Gesamtbild

::: incremental

<!-- Wir befinden uns momentan in der Kosten/Leistungsrechnung, kurz KLR, welche
im Rechnungswesen als internes Rechnungswesen bezeichnet wird. Das Ziel ist es
natürlich zu schauen, wie sich der Betriebsgewinn/Verlust verläuft um am Ende zu
schauen ob sich ein bestimmter Kostenträger (Produkt/Ware) lohnen würde -->

- Kosten und Leistungsrechnung (internes Rechnungswesen)
    1. Kostenartenrechnung <!-- Einteilung in Einzel/Gemeinkosten -->
        - Einzelkosten <!-- Einem Kostenträger zuzuordnen, wie zB Material für ein Produkt -->
        - Gemeinkosten <!-- Keinem oder nur schwer einem Kostenträger zuzuordnen, wie zB Miete oder Hilfsmittel -->
    2. **Kostenstellenrechnung** <!-- Verbindung zwischen Kostenartenrechnung und Kostenstellenrechnung -->
    3. Kostenträgerrechnung <!-- Wofür sind die Kosten angefallen? Rentiert es sich? -->

:::

# Kostenstellenrechnung

<!-- Der Knackpunkt der Kostenstellenrechnung ist hierbei die Abstraktion von
Gemeinkosten zu Kostenstellen. Kostenstellen können Abteilungen eines Betriebs
sein, wie zB Material (Lagerung), Fertigung, Verwaltung, Vertrieb -->

::: incremental

- **Abstraktion von Gemeinkosten zu Kostenstellen**
- Verbindung zwischen Kostenartenrechnung und Kostenstellenrechnung <!-- Wie gesagt, zweiter Schritt -->
- Hilfsmittel, um Gemeinkosten Kostenträgern zuzuordnen <!-- Einzelkosten sind direkt zuordbar -->
- Erfasst und berechnet im **Betriebsabrechnungsbogen**

:::

# Betriebsabrechnungsbogen

<!-- Im großen und ganzen nur ein Spreadsheet auf Papier. Dabei gibt es
folgenden Spalten die aufgestellt werden. -->

Tabelle mit Spalten für

::: incremental

- Gemeinkostenart <!-- Name/Bezeichnung -->
- Höhe der Kosten
- Verteilungsschlüssel <!-- Grundlage auf welcher die Kosten verteilt werden, zB m² für Miete oder kWh für Strom -->
- Kostenstellen <!-- Eine für jede festgelegte Kostenstelle -->

:::

<!-- Die Kosten einer Gemeinkostenart wird dann mit Dreisatz auf Basis des
gegebenen Verteilungsschlüssels auf die jeweiligen Kostenstellen verteilt.
Danach hat man für jede Kostenstelle am Ende eine Summe, dessen Verhältnis
zueinander und zu den Einzelkosten eines Kostenträgers als Basis für die
Kostenträgerrechnung genutzt werden kann. -->

<!-- pagebreak für Handout -->
\pagebreak

# Beispiel Möbelfirma

<!-- Das Beispiel ist vereinfacht und natürlich nicht annähernd so komplex wie
in der Realität. Es sind übliche Gemeinkosten gegeben, alle Zahlen in Einheit
Euro -->

:::columns
:::: column
::::: incremental

- **Gemeinkosten**
    - Miete - 50,000
    - Strom - 4,000
    - Hilfsstoffe - 25,000 <!-- Schauben, Schmiermittel, Werkzeuge etc. -->
    - Werbungskosten - 20,000

:::::
::::

:::: column

<!-- Weitere übliche Kostenstellen sind zb Vertrieb. Die später gewählten
Verhältnisse sind auch nicht unbedingt gemäß der Realität. -->

::::: incremental

- **Kostenstellen**
    - Material <!-- Lager/Lieferung -->
    - Fertigung <!-- Produktion -->
    - Verwaltung <!-- Verwaltung halt -->

:::::
::::
:::

# Live Demo

Beispiel mit Google Sheets

<!--

Zoom auf 150% einstellen!

1. Schauen mit welchem Verteilungsschlüssel man arbeitet
2. Verteilung eintragen
3. Spreadsheet
    1. Google Sheets ist von den Grundlagen gleich zu Excel, aber ich bevorzuge
       es aus verschiedenen Gründen welche ich am Ende in einer Frage erläutern
       kann
        - Cloud based -> Collaboration
        - Query, "mini SQL"
        - Javascript Scripting vs Visual Basic
    2. = am Anfang beginnt eine Spreadsheet Formel
    3. C4 ist in diesem Fall eine Referenz
    4. Es gibt viele eingebaute Funktionen, eine Grundlegende davon ist die
       SUM() Funktion, welche die Summe aus allen Zahlen in einer Referenz
       bildet
    5. Es muss hier jetzt natürlich der Dreisatz angewandt werden, also müssen
       wir das Verhältnis des gegebenen Verhältnisses zu der Summe der
       Verhältnisse bilden. Bei 3:2:1 wäre es also 3/6, also die Hälfte. Daher
       wird jetzt auch die Hälfte der Gesamtkosten auf die Material Kostenstelle
       zugewiesen.
    6. Wenn man eine Zelle unten rechts an der Ecke zieht, dann kopiert man sie
       auf einen bestimmten Bereich, mit allen Referenzen verschoben
    7. Man benutzt $ um das Verschieben einer Zelle in bestimmte Richtungen zu
       verhindern
    8. Nun kann man die Summe für jede Kostenstelle bilden
    9. Das Verhältnis jeder Kostenstelle zueinander ist der Zahl durch die
       Summe zu bilden

-->

# Live Demo Ergebnis

\begin{table}[!h]
\begin{adjustbox}{width=\textwidth}
\begin{tabular}{r|rcc|rrr}

           \textbf{Art} & \textbf{Kosten} & \textbf{V.Schlüssel} & \textbf{Verhältnis} & \textbf{Material} & \textbf{Fertigung} & \textbf{Verwaltung} \\
\hline
                  Miete & 50,000 & $m^2$      & 3:2:1 & 25,000 & 16,667 & 8,333   \\
                  Strom &  4,000 & $kWh$      & 2:6:2 & 800 & 2,400 & 800   \\
            Hilfsstoffe & 25,000 & Stückliste & 1:3:1 & 5,000 & 15,000 & 5,000   \\
         Werbungskosten & 20,000 & Verwaltung & 0:0:1 & & & 20,000   \\
\hline
         \textbf{Summe} & 99,000 &            &       & 74,500 & 71,000 & 44,500 \\
    \textbf{Verhältnis} &        &            &       & 39.21\% & 37.37\% & 23.42\%

\end{tabular}
\end{adjustbox}
\end{table}

# Quellen

<!-- too lazy to set up bib rn lmao -->

- Adolf G. Coenenberg, Thomas M. Fischer, Thomas Günther. *Kostenrechnung und Kostenanalyse*. Schäffer-Poeschel. 2016. ISBN: 3791036130. URL: <https://books.google.de/books?id=wh_RDwAAQBAJ>
- Kevin Schroer. *BWL Lexikon* (letzter Zugriff: 2021-01-06). URL: <https://www.bwl-lexikon.de/>
- Fabian Simon. *Rechnungswesen verstehen*. (letzter Zugriff: 2021-01-06). URL: <https://www.rechnungswesen-verstehen.de/impressum.php>
