---
document_id: PB-004
title: Naming & Terminology
version: 0.3.0
status: Draft
category: Governance
created: 2026-08-05
updated: 2026-08-05
owners:
  - Project Lead
reviewers: []
audience:
  - Human Collaborators
  - Designers
  - Developers
  - AI Assistants
  - Modders
  - Testers
  - Future Maintainers
source_of_truth: true
supersedes: []
superseded_by: null
depends_on:
  - CTX-000
  - PB-000
  - PB-001
  - PB-002
  - PB-003
related_documents:
  - PB-005
  - PB-006
  - PB-007
  - GD-100
  - TECH-100
systems: []
requirements: []
design_goals: []
tags:
  - governance
  - terminology
  - naming
  - glossary
  - identifiers
  - consistency
canonical_path: project-bible/governance/PB-004_Naming_And_Terminology.md
context_priority: critical
---

# PB-004 – Naming & Terminology

## 1. Zweck und Geltungsbereich

PB-004 schafft ein verbindliches, projektweites Vokabular, damit fachliche Konzepte über Dokumente, Implementierungen und Inhalte hinweg eindeutig bezeichnet und verstanden werden. Einheitliche Begriffe verhindern, dass unklare Synonyme dasselbe Konzept scheinbar trennen oder dass ein einzelner Ausdruck mehrere, miteinander unvereinbare Bedeutungen erhält.

Die in PB-004 festgelegte Terminologie gilt für Game Design, technische Architektur und Implementierung, Datenmodelle, Savegames, APIs, Modding-Schnittstellen und -Inhalte, Benutzeroberflächen, Szenarioinhalte sowie für Kontexte und Ausgaben von KI-Assistenten. Derselbe kanonische Begriff muss in diesen Bereichen konsistent dieselbe Bedeutung tragen, sofern eine ausdrücklich dokumentierte bereichsspezifische Abbildung oder lokalisierte Anzeigeform keine Abweichung erlaubt.

PB-004 legt die Bedeutung von Projektbegriffen und ihre zulässigen Benennungen fest. Ein Begriff ist erst dann kanonisch, wenn er in einem dafür vorgesehenen Abschnitt von PB-004 ausdrücklich definiert und das Dokument gemäß PB-000 in einen autoritativen Status überführt wurde. Bis dahin verwendete Bezeichnungen sind Arbeitsbegriffe und begründen weder allein durch häufige Verwendung noch durch ihre Verwendung in Code, Daten oder bestehenden Entwürfen eine kanonische Bedeutung.

PB-004 definiert keine vollständigen Spielmechaniken, Systemabläufe, Datenstrukturen oder Implementierungsdetails. Es stellt das gemeinsame begriffliche Fundament bereit; die fachlichen Regeln und technischen Verträge verbleiben in den jeweils zuständigen Game-Design-, Technik-, Content-, Balancing- und Entwicklungsdokumenten.

Besteht ein Konflikt zwischen einer vorgeschlagenen Begriffsdefinition in PB-004 und einem bestehenden kanonischen Dokument, darf PB-004 dieses nicht stillschweigend überschreiben. Der Konflikt muss benannt, geprüft und durch eine ausdrückliche Änderung oder Supersession der betroffenen Dokumente aufgelöst werden. Bis zu dieser Auflösung bleibt die bestehende kanonische Festlegung maßgeblich. Abweichende Verwendungen in nicht-kanonischen oder älteren Dokumenten sind bei ihrer Überarbeitung an die bestätigte Terminologie anzupassen.

### 1.1 Normative Sprachregel

Die Begriffe **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT** und **MAY** werden gemäß PB-000 normativ verwendet. Deutsche Erläuterungen verändern ihre dort festgelegte Verbindlichkeit nicht.

## 2. Grundprinzipien der Terminologie

Die folgenden Regeln gelten für jede Verwendung projektbezogener Begriffe. Sie bestimmen, wie spätere Begriffsdefinitionen erstellt, verwendet und geändert werden; sie nehmen diese Definitionen nicht vorweg.

### 2.1 Eine Bedeutung pro Begriff

Jeder kanonische Begriff MUST genau eine definierte Bedeutung besitzen. Ein Begriff MUST NOT für mehrere fachlich verschiedene Konzepte wiederverwendet werden, auch wenn der jeweilige Kontext die beabsichtigte Bedeutung vermutlich erkennen ließe.

Benötigen unterschiedliche Konzepte unterschiedliche Bedeutungen, MUST jedes Konzept eine eigene kanonische Bezeichnung erhalten. Mehrdeutige Arbeitsbegriffe MUST vor ihrer Kanonisierung aufgelöst werden.

### 2.2 Ein Begriff pro Konzept

Jedes kanonische Konzept MUST genau eine kanonische Bezeichnung besitzen. Mehrere gleichwertige Bezeichnungen für dasselbe Konzept MUST NOT parallel verwendet werden.

Insbesondere dürfen Bezeichnungen wie `Nation`, `Country` und `State` nicht allein aufgrund alltagssprachlicher Nähe austauschbar verwendet werden. Erst eine spätere Begriffsdefinition darf festlegen, ob sie verschiedene Konzepte bezeichnen oder welche einzelne Bezeichnung kanonisch ist.

Abkürzungen, lokalisierte Anzeigeformen und technische Repräsentationen MAY zugelassen werden, wenn ihre eindeutige Zuordnung zum kanonischen Begriff ausdrücklich dokumentiert ist. Sie bilden keine eigenständigen Synonyme.

### 2.3 Keine impliziten Synonyme

Autoren MUST den kanonischen Begriff verwenden und MUST NOT aus stilistischen, redaktionellen oder technischen Gründen neue Synonyme einführen. Häufige Verwendung, Übersetzung oder Implementierung macht eine abweichende Bezeichnung nicht kanonisch.

Wird eine zusätzliche oder ersetzende Bezeichnung benötigt, MUST PB-004 vor ihrer verbindlichen Verwendung erweitert oder geändert werden. Bis dahin MAY die Bezeichnung nur ausdrücklich als vorläufiger Arbeitsbegriff gekennzeichnet werden.

### 2.4 Kontextunabhängigkeit

Ein kanonischer Begriff MUST im gesamten Projekt dieselbe Bedeutung besitzen. Dies gilt insbesondere für Game Design, Engine, Datenmodell, Savegame, API, UI, Modding und Dokumentation.

Bereichsspezifische Namen oder lokalisierte Anzeigeformen MAY von der kanonischen Schreibweise abweichen, MUST jedoch eindeutig auf dasselbe Konzept verweisen und MUST dessen Bedeutung unverändert lassen. Ein Bereich MUST NOT eine eigene, widersprechende Definition etablieren.

### 2.5 Stabilität

Ein etablierter Begriff MUST stabil bleiben und MUST NOT stillschweigend umdefiniert, umbenannt oder für ein anderes Konzept wiederverwendet werden. Eine Änderung MUST in PB-004 dokumentiert, versioniert und hinsichtlich betroffener Dokumente, Daten, Schnittstellen und Migrationen geprüft werden.

Bestehende Verwendungen MUST nach einer bestätigten Änderung kontrolliert angepasst werden. Veraltete Bezeichnungen MAY für Kompatibilität fortbestehen, wenn sie ausdrücklich als veraltet markiert und eindeutig auf ihren Ersatz abgebildet sind.

### 2.6 Englische Fachbegriffe

Englische Fachbegriffe MAY als kanonische Begriffe verwendet werden, wenn mindestens einer der folgenden Gründe vorliegt:

- der Begriff bezeichnet ein projektweit eigenständiges fachliches oder technisches Konzept,
- er entspricht einer etablierten Konvention der verwendeten Architektur, Programmiersprache oder Werkzeuge,
- eine deutsche Übersetzung wäre unpräzise, missverständlich oder würde die Zuordnung zwischen Dokumentation, Daten und Code erschweren.

Dies betrifft mögliche Fachbegriffe wie `Action`, `Project`, `Entity`, `Component` oder `System`, kanonisiert diese aber noch nicht. Ob ein solcher Ausdruck kanonisch ist, entscheidet ausschließlich seine spätere Definition in PB-004.

Deutsche Beschreibungen SHOULD für Erläuterungen und normalen Fließtext verwendet werden. Sie MAY einen englischen Fachbegriff erklären, MUST aber als Beschreibung erkennbar bleiben und MUST NOT als austauschbare Alternativbezeichnung auftreten. Lokalisierte UI-Texte MAY eine deutsche Anzeigeform verwenden, sofern die fachliche Zuordnung eindeutig bleibt.

Innerhalb desselben fachlichen Zusammenhangs MUST die Sprachwahl konsistent sein. Eine bloß stilistische Mischung deutscher und englischer Bezeichnungen ist unzulässig.

### 2.7 Schreibweise

Für Benennungen gelten folgende allgemeinen Regeln:

- Dokumenttitel MUST der in PB-000 festgelegten Dokumentstruktur folgen und SHOULD den kanonischen Namen ihres Gegenstands verwenden.
- IDs MUST den für ihre ID-Familie festgelegten Aufbau und die festgelegte Großschreibung verwenden. Sie MUST stabil und maschinenlesbar sein.
- Dateinamen MUST der für ihren Dokument- oder Dateityp festgelegten Konvention folgen. Reine Schreibvarianten desselben Namens MUST vermieden werden.
- YAML-Schlüssel MUST innerhalb eines Schemas einheitlich geschrieben werden. Ihre Schreibweise MUST NOT ohne Schemaänderung variiert werden.
- Klassen und andere Typen MUST den Konventionen der jeweiligen Programmiersprache folgen und SHOULD den kanonischen Begriff eindeutig abbilden.
- Konstanten MUST den Konventionen der jeweiligen Programmiersprache folgen und MUST gegenüber veränderlichen Werten klar erkennbar sein.
- Systeme MUST über ihre stabile System-ID referenziert werden; Anzeigename, Dokumenttitel und Implementierungsname MUST eindeutig darauf abbildbar sein.
- Technische Begriffe und Identifier MUST in derselben Schreibweise verwendet werden, wenn auf dasselbe technische Artefakt Bezug genommen wird. Grammatische Anpassungen im Fließtext dürfen keine abweichenden Identifier erzeugen.

Konkrete Identifier, reservierte Namen und zulässige Abbildungen werden erst in den dafür vorgesehenen späteren Abschnitten oder zuständigen Standards festgelegt.

### 2.8 Normative Sprache und Vorrang

Spätere, ausdrücklich als kanonisch geführte Begriffsdefinitionen in PB-004 sind verbindlich. Projektartefakte MUST diese Definitionen verwenden und dürfen ihnen keine informelle Eigenbedeutung gegenüberstellen.

Bei einem terminologischen Konflikt hat PB-004 Vorrang vor Chats, Kommentaren, Tickets, Entwürfen, Beispielen und sonstigen informellen oder nicht-kanonischen Quellen. Konflikte mit anderen kanonischen Dokumenten MUST gemäß PB-000 ausdrücklich aufgelöst werden; PB-004 überschreibt sie nicht stillschweigend.

Die Wörter **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT** und **MAY** behalten in allen späteren Abschnitten von PB-004 die in PB-000 definierte normative Bedeutung. Beschreibende Beispiele, Übersetzungen und Erläuterungen erzeugen ohne ausdrückliche normative Festlegung keine zusätzlichen Begriffe oder Ausnahmen.

## 3. Allgemeine Kernbegriffe

Dieses Kapitel bildet das begriffliche Fundament für alle weiteren Terminologiebereiche von PB-004. Ab diesem Kapitel MUST jeder neu aufgenommene Begriff exakt die nachfolgend verwendete Abschnittsfolge besitzen: `Definition`, `Zweck`, `Verwendung`, optional `Darf nicht verwechselt werden mit`, `Verwandte Begriffe` und `Referenzen`. Abschnitte dürfen weder umbenannt noch durch begriffsspezifische Strukturen ersetzt werden. `Verwandte Begriffe` enthält ausschließlich Verweise auf Begriffe, `Referenzen` ausschließlich Dokument-IDs.

## World

### Definition

Die `World` ist die Gesamtheit aller innerhalb eines laufenden Spielzusammenhangs berücksichtigten Räume, Akteure, Zustände und Beziehungen. Sie bildet den Bezugsraum, in dem eine `Simulation` stattfindet.

### Zweck

Der Begriff grenzt den vollständigen betrachteten Zusammenhang von einzelnen Inhalten, Zustandsausschnitten und deren zeitlicher Entwicklung ab.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Scenario`: definiert die Ausgangsbedingungen und Vorgaben einer World.
- `Game State`: beschreibt den Zustand einer World zu einem bestimmten Zeitpunkt.

### Verwandte Begriffe

- Scenario
- Simulation
- Game State
- Entity

### Referenzen

- PB-001
- PB-002
- PB-003

## Scenario

### Definition

Ein `Scenario` ist eine in sich geschlossene Festlegung der für einen Spielbeginn verfügbaren Inhalte, Regeln, Ausgangsbedingungen und zeitlichen Einordnung. Es MUST von den allgemeinen Grundlagen des Projekts trennbar bleiben.

### Zweck

Der Begriff bezeichnet den austauschbaren Rahmen, aus dem eine konkrete World initial hervorgehen kann, ohne diesen Rahmen mit der allgemeinen Produkt- oder Systemidentität gleichzusetzen.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `World`: umfasst den tatsächlich betrachteten und fortgeschriebenen Spielzusammenhang.
- `Campaign`: ist der fortlaufende Spielverlauf auf Grundlage eines Scenario.

### Verwandte Begriffe

- World
- Campaign
- Timeline
- Calendar
- Configuration

### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

## Campaign

### Definition

Eine `Campaign` ist ein zusammenhängender, fortlaufender Spielverlauf, der auf einem Scenario beruht und die Entwicklung seiner World über die Zeit umfasst.

### Zweck

Der Begriff bezeichnet die dauerhafte Kontinuität eines begonnenen Spiels einschließlich seines individuellen Verlaufs.

### Verwendung

- Game Design
- Savegames
- UI
- Dokumentation

### Darf nicht verwechselt werden mit

- `Scenario`: legt den Rahmen und die Ausgangsbedingungen fest.
- `Timeline`: ordnet zeitbezogene Zustände und Vorgänge.

### Verwandte Begriffe

- Scenario
- World
- Timeline
- Game State

### Referenzen

- PB-001
- PB-002
- PB-003

## Timeline

### Definition

Eine `Timeline` ist die geordnete zeitliche Achse, auf der Zustände und Vorgänge einer World eingeordnet werden. Sie bestimmt deren Reihenfolge und zeitliche Lage, ohne selbst deren fachliche Wirkung festzulegen.

### Zweck

Der Begriff stellt einen gemeinsamen zeitlichen Bezugsrahmen für Verlauf, Vergleich und Nachvollziehbarkeit bereit.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Calendar`: bildet Positionen einer Timeline auf benannte Zeiteinheiten ab.
- `Campaign`: umfasst den gesamten zusammenhängenden Spielverlauf.

### Verwandte Begriffe

- Calendar
- Date
- Tick
- Time Step
- Campaign

### Referenzen

- PB-002
- PB-003

## Calendar

### Definition

Ein `Calendar` ist ein Regelsystem zur Gliederung und Benennung von Positionen auf einer Timeline. Er legt fest, wie zeitliche Positionen als Dates ausgedrückt werden.

### Zweck

Der Begriff ermöglicht eine einheitliche, für Inhalte und Darstellung nutzbare zeitliche Einordnung.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Timeline`: ist die zugrunde liegende zeitliche Achse.
- `Date`: bezeichnet eine einzelne Position gemäß einem Calendar.

### Verwandte Begriffe

- Timeline
- Date
- Scenario

### Referenzen

- PB-000
- PB-002

## Date

### Definition

Ein `Date` ist die eindeutige Bezeichnung einer zeitlichen Position gemäß einem bestimmten Calendar.

### Zweck

Der Begriff erlaubt es, Zustände und Vorgänge auf einer Timeline eindeutig zu verorten und verständlich darzustellen.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Calendar`: definiert das Regelsystem der zeitlichen Bezeichnung.
- `Tick`: bezeichnet einen diskreten Fortschritt der Simulation.

### Verwandte Begriffe

- Calendar
- Timeline
- Tick

### Referenzen

- PB-000
- PB-002

## Tick

### Definition

Ein `Tick` ist ein einzelner, diskreter Fortschritt der Simulation entlang ihrer Timeline. Er bezeichnet eine Ordnungsposition des Simulationsfortschritts und keine festgelegte kalendarische Dauer.

### Zweck

Der Begriff schafft eine eindeutige Einheit für die Reihenfolge diskreter Simulationsfortschritte.

### Verwendung

- Game Design
- Engine
- Savegames
- APIs
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Time Step`: bezeichnet den zeitlichen Umfang eines Simulationsfortschritts.
- `Date`: bezeichnet eine Position gemäß einem Calendar.

### Verwandte Begriffe

- Time Step
- Timeline
- Date
- Simulation

### Referenzen

- PB-002
- PB-003
- TECH-100

## Time Step

### Definition

Ein `Time Step` ist der zeitliche Umfang, um den eine Simulation bei einem Fortschritt weitergeführt wird. Seine Größe ist nicht durch den Begriff selbst festgelegt.

### Zweck

Der Begriff trennt die verarbeitete Zeitspanne von der bloßen Reihenfolge einzelner Simulationsfortschritte.

### Verwendung

- Game Design
- Engine
- Savegames
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Tick`: bezeichnet den einzelnen diskreten Simulationsfortschritt.
- `Date`: bezeichnet eine kalendarisch ausgedrückte zeitliche Position.

### Verwandte Begriffe

- Tick
- Timeline
- Calendar
- Simulation

### Referenzen

- PB-002
- PB-003
- TECH-100

## Simulation

### Definition

Die `Simulation` ist die autoritative, regelgebundene Fortschreibung des Game State über die Zeit. Sie bestimmt zulässige Zustandsänderungen und deren verbindliche Ergebnisse.

### Zweck

Der Begriff bezeichnet die Instanz fachlicher Autorität, durch die die World konsistent fortgeführt und Auswirkungen nachvollziehbar bestimmt werden.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `System`: trägt einen abgegrenzten Teil der Regeln und Zuständigkeiten bei.
- `Game State`: ist der autoritative Zustand, den die Simulation fortschreibt.

### Verwandte Begriffe

- Game State
- World
- System
- Tick
- Time Step

### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

## Game State

### Definition

Der `Game State` ist die vollständige Menge der zu einem bestimmten Simulationszeitpunkt autoritativ geltenden und für die Fortführung relevanten Zustandsinformationen einer Campaign.

### Zweck

Der Begriff grenzt verbindlichen Simulationszustand von Darstellung, Erzählung, abgeleiteten Informationen und unverbindlichen Vorschlägen ab.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `World`: ist der gesamte betrachtete Spielzusammenhang.
- `Data`: bezeichnet Informationen unabhängig von ihrer Autorität oder Rolle.
- `Configuration`: beeinflusst Verhalten, ist aber nicht allein deshalb Teil des laufenden Zustands.

### Verwandte Begriffe

- Simulation
- Campaign
- World
- Entity
- Data

### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

## Entity

### Definition

Eine `Entity` ist ein innerhalb des Projekts eindeutig unterscheidbarer Gegenstand, dem Zustand, Eigenschaften oder Beziehungen zugeordnet werden können. Der Begriff setzt keine bestimmte technische Repräsentation oder Architektur voraus.

### Zweck

Der Begriff stellt eine gemeinsame Bezeichnung für einzeln referenzierbare fachliche Gegenstände bereit.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Identifier`: bezeichnet eine stabile Referenz auf einen Gegenstand, nicht den Gegenstand selbst.
- `Module`: ist eine abgegrenzte organisatorische Einheit.

### Verwandte Begriffe

- Identifier
- Game State
- Data
- World

### Referenzen

- PB-000
- PB-002
- PB-003
- TECH-100

## Identifier

### Definition

Ein `Identifier` ist eine innerhalb seines festgelegten Geltungsbereichs eindeutige und stabile Referenz auf genau einen bestimmten Gegenstand. Seine konkrete Syntax und Vergaberegeln werden durch den jeweils zuständigen Standard festgelegt.

### Zweck

Der Begriff ermöglicht eindeutige, dauerhafte und bereichsübergreifend nachvollziehbare Referenzen.

### Verwendung

- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Entity`: ist der referenzierte Gegenstand.
- Anzeigename: dient der menschlichen Darstellung und muss nicht eindeutig oder stabil sein.

### Verwandte Begriffe

- Entity
- Data
- Configuration

### Referenzen

- PB-000
- PB-004
- PB-006

## System

### Definition

Ein `System` ist eine fachlich abgegrenzte Gesamtheit zusammengehöriger Regeln, Zuständigkeiten, Zustände und Beziehungen, die einen bestimmten Teil des Projekts beschreibt oder trägt. Ein System ist unabhängig von seiner späteren technischen Aufteilung definiert.

### Zweck

Der Begriff schafft stabile fachliche Grenzen für Entwurf, Verantwortung, Abhängigkeiten und Dokumentation.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Module`: gliedert Artefakte organisatorisch oder technisch.
- `Simulation`: führt den autoritativen Game State unter Beteiligung von Systemen fort.

### Verwandte Begriffe

- Module
- Simulation
- Game State
- Configuration

### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003
- TECH-100

## Module

### Definition

Ein `Module` ist eine abgegrenzte, benannte Einheit von zusammengehörigen Artefakten mit festgelegter Verantwortung. Seine Grenze dient der Strukturierung und begründet keine eigenständige fachliche Bedeutung.

### Zweck

Der Begriff ermöglicht eine klare organisatorische Aufteilung und Zuordnung von Verantwortlichkeiten, ohne fachliche Systemgrenzen vorwegzunehmen.

### Verwendung

- Engine
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `System`: bezeichnet eine fachliche Gesamtheit unabhängig von ihrer technischen oder organisatorischen Aufteilung.
- `Entity`: bezeichnet einen einzeln referenzierbaren Gegenstand.

### Verwandte Begriffe

- System
- Data
- Configuration

### Referenzen

- PB-000
- PB-003
- TECH-100

## Data

### Definition

`Data` sind formal darstellbare Informationen, die im Projekt gespeichert, übertragen, ausgewertet oder dargestellt werden können. Der Begriff legt weder Autorität noch Herkunft, Lebensdauer oder technische Repräsentation dieser Informationen fest.

### Zweck

Der Begriff stellt eine neutrale gemeinsame Bezeichnung für verarbeitbare Informationen bereit.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Game State`: ist die autoritative Teilmenge der für die Fortführung einer Campaign relevanten Zustandsinformationen.
- `Configuration`: besteht aus Vorgaben, die zulässiges oder gewünschtes Verhalten festlegen.

### Verwandte Begriffe

- Game State
- Configuration
- Entity
- Identifier

### Referenzen

- PB-000
- PB-002
- PB-003
- TECH-100

## Configuration

### Definition

Eine `Configuration` ist eine festgelegte Menge von Vorgaben, durch die zulässiges oder gewünschtes Verhalten und auswählbare Varianten bestimmt werden, ohne das zugrunde liegende Konzept neu zu definieren.

### Zweck

Der Begriff trennt anpassbare Vorgaben von fachlichen Definitionen, laufendem Game State und allgemeinen Data.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `Data`: umfasst Informationen unabhängig von ihrer steuernden Rolle.
- `Game State`: beschreibt den autoritativen Zustand einer laufenden Campaign.
- `Scenario`: legt einen vollständigen inhaltlichen und regelbezogenen Ausgangsrahmen fest.

### Verwandte Begriffe

- Data
- Game State
- Scenario
- System
- Module

### Referenzen

- PB-000
- PB-002
- PB-003
- TECH-100
