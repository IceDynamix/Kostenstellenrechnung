---
title: Kostenstellenrechnung
author: IceDynamix
date: 2020-01-06
lang: de
theme: metropolis
header-includes: | # used for scaling the table
    \usepackage{adjustbox}
numbersections: true # used for handout
---

# Gesamtbild

::: incremental

1. Kostenartenrechnung <!-- Einteilung in Einzel/Gemeinkosten -->
    - Einzelkosten <!-- Einem Kostenträger zuzuordnen -->
    - Gemeinkosten <!-- Keinem oder nur schwer einem Kostenträger zuzuordnen -->
2. **Kostenstellenrechnung**
3. Kostenträgerrechnung <!-- Wofür sind die Kosten angefallen? -->

:::

# Kostenstellenrechnung

- Verbindung zwischen Kostenartenrechnung und Kostenstellenrechnung <!-- Wie gesagt, zweiter schritt -->
- Hilfsmittel, um Gemeinkosten Kostenträgern zuzuordnen <!-- Einzelkosten sind direkt zuordbar -->
- Unterteilung von Gemeinkosten zu Kostenstellen <!-- Kostenstellen können Abteilungen eines Betriebs sein -->
- Erfasst und berechnet im **Betriebsabrechnungsbogen** <!-- Im großen und ganzen nur ein Spreadsheet auf Papier -->

# Betriebsabrechnungsbogen

Tabelle mit Spalten für

- Gemeinkostenart <!-- Name/Bezeichnung -->
- Höhe der Kosten
- Verteilungsschlüssel <!-- Grundlage auf welcher die Kosten verteilt werden-->
- Kostenstellen <!-- Die festgelegten Kostenstellen -->

Später kann das Verhältnis der Kostenstellensumme als Basis für die
Kostenträgerrechnung genutzt werden.

\pagebreak

# Beispiel Möbelfirma

:::columns
:::: column
::::: incremental

- **Gemeinkosten**
    - Miete - 50,000
    - Strom - 4,000
    - Hilfsstoffe - 25,000
    - Werbungskosten - 20,000

:::::
::::

:::: column

<!-- Es wurden nur 3 Kostenstellen ausgewählt um das Beispiel zu vereinfachen.
Weitere übliche Kostenstellen sind zb Vertrieb. Die Verhältnisse sind auch nicht
unbedingt gemäß der Realität. -->

::::: incremental

- **Kostenstellen**
    - Material <!-- Lager -->
    - Fertigung <!-- Produktion -->
    - Verwaltung <!-- Verwaltung halt -->

:::::
::::
:::

<!-- Live Demo: Google Sheets -->

# Betriebsabrechnungsbogen

\begin{table}[!h]
\begin{adjustbox}{width=\textwidth}
\begin{tabular}{r|rcc|rrr}

           \textbf{Art} & \textbf{Kosten} & \textbf{V.Schlüssel} & \textbf{Verhältnis} & \textbf{Material} & \textbf{Fertigung} & \textbf{Verwaltung} \\
\hline
                  Miete &  50,000 & $m^2$      & 3:2:1 & 62,500 & 25,000 & 12,500 \\
                  Strom &   4,000 & $kWh$      & 2:6:2 & 10,000 & 30,000 & 10,000 \\
            Hilfsstoffe &  25,000 & Stückliste & 1:3:1 & 2,000 & 16,000 & 2,000 \\
         Werbungskosten &  20,000 & Verwaltung & 0:0:1 & 0 & 0 & 20,000 \\
\hline
         \textbf{Summe} & 190,000 &            &       & 74,500 & 71,000 & 44,500 \\
    \textbf{Verhältnis} &         &            &       & 39.21\% & 37.37\% & 23.42\%

\end{tabular}
\end{adjustbox}
\end{table}

# Quellen

<!-- too lazy to set up bib rn lmao -->

- Adolf G. Coenenberg, Thomas M. Fischer, Thomas Günther. *Kostenrechnung und Kostenanalyse*. Schäffer-Poeschel. 2016. ISBN: 3791036130. URL: <https://books.google.de/books?id=wh_RDwAAQBAJ>
- Kevin Schroer. *BWL Lexikon* (letzter Zugriff: 2021-01-06). URL: <https://www.bwl-lexikon.de/>
- Fabian Simon. *Rechnungswesen verstehen*. (letzter Zugriff: 2021-01-06). URL: <https://www.rechnungswesen-verstehen.de/impressum.php>
