---
document_id: PB-004
title: Naming & Terminology
version: 0.4.0
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

## 4. Politische Terminologie

Dieses Kapitel definiert die grundlegenden politischen Begriffe des Projekts. Die Begriffe bezeichnen ausschließlich politische Konzepte; ihre Definitionen legen weder Gameplayregeln noch Implementierung oder Balancing fest.

## Government

### Definition

Ein `Government` ist die Gesamtheit der Personen und Organe, die innerhalb eines State zu einem bestimmten Zeitpunkt dessen oberste politische Leitungs- und Entscheidungsfunktionen ausüben.

### Zweck

Der Begriff bezeichnet die jeweils handelnde politische Führung und grenzt sie von der dauerhaften politischen Ordnung und ihren Einrichtungen ab.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `State`: ist die dauerhafte politische und rechtliche Organisation.
- `Regime`: bezeichnet die grundlegende Ordnung politischer Herrschaft.

### Verwandte Begriffe

- State
- Regime
- Cabinet
- Executive
- Head of Government

### Referenzen

- PB-001
- PB-002
- PB-003

## State

### Definition

Ein `State` ist eine dauerhafte politische und rechtliche Organisation, die über Institutionen eine Bevölkerung und ein Gebiet ordnet und dafür Sovereignty beansprucht.

### Zweck

Der Begriff bezeichnet die organisierte Trägerin öffentlicher Herrschaft unabhängig von ihrer jeweiligen Führung, gesellschaftlichen Identität oder geografischen Benennung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: übt die gegenwärtige politische Leitung aus.
- `Nation`: bezeichnet eine kollektive politische oder gesellschaftliche Identität.
- `Country`: bezeichnet eine territorial-politische Einheit als Ganzes.

### Verwandte Begriffe

- Government
- Nation
- Country
- Sovereignty
- Institution

### Referenzen

- PB-001
- PB-002
- PB-003

## Nation

### Definition

Eine `Nation` ist eine als zusammengehörig verstandene politische oder gesellschaftliche Gemeinschaft, die sich auf eine gemeinsame kollektive Identität bezieht.

### Zweck

Der Begriff bezeichnet kollektive Zugehörigkeit, ohne sie mit einer staatlichen Organisation oder einem bestimmten Gebiet gleichzusetzen.

### Verwendung

- Game Design
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `State`: ist eine politische und rechtliche Organisation.
- `Country`: ist eine territorial-politische Einheit.

### Verwandte Begriffe

- State
- Country
- Sovereignty
- Autonomy

### Referenzen

- PB-001
- PB-002
- PB-003

## Country

### Definition

Ein `Country` ist eine als Einheit betrachtete Verbindung aus Gebiet, Bevölkerung und politischer Ordnung, die in politischen und internationalen Zusammenhängen als eigenständiger Akteur referenziert wird.

### Zweck

Der Begriff stellt die gemeinsame Bezeichnung für die territorial-politische Gesamteinheit bereit, ohne sie auf State, Government oder Nation zu reduzieren.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

### Darf nicht verwechselt werden mit

- `State`: bezeichnet die dauerhafte politische und rechtliche Organisation.
- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Nation`: bezeichnet eine kollektive Identität.

### Verwandte Begriffe

- State
- Government
- Nation
- Sovereignty

### Referenzen

- PB-001
- PB-002
- PB-003

## Regime

### Definition

Ein `Regime` ist die grundlegende Ordnung, nach der politische Herrschaft innerhalb eines State erlangt, ausgeübt, begrenzt und übertragen wird.

### Zweck

Der Begriff bezeichnet die beständige Struktur politischer Herrschaft jenseits der jeweils amtierenden Personen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: ist die gegenwärtig handelnde politische Führung.
- `Constitution`: ist die grundlegende normative Ordnung eines State.

### Verwandte Begriffe

- Government
- State
- Constitution
- Legitimacy
- Authority

### Referenzen

- PB-002
- PB-003

## Constitution

### Definition

Eine `Constitution` ist die grundlegende normative Ordnung eines State, welche die Ausübung öffentlicher Authority, die maßgeblichen Institutionen und deren Beziehungen festlegt.

### Zweck

Der Begriff bezeichnet den obersten Ordnungsrahmen, an dem die staatliche Herrschaftsstruktur und ihre Zuständigkeiten ausgerichtet sind.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Law`: ist eine verbindliche allgemeine Norm innerhalb der politischen Ordnung.
- `Regime`: bezeichnet die tatsächliche grundlegende Ordnung politischer Herrschaft.

### Verwandte Begriffe

- State
- Regime
- Institution
- Law
- Authority

### Referenzen

- PB-002
- PB-003

## Institution

### Definition

Eine `Institution` ist eine dauerhaft etablierte politische oder rechtliche Ordnungseinheit mit anerkannten Aufgaben, Zuständigkeiten oder Verfahrensregeln.

### Zweck

Der Begriff bezeichnet beständige Träger und Ordnungen politischer Funktionen unabhängig von einzelnen Amtsinhabern.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Public Administration`: bezeichnet die Gesamtheit der Einrichtungen und Tätigkeiten zur Ausführung öffentlicher Aufgaben.

### Verwandte Begriffe

- Constitution
- State
- Ministry
- Parliament
- Public Administration

### Referenzen

- PB-002
- PB-003

## Law

### Definition

Ein `Law` ist eine von zuständiger öffentlicher Authority gesetzte oder anerkannte, allgemein verbindliche Norm innerhalb eines State.

### Zweck

Der Begriff bezeichnet verbindliche politische und rechtliche Vorgaben unterhalb der grundlegenden Verfassungsordnung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Constitution`: bildet die grundlegende normative Ordnung.
- `Authority`: ist die anerkannte Befugnis, verbindliche Entscheidungen zu treffen.

### Verwandte Begriffe

- Constitution
- Legislature
- Judiciary
- Authority
- Institution

### Referenzen

- PB-002
- PB-003

## Cabinet

### Definition

Ein `Cabinet` ist das kollegiale Leitungsgremium des Government, in dem der Head of Government und die für zentrale Regierungsbereiche verantwortlichen Mitglieder zusammenwirken.

### Zweck

Der Begriff bezeichnet die gemeinsame politische Führung und Abstimmung der obersten Regierungsverantwortlichen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: umfasst die politische Führung insgesamt.
- `Ministry`: ist eine einzelne nach Aufgabenbereich gegliederte Regierungsinstitution.

### Verwandte Begriffe

- Government
- Ministry
- Executive
- Head of Government

### Referenzen

- PB-002
- PB-003

## Ministry

### Definition

Ein `Ministry` ist eine nach einem öffentlichen Aufgabenbereich gegliederte Institution des Government unter politischer Leitung.

### Zweck

Der Begriff bezeichnet die dauerhafte institutionelle Bündelung von Verantwortung für einen abgegrenzten Regierungsbereich.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Cabinet`: ist das kollegiale Leitungsgremium des Government.
- `Public Administration`: umfasst die öffentliche Verwaltung insgesamt.

### Verwandte Begriffe

- Government
- Cabinet
- Executive
- Institution
- Public Administration

### Referenzen

- PB-002
- PB-003

## Parliament

### Definition

Ein `Parliament` ist eine beratende und beschlussfassende politische Institution mit zusammengesetzter Mitgliedschaft, die insbesondere öffentliche Repräsentations- und Gesetzgebungsfunktionen wahrnimmt.

### Zweck

Der Begriff bezeichnet die konkrete institutionelle Versammlung, in der politische Beratung, Repräsentation und verbindliche Beschlussfassung gebündelt sind.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Legislature`: bezeichnet die Funktion oder Gesamtheit der gesetzgebenden Staatsgewalt.
- `Cabinet`: ist das kollegiale Leitungsgremium des Government.

### Verwandte Begriffe

- Legislature
- Institution
- Law
- Political Party
- Opposition

### Referenzen

- PB-002
- PB-003

## Legislature

### Definition

Die `Legislature` ist die Institution oder Gesamtheit von Institutionen eines State, der die Zuständigkeit zur Beratung und Verabschiedung von Laws zugeordnet ist.

### Zweck

Der Begriff bezeichnet die gesetzgebende Staatsfunktion unabhängig davon, durch welche konkrete institutionelle Form sie wahrgenommen wird.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Parliament`: ist eine konkrete politische Institution, die gesetzgebende Funktionen wahrnehmen kann.
- `Executive`: bezeichnet die leitende und ausführende Staatsgewalt.

### Verwandte Begriffe

- Parliament
- Executive
- Judiciary
- Law
- Constitution

### Referenzen

- PB-002
- PB-003

## Executive

### Definition

Die `Executive` ist die Institution oder Gesamtheit von Institutionen eines State, der die politische Leitung und Ausführung von Laws und öffentlichen Entscheidungen zugeordnet ist.

### Zweck

Der Begriff bezeichnet die leitende und ausführende Staatsfunktion unabhängig von ihren konkreten Organen oder Amtsinhabern.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die jeweils handelnde politische Führung.
- `Public Administration`: führt öffentliche Aufgaben innerhalb zugewiesener Zuständigkeiten aus.

### Verwandte Begriffe

- Government
- Legislature
- Judiciary
- Cabinet
- Public Administration

### Referenzen

- PB-002
- PB-003

## Judiciary

### Definition

Die `Judiciary` ist die Institution oder Gesamtheit von Institutionen eines State, der die verbindliche Auslegung und Anwendung von Law in Streit- und Entscheidungsfällen zugeordnet ist.

### Zweck

Der Begriff bezeichnet die rechtsprechende Staatsfunktion unabhängig von ihrer konkreten institutionellen Gliederung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Legislature`: verabschiedet Laws.
- `Executive`: leitet und vollzieht öffentliche Entscheidungen.

### Verwandte Begriffe

- Legislature
- Executive
- Law
- Constitution
- Institution

### Referenzen

- PB-002
- PB-003

## Head of State

### Definition

Der `Head of State` ist das Amt, das einen State in seiner obersten institutionellen Kontinuität und Repräsentation verkörpert.

### Zweck

Der Begriff bezeichnet die staatliche Spitzenfunktion unabhängig davon, ob sie mit der Leitung des Government verbunden ist.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Head of Government`: leitet das Government.
- `Government`: ist die Gesamtheit der gegenwärtigen politischen Führung.

### Verwandte Begriffe

- State
- Government
- Head of Government
- Constitution
- Authority

### Referenzen

- PB-002
- PB-003

## Head of Government

### Definition

Der `Head of Government` ist das Amt, dem die politische Leitung und Koordination des Government zugeordnet ist.

### Zweck

Der Begriff bezeichnet die führende Regierungsfunktion unabhängig von ihrer Amtsbezeichnung oder ihrer Verbindung mit dem Head of State.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Head of State`: verkörpert die oberste institutionelle Kontinuität und Repräsentation des State.
- `Cabinet`: ist ein kollegiales Leitungsgremium.

### Verwandte Begriffe

- Government
- Cabinet
- Head of State
- Executive

### Referenzen

- PB-002
- PB-003

## Political Party

### Definition

Eine `Political Party` ist eine dauerhaft organisierte politische Vereinigung, die gemeinsame politische Ziele verfolgt und auf die Besetzung oder Ausübung öffentlicher Authority hinwirkt.

### Zweck

Der Begriff bezeichnet eine beständige Organisation zur Bündelung politischer Programme, Unterstützung und Führungspersonen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte Strömung innerhalb eines größeren politischen Zusammenhangs.
- `Interest Group`: vertritt gemeinsame Interessen, ohne notwendig öffentliche Authority anzustreben.

### Verwandte Begriffe

- Faction
- Interest Group
- Opposition
- Coalition
- Ideology

### Referenzen

- PB-002
- PB-003

## Faction

### Definition

Eine `Faction` ist eine organisierte politische Strömung innerhalb eines größeren politischen Akteurs oder Zusammenhangs, die gemeinsame Ziele verfolgt und dessen Richtung oder Entscheidungen beeinflussen will.

### Zweck

Der Begriff bezeichnet interne politische Organisation und Konkurrenz, ohne daraus eine eigenständige Political Party oder Interest Group abzuleiten.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Political Party`: ist eine eigenständige dauerhafte politische Vereinigung.
- `Interest Group`: organisiert sich um gemeinsame Interessen.

### Verwandte Begriffe

- Political Party
- Interest Group
- Coalition
- Opposition
- Ideology

### Referenzen

- PB-002
- PB-003

## Interest Group

### Definition

Eine `Interest Group` ist eine organisierte Gemeinschaft, die gemeinsame gesellschaftliche oder materielle Interessen gegenüber politischen Entscheidungsträgern vertritt.

### Zweck

Der Begriff bezeichnet die gebündelte politische Einflussnahme aus gemeinsamen Interessen, ohne die Übernahme öffentlicher Authority vorauszusetzen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Political Party`: wirkt auf die Besetzung oder Ausübung öffentlicher Authority hin.
- `Faction`: ist eine Strömung innerhalb eines größeren politischen Zusammenhangs.

### Verwandte Begriffe

- Political Party
- Faction
- Opposition
- Political Capital

### Referenzen

- PB-002
- PB-003

## Opposition

### Definition

Die `Opposition` ist die Gesamtheit politischer Akteure, die der gegenwärtigen politischen Führung oder deren maßgeblicher Ausrichtung organisiert entgegentreten.

### Zweck

Der Begriff bezeichnet die relationale politische Gegenposition zur amtierenden Führung, ohne eine bestimmte Organisationsform vorauszusetzen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte interne Strömung.
- `Coalition`: koordiniert mehrere Akteure zur Verfolgung gemeinsamer politischer Ziele.

### Verwandte Begriffe

- Government
- Political Party
- Faction
- Coalition
- Legitimacy

### Referenzen

- PB-002
- PB-003

## Coalition

### Definition

Eine `Coalition` ist eine vereinbarte Zusammenarbeit mehrerer politischer Akteure zur Verfolgung gemeinsamer politischer Ziele unter Erhalt ihrer jeweiligen Eigenständigkeit.

### Zweck

Der Begriff bezeichnet koordinierte politische Zusammenarbeit, ohne die beteiligten Akteure zu einer einzigen Organisation zu verschmelzen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Political Party`: ist selbst eine dauerhafte politische Vereinigung.
- `Faction`: besteht innerhalb eines größeren politischen Zusammenhangs.

### Verwandte Begriffe

- Political Party
- Faction
- Government
- Opposition
- Cabinet

### Referenzen

- PB-002
- PB-003

## Ideology

### Definition

Eine `Ideology` ist ein zusammenhängendes System politischer Grundannahmen, Werte und Zielvorstellungen zur Deutung und Gestaltung gesellschaftlicher und politischer Ordnung.

### Zweck

Der Begriff bezeichnet den normativen und deutenden Bezugsrahmen politischer Ziele und Positionen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Political Party`: ist eine politische Organisation und kein System von Vorstellungen.
- `Regime`: ist die grundlegende Ordnung politischer Herrschaft.

### Verwandte Begriffe

- Political Party
- Faction
- Regime
- Legitimacy
- Constitution

### Referenzen

- PB-001
- PB-002
- PB-003

## Legitimacy

### Definition

`Legitimacy` ist das Ausmaß, in dem die Ausübung politischer Authority von den für eine politische Ordnung maßgeblichen Akteuren als berechtigt anerkannt wird.

### Zweck

Der Begriff bezeichnet die anerkannte Rechtfertigung politischer Herrschaft und grenzt sie von bloßer Durchsetzungsfähigkeit ab.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Authority`: ist die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Sovereignty`: ist der Anspruch auf höchste politische Authority.

### Verwandte Begriffe

- Authority
- Sovereignty
- Government
- Regime
- Opposition

### Referenzen

- PB-002
- PB-003

## Authority

### Definition

`Authority` ist die anerkannte Befugnis eines politischen Akteurs oder einer Institution, innerhalb eines bestimmten Geltungsbereichs verbindliche Entscheidungen zu treffen.

### Zweck

Der Begriff bezeichnet rechtfertigbare politische Entscheidungsbefugnis und grenzt sie von Fähigkeit, Einfluss oder bloßer Gewalt ab.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Legitimacy`: bezeichnet die Anerkennung politischer Herrschaft als berechtigt.
- `Sovereignty`: bezeichnet den Anspruch auf höchste politische Authority.

### Verwandte Begriffe

- Legitimacy
- Sovereignty
- Constitution
- Law
- Institution

### Referenzen

- PB-001
- PB-002
- PB-003

## Sovereignty

### Definition

`Sovereignty` ist der Anspruch eines State auf höchste politische Authority über seine inneren Angelegenheiten und auf politische Unabhängigkeit gegenüber äußeren Autoritäten.

### Zweck

Der Begriff bezeichnet die oberste Zuordnung politischer Entscheidungsgewalt und die Unabhängigkeit ihrer Ausübung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Autonomy`: ist begrenzte eigenständige Entscheidungsbefugnis innerhalb einer übergeordneten Ordnung.
- `Authority`: kann auf einen begrenzten Geltungsbereich bezogen sein.

### Verwandte Begriffe

- State
- Authority
- Legitimacy
- Autonomy
- Country

### Referenzen

- PB-001
- PB-002
- PB-003

## Autonomy

### Definition

`Autonomy` ist die anerkannte Befugnis eines politischen Akteurs oder Gebietes, bestimmte Angelegenheiten innerhalb einer übergeordneten politischen Ordnung eigenständig zu regeln.

### Zweck

Der Begriff bezeichnet abgegrenzte politische Selbstbestimmung, ohne vollständige Sovereignty vorauszusetzen.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Sovereignty`: beansprucht höchste politische Authority und äußere Unabhängigkeit.
- `Decentralization`: beschreibt die Verteilung von Zuständigkeiten weg von einer politischen Mitte.

### Verwandte Begriffe

- Sovereignty
- Authority
- Centralization
- Decentralization
- State

### Referenzen

- PB-002
- PB-003

## Centralization

### Definition

`Centralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten bei einer übergeordneten politischen Mitte gebündelt sind.

### Zweck

Der Begriff bezeichnet die vertikale Konzentration öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet anerkannte Entscheidungsbefugnis als solche.
- `Administrative Capacity`: bezeichnet die Fähigkeit, öffentliche Entscheidungen wirksam auszuführen.

### Verwandte Begriffe

- Decentralization
- Autonomy
- Authority
- State
- Public Administration

### Referenzen

- PB-002
- PB-003

## Decentralization

### Definition

`Decentralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten von einer übergeordneten politischen Mitte auf nachgeordnete oder eigenständige Einheiten verteilt sind.

### Zweck

Der Begriff bezeichnet die vertikale Verteilung öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Autonomy`: bezeichnet die anerkannte eigenständige Regelungsbefugnis eines Akteurs oder Gebietes.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Ausführung öffentlicher Aufgaben.

### Verwandte Begriffe

- Centralization
- Autonomy
- Authority
- State
- Public Administration

### Referenzen

- PB-002
- PB-003

## Political Capital

### Definition

`Political Capital` ist die verfügbare Fähigkeit eines politischen Akteurs, Unterstützung, Beziehungen, Vertrauen und Einfluss zur Durchsetzung politischer Vorhaben zu mobilisieren.

### Zweck

Der Begriff bezeichnet die politisch nutzbare Handlungsmacht, die aus Unterstützung und Einflussbeziehungen hervorgeht.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Authority`: ist anerkannte verbindliche Entscheidungsbefugnis.
- `Legitimacy`: ist die Anerkennung politischer Herrschaft als berechtigt.

### Verwandte Begriffe

- Authority
- Legitimacy
- Government
- Political Party
- Interest Group

### Referenzen

- PB-002
- PB-003

## Administrative Capacity

### Definition

`Administrative Capacity` ist die Fähigkeit eines State und seiner zuständigen Institutionen, öffentliche Entscheidungen verlässlich, wirksam und innerhalb ihres Geltungsbereichs auszuführen.

### Zweck

Der Begriff bezeichnet die tatsächliche organisatorische Leistungsfähigkeit öffentlicher Aufgabenerfüllung unabhängig von der formalen Zuweisung von Authority.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Public Administration`: bezeichnet die Einrichtungen und Tätigkeiten, durch die öffentliche Aufgaben ausgeführt werden.

### Verwandte Begriffe

- Public Administration
- State
- Institution
- Ministry
- Centralization
- Decentralization

### Referenzen

- PB-002
- PB-003

## Public Administration

### Definition

Die `Public Administration` ist die Gesamtheit der dauerhaften öffentlichen Einrichtungen, Verfahren und Tätigkeiten, durch die Laws und verbindliche politische Entscheidungen ausgeführt sowie öffentliche Aufgaben wahrgenommen werden.

### Zweck

Der Begriff bezeichnet den institutionellen Vollzug öffentlicher Aufgaben jenseits der politischen Richtungsentscheidung durch das Government.

### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

### Darf nicht verwechselt werden mit

- `Government`: bestimmt die gegenwärtige politische Leitung.
- `Executive`: bezeichnet die leitende und ausführende Staatsfunktion insgesamt.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Aufgabenerfüllung.

### Verwandte Begriffe

- Administrative Capacity
- Executive
- Government
- Ministry
- Institution
- Law

### Referenzen

- PB-002
- PB-003
