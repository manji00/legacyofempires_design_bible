---
document_id: PB-004
title: Naming & Terminology
version: 0.7.0
status: Draft
category: Governance
created: 2026-08-05
updated: 2026-08-06
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

Die politischen Begriffe sind fachlich und hierarchisch gruppiert. Die fünf Gruppen bilden unterschiedliche Ebenen politischer Ordnung ab und machen die Beziehungen sowie notwendigen Abgrenzungen zwischen den Begriffen sichtbar.

Die Reihenfolge führt bewusst von politischen Entitäten über die institutionelle Ordnung und ihre Organe bis zu politischen Akteuren und abstrakten Konzepten. Spätere Dokumente MUST diese Begriffe entsprechend ihrer hier festgelegten kanonischen Bedeutung verwenden.

## 4.1 Politische Entitäten

### Country

#### Definition

Ein `Country` ist eine als Einheit betrachtete Verbindung aus Gebiet, Bevölkerung und politischer Ordnung, die in politischen und internationalen Zusammenhängen als eigenständiger Akteur referenziert wird.

#### Zweck

Der Begriff stellt die gemeinsame Bezeichnung für die territorial-politische Gesamteinheit bereit, ohne sie auf State, Government oder Nation zu reduzieren.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State`: bezeichnet die dauerhafte politische und rechtliche Organisation.
- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Nation`: bezeichnet eine kollektive Identität.

#### Verwandte Begriffe

- State
- Government
- Nation
- Sovereignty

#### Referenzen

- PB-001
- PB-002
- PB-003

### State

#### Definition

Ein `State` ist eine dauerhafte politische und rechtliche Organisation, die über Institutionen eine Bevölkerung und ein Gebiet ordnet und dafür Sovereignty beansprucht.

#### Zweck

Der Begriff bezeichnet die organisierte Trägerin öffentlicher Herrschaft unabhängig von ihrer jeweiligen Führung, gesellschaftlichen Identität oder geografischen Benennung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: übt die gegenwärtige politische Leitung aus.
- `Nation`: bezeichnet eine kollektive politische oder gesellschaftliche Identität.
- `Country`: bezeichnet eine territorial-politische Einheit als Ganzes.

#### Verwandte Begriffe

- Government
- Nation
- Country
- Sovereignty
- Institution

#### Referenzen

- PB-001
- PB-002
- PB-003

### Nation

#### Definition

Eine `Nation` ist eine als zusammengehörig verstandene politische oder gesellschaftliche Gemeinschaft, die sich auf eine gemeinsame kollektive Identität bezieht.

#### Zweck

Der Begriff bezeichnet kollektive Zugehörigkeit, ohne sie mit einer staatlichen Organisation oder einem bestimmten Gebiet gleichzusetzen.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State`: ist eine politische und rechtliche Organisation.
- `Country`: ist eine territorial-politische Einheit.

#### Verwandte Begriffe

- State
- Country
- Sovereignty
- Autonomy

#### Referenzen

- PB-001
- PB-002
- PB-003

### Government

#### Definition

Ein `Government` ist die Gesamtheit der Personen und Organe, die innerhalb eines State zu einem bestimmten Zeitpunkt dessen oberste politische Leitungs- und Entscheidungsfunktionen ausüben.

#### Zweck

Der Begriff bezeichnet die jeweils handelnde politische Führung und grenzt sie von der dauerhaften politischen Ordnung und ihren Einrichtungen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State`: ist die dauerhafte politische und rechtliche Organisation.
- `Regime`: bezeichnet die grundlegende Ordnung politischer Herrschaft.

#### Verwandte Begriffe

- State
- Regime
- Cabinet
- Executive
- Head of Government

#### Referenzen

- PB-001
- PB-002
- PB-003

### Regime

#### Definition

Ein `Regime` ist die grundlegende Ordnung, nach der politische Herrschaft innerhalb eines State erlangt, ausgeübt, begrenzt und übertragen wird.

#### Zweck

Der Begriff bezeichnet die beständige Struktur politischer Herrschaft jenseits der jeweils amtierenden Personen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: ist die gegenwärtig handelnde politische Führung.
- `Constitution`: ist die grundlegende normative Ordnung eines State.

#### Verwandte Begriffe

- Government
- State
- Constitution
- Legitimacy
- Authority

#### Referenzen

- PB-002
- PB-003

## 4.2 Staatsorganisation

### Constitution

#### Definition

Eine `Constitution` ist die grundlegende normative Ordnung eines State, welche die Ausübung öffentlicher Authority, die maßgeblichen Institutionen und deren Beziehungen festlegt.

#### Zweck

Der Begriff bezeichnet den obersten Ordnungsrahmen, an dem die staatliche Herrschaftsstruktur und ihre Zuständigkeiten ausgerichtet sind.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Law`: ist eine verbindliche allgemeine Norm innerhalb der politischen Ordnung.
- `Regime`: bezeichnet die tatsächliche grundlegende Ordnung politischer Herrschaft.

#### Verwandte Begriffe

- State
- Regime
- Institution
- Law
- Authority

#### Referenzen

- PB-002
- PB-003

### Institution

#### Definition

Eine `Institution` ist eine dauerhaft etablierte politische oder rechtliche Ordnungseinheit mit anerkannten Aufgaben, Zuständigkeiten oder Verfahrensregeln.

#### Zweck

Der Begriff bezeichnet beständige Träger und Ordnungen politischer Funktionen unabhängig von einzelnen Amtsinhabern.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Public Administration`: bezeichnet die Gesamtheit der Einrichtungen und Tätigkeiten zur Ausführung öffentlicher Aufgaben.

#### Verwandte Begriffe

- Constitution
- State
- Ministry
- Parliament
- Public Administration

#### Referenzen

- PB-002
- PB-003

### Law

#### Definition

Ein `Law` ist eine von zuständiger öffentlicher Authority gesetzte oder anerkannte, allgemein verbindliche Norm innerhalb eines State.

#### Zweck

Der Begriff bezeichnet verbindliche politische und rechtliche Vorgaben unterhalb der grundlegenden Verfassungsordnung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Constitution`: bildet die grundlegende normative Ordnung.
- `Authority`: ist die anerkannte Befugnis, verbindliche Entscheidungen zu treffen.

#### Verwandte Begriffe

- Constitution
- Legislature
- Judiciary
- Authority
- Institution

#### Referenzen

- PB-002
- PB-003

## 4.3 Staatsorgane

### Head of State

#### Definition

Der `Head of State` ist das Amt, das einen State in seiner obersten institutionellen Kontinuität und Repräsentation verkörpert.

#### Zweck

Der Begriff bezeichnet die staatliche Spitzenfunktion unabhängig davon, ob sie mit der Leitung des Government verbunden ist.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Head of Government`: leitet das Government.
- `Government`: ist die Gesamtheit der gegenwärtigen politischen Führung.

#### Verwandte Begriffe

- State
- Government
- Head of Government
- Constitution
- Authority

#### Referenzen

- PB-002
- PB-003

### Head of Government

#### Definition

Der `Head of Government` ist das Amt, dem die politische Leitung und Koordination des Government zugeordnet ist.

#### Zweck

Der Begriff bezeichnet die führende Regierungsfunktion unabhängig von ihrer Amtsbezeichnung oder ihrer Verbindung mit dem Head of State.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Head of State`: verkörpert die oberste institutionelle Kontinuität und Repräsentation des State.
- `Cabinet`: ist ein kollegiales Leitungsgremium.

#### Verwandte Begriffe

- Government
- Cabinet
- Head of State
- Executive

#### Referenzen

- PB-002
- PB-003

### Cabinet

#### Definition

Ein `Cabinet` ist das kollegiale Leitungsgremium des Government, in dem der Head of Government und die für zentrale Regierungsbereiche verantwortlichen Mitglieder zusammenwirken.

#### Zweck

Der Begriff bezeichnet die gemeinsame politische Führung und Abstimmung der obersten Regierungsverantwortlichen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: umfasst die politische Führung insgesamt.
- `Ministry`: ist eine einzelne nach Aufgabenbereich gegliederte Regierungsinstitution.

#### Verwandte Begriffe

- Government
- Ministry
- Executive
- Head of Government

#### Referenzen

- PB-002
- PB-003

### Ministry

#### Definition

Ein `Ministry` ist eine nach einem öffentlichen Aufgabenbereich gegliederte Institution des Government unter politischer Leitung.

#### Zweck

Der Begriff bezeichnet die dauerhafte institutionelle Bündelung von Verantwortung für einen abgegrenzten Regierungsbereich.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Cabinet`: ist das kollegiale Leitungsgremium des Government.
- `Public Administration`: umfasst die öffentliche Verwaltung insgesamt.

#### Verwandte Begriffe

- Government
- Cabinet
- Executive
- Institution
- Public Administration

#### Referenzen

- PB-002
- PB-003

### Parliament

#### Definition

Ein `Parliament` ist eine beratende und beschlussfassende politische Institution mit zusammengesetzter Mitgliedschaft, die insbesondere öffentliche Repräsentations- und Gesetzgebungsfunktionen wahrnimmt.

#### Zweck

Der Begriff bezeichnet die konkrete institutionelle Versammlung, in der politische Beratung, Repräsentation und verbindliche Beschlussfassung gebündelt sind.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Legislature`: bezeichnet die Funktion oder Gesamtheit der gesetzgebenden Staatsgewalt.
- `Cabinet`: ist das kollegiale Leitungsgremium des Government.

#### Verwandte Begriffe

- Legislature
- Institution
- Law
- Political Party
- Opposition

#### Referenzen

- PB-002
- PB-003

### Legislature

#### Definition

Die `Legislature` ist die Institution oder Gesamtheit von Institutionen eines State, der die Zuständigkeit zur Beratung und Verabschiedung von Laws zugeordnet ist.

#### Zweck

Der Begriff bezeichnet die gesetzgebende Staatsfunktion unabhängig davon, durch welche konkrete institutionelle Form sie wahrgenommen wird.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Parliament`: ist eine konkrete politische Institution, die gesetzgebende Funktionen wahrnehmen kann.
- `Executive`: bezeichnet die leitende und ausführende Staatsgewalt.

#### Verwandte Begriffe

- Parliament
- Executive
- Judiciary
- Law
- Constitution

#### Referenzen

- PB-002
- PB-003

### Executive

#### Definition

Die `Executive` ist die Institution oder Gesamtheit von Institutionen eines State, der die politische Leitung und Ausführung von Laws und öffentlichen Entscheidungen zugeordnet ist.

#### Zweck

Der Begriff bezeichnet die leitende und ausführende Staatsfunktion unabhängig von ihren konkreten Organen oder Amtsinhabern.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die jeweils handelnde politische Führung.
- `Public Administration`: führt öffentliche Aufgaben innerhalb zugewiesener Zuständigkeiten aus.

#### Verwandte Begriffe

- Government
- Legislature
- Judiciary
- Cabinet
- Public Administration

#### Referenzen

- PB-002
- PB-003

### Judiciary

#### Definition

Die `Judiciary` ist die Institution oder Gesamtheit von Institutionen eines State, der die verbindliche Auslegung und Anwendung von Law in Streit- und Entscheidungsfällen zugeordnet ist.

#### Zweck

Der Begriff bezeichnet die rechtsprechende Staatsfunktion unabhängig von ihrer konkreten institutionellen Gliederung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Legislature`: verabschiedet Laws.
- `Executive`: leitet und vollzieht öffentliche Entscheidungen.

#### Verwandte Begriffe

- Legislature
- Executive
- Law
- Constitution
- Institution

#### Referenzen

- PB-002
- PB-003

## 4.4 Politische Akteure

### Political Party

#### Definition

Eine `Political Party` ist eine dauerhaft organisierte politische Vereinigung, die gemeinsame politische Ziele verfolgt und auf die Besetzung oder Ausübung öffentlicher Authority hinwirkt.

#### Zweck

Der Begriff bezeichnet eine beständige Organisation zur Bündelung politischer Programme, Unterstützung und Führungspersonen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte Strömung innerhalb eines größeren politischen Zusammenhangs.
- `Interest Group`: vertritt gemeinsame Interessen, ohne notwendig öffentliche Authority anzustreben.

#### Verwandte Begriffe

- Faction
- Interest Group
- Opposition
- Coalition
- Ideology

#### Referenzen

- PB-002
- PB-003

### Faction

#### Definition

Eine `Faction` ist eine organisierte politische Strömung innerhalb eines größeren politischen Akteurs oder Zusammenhangs, die gemeinsame Ziele verfolgt und dessen Richtung oder Entscheidungen beeinflussen will.

#### Zweck

Der Begriff bezeichnet interne politische Organisation und Konkurrenz, ohne daraus eine eigenständige Political Party oder Interest Group abzuleiten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Party`: ist eine eigenständige dauerhafte politische Vereinigung.
- `Interest Group`: organisiert sich um gemeinsame Interessen.

#### Verwandte Begriffe

- Political Party
- Interest Group
- Coalition
- Opposition
- Ideology

#### Referenzen

- PB-002
- PB-003

### Interest Group

#### Definition

Eine `Interest Group` ist eine organisierte Gemeinschaft, die gemeinsame gesellschaftliche oder materielle Interessen gegenüber politischen Entscheidungsträgern vertritt.

#### Zweck

Der Begriff bezeichnet die gebündelte politische Einflussnahme aus gemeinsamen Interessen, ohne die Übernahme öffentlicher Authority vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Party`: wirkt auf die Besetzung oder Ausübung öffentlicher Authority hin.
- `Faction`: ist eine Strömung innerhalb eines größeren politischen Zusammenhangs.

#### Verwandte Begriffe

- Political Party
- Faction
- Opposition
- Political Capital

#### Referenzen

- PB-002
- PB-003

### Opposition

#### Definition

Die `Opposition` ist die Gesamtheit politischer Akteure, die der gegenwärtigen politischen Führung oder deren maßgeblicher Ausrichtung organisiert entgegentreten.

#### Zweck

Der Begriff bezeichnet die relationale politische Gegenposition zur amtierenden Führung, ohne eine bestimmte Organisationsform vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte interne Strömung.
- `Coalition`: koordiniert mehrere Akteure zur Verfolgung gemeinsamer politischer Ziele.

#### Verwandte Begriffe

- Government
- Political Party
- Faction
- Coalition
- Legitimacy

#### Referenzen

- PB-002
- PB-003

### Coalition

#### Definition

Eine `Coalition` ist eine vereinbarte Zusammenarbeit mehrerer politischer Akteure zur Verfolgung gemeinsamer politischer Ziele unter Erhalt ihrer jeweiligen Eigenständigkeit.

#### Zweck

Der Begriff bezeichnet koordinierte politische Zusammenarbeit, ohne die beteiligten Akteure zu einer einzigen Organisation zu verschmelzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Party`: ist selbst eine dauerhafte politische Vereinigung.
- `Faction`: besteht innerhalb eines größeren politischen Zusammenhangs.

#### Verwandte Begriffe

- Political Party
- Faction
- Government
- Opposition
- Cabinet

#### Referenzen

- PB-002
- PB-003

## 4.5 Politische Konzepte

### Ideology

#### Definition

Eine `Ideology` ist ein zusammenhängendes System politischer Grundannahmen, Werte und Zielvorstellungen zur Deutung und Gestaltung gesellschaftlicher und politischer Ordnung.

#### Zweck

Der Begriff bezeichnet den normativen und deutenden Bezugsrahmen politischer Ziele und Positionen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Party`: ist eine politische Organisation und kein System von Vorstellungen.
- `Regime`: ist die grundlegende Ordnung politischer Herrschaft.

#### Verwandte Begriffe

- Political Party
- Faction
- Regime
- Legitimacy
- Constitution

#### Referenzen

- PB-001
- PB-002
- PB-003

### Legitimacy

#### Definition

`Legitimacy` ist das Ausmaß, in dem die Ausübung politischer Authority von den für eine politische Ordnung maßgeblichen Akteuren als berechtigt anerkannt wird.

#### Zweck

Der Begriff bezeichnet die anerkannte Rechtfertigung politischer Herrschaft und grenzt sie von bloßer Durchsetzungsfähigkeit ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Authority`: ist die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Sovereignty`: ist der Anspruch auf höchste politische Authority.

#### Verwandte Begriffe

- Authority
- Sovereignty
- Government
- Regime
- Opposition

#### Referenzen

- PB-002
- PB-003

### Authority

#### Definition

`Authority` ist die anerkannte Befugnis eines politischen Akteurs oder einer Institution, innerhalb eines bestimmten Geltungsbereichs verbindliche Entscheidungen zu treffen.

#### Zweck

Der Begriff bezeichnet rechtfertigbare politische Entscheidungsbefugnis und grenzt sie von Fähigkeit, Einfluss oder bloßer Gewalt ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Legitimacy`: bezeichnet die Anerkennung politischer Herrschaft als berechtigt.
- `Sovereignty`: bezeichnet den Anspruch auf höchste politische Authority.

#### Verwandte Begriffe

- Legitimacy
- Sovereignty
- Constitution
- Law
- Institution

#### Referenzen

- PB-001
- PB-002
- PB-003

### Sovereignty

#### Definition

`Sovereignty` ist der Anspruch eines State auf höchste politische Authority über seine inneren Angelegenheiten und auf politische Unabhängigkeit gegenüber äußeren Autoritäten.

#### Zweck

Der Begriff bezeichnet die oberste Zuordnung politischer Entscheidungsgewalt und die Unabhängigkeit ihrer Ausübung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Autonomy`: ist begrenzte eigenständige Entscheidungsbefugnis innerhalb einer übergeordneten Ordnung.
- `Authority`: kann auf einen begrenzten Geltungsbereich bezogen sein.

#### Verwandte Begriffe

- State
- Authority
- Legitimacy
- Autonomy
- Country

#### Referenzen

- PB-001
- PB-002
- PB-003

### Autonomy

#### Definition

`Autonomy` ist die anerkannte Befugnis eines politischen Akteurs oder Gebietes, bestimmte Angelegenheiten innerhalb einer übergeordneten politischen Ordnung eigenständig zu regeln.

#### Zweck

Der Begriff bezeichnet abgegrenzte politische Selbstbestimmung, ohne vollständige Sovereignty vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Sovereignty`: beansprucht höchste politische Authority und äußere Unabhängigkeit.
- `Decentralization`: beschreibt die Verteilung von Zuständigkeiten weg von einer politischen Mitte.

#### Verwandte Begriffe

- Sovereignty
- Authority
- Centralization
- Decentralization
- State

#### Referenzen

- PB-002
- PB-003

### Centralization

#### Definition

`Centralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten bei einer übergeordneten politischen Mitte gebündelt sind.

#### Zweck

Der Begriff bezeichnet die vertikale Konzentration öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet anerkannte Entscheidungsbefugnis als solche.
- `Administrative Capacity`: bezeichnet die Fähigkeit, öffentliche Entscheidungen wirksam auszuführen.

#### Verwandte Begriffe

- Decentralization
- Autonomy
- Authority
- State
- Public Administration

#### Referenzen

- PB-002
- PB-003

### Decentralization

#### Definition

`Decentralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten von einer übergeordneten politischen Mitte auf nachgeordnete oder eigenständige Einheiten verteilt sind.

#### Zweck

Der Begriff bezeichnet die vertikale Verteilung öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Autonomy`: bezeichnet die anerkannte eigenständige Regelungsbefugnis eines Akteurs oder Gebietes.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Ausführung öffentlicher Aufgaben.

#### Verwandte Begriffe

- Centralization
- Autonomy
- Authority
- State
- Public Administration

#### Referenzen

- PB-002
- PB-003

### Political Capital

#### Definition

`Political Capital` ist die verfügbare Fähigkeit eines politischen Akteurs, Unterstützung, Beziehungen, Vertrauen und Einfluss zur Durchsetzung politischer Vorhaben zu mobilisieren.

#### Zweck

Der Begriff bezeichnet die politisch nutzbare Handlungsmacht, die aus Unterstützung und Einflussbeziehungen hervorgeht.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Authority`: ist anerkannte verbindliche Entscheidungsbefugnis.
- `Legitimacy`: ist die Anerkennung politischer Herrschaft als berechtigt.

#### Verwandte Begriffe

- Authority
- Legitimacy
- Government
- Political Party
- Interest Group

#### Referenzen

- PB-002
- PB-003

### Administrative Capacity

#### Definition

`Administrative Capacity` ist die Fähigkeit eines State und seiner zuständigen Institutionen, öffentliche Entscheidungen verlässlich, wirksam und innerhalb ihres Geltungsbereichs auszuführen.

#### Zweck

Der Begriff bezeichnet die tatsächliche organisatorische Leistungsfähigkeit öffentlicher Aufgabenerfüllung unabhängig von der formalen Zuweisung von Authority.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Public Administration`: bezeichnet die Einrichtungen und Tätigkeiten, durch die öffentliche Aufgaben ausgeführt werden.

#### Verwandte Begriffe

- Public Administration
- State
- Institution
- Ministry
- Centralization
- Decentralization

#### Referenzen

- PB-002
- PB-003

### Public Administration

#### Definition

Die `Public Administration` ist die Gesamtheit der dauerhaften öffentlichen Einrichtungen, Verfahren und Tätigkeiten, durch die Laws und verbindliche politische Entscheidungen ausgeführt sowie öffentliche Aufgaben wahrgenommen werden.

#### Zweck

Der Begriff bezeichnet den institutionellen Vollzug öffentlicher Aufgaben jenseits der politischen Richtungsentscheidung durch das Government.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: bestimmt die gegenwärtige politische Leitung.
- `Executive`: bezeichnet die leitende und ausführende Staatsfunktion insgesamt.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Aufgabenerfüllung.

#### Verwandte Begriffe

- Administrative Capacity
- Executive
- Government
- Ministry
- Institution
- Law

#### Referenzen

- PB-002
- PB-003
## 5. Territoriale Terminologie

Territoriale Begriffe werden nach ihren fachlichen Beziehungen gruppiert, weil räumliche Ordnung nicht durch eine einzige Hierarchie vollständig beschrieben werden kann. Die Gruppen machen sichtbar, welche Begriffe vergleichbare Gegenstände bezeichnen und an welchen Stellen eine Abgrenzung zwischen ihnen erforderlich ist.

Räumliche Begriffe beschreiben unterschiedliche Ebenen und Perspektiven. Geographische Gliederungen, politische Zuordnungen und administrative Einteilungen werden deshalb bewusst getrennt, auch wenn sie sich auf denselben Ausschnitt der World beziehen können.

Spätere Dokumente MUST für diese Konzepte ausschließlich die hier festgelegte Terminologie verwenden. Sie MUST die geographische Lage eines Gebietes, seine politische Zuordnung und seine administrative Funktion als voneinander unterscheidbare Eigenschaften behandeln.

## 5.1 Welt- und Gebietseinheiten

### World Region

#### Definition

Eine `World Region` ist eine großräumige geographische Gliederung der World, die mehrere Regions zu einem übergeordneten räumlichen Zusammenhang ordnet.

#### Zweck

Der Begriff bezeichnet die höchste projektweit festgelegte geographische Gruppierung unterhalb der World, ohne eine politische oder administrative Einheit vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: ist eine unterhalb einer World Region liegende geographische Gebietseinheit.
- `Strategic Region`: fasst Räume nach einer strategischen Betrachtung zusammen.

#### Verwandte Begriffe

- World
- Region
- Strategic Region
- Area

#### Referenzen

- PB-002
- PB-003

### Region

#### Definition

Eine `Region` ist eine geographische Gebietseinheit innerhalb einer World Region, die mehrere Provinces zu einem räumlich zusammenhängenden Ausschnitt der World ordnet.

#### Zweck

Der Begriff bezeichnet eine mittlere, politisch und administrativ neutrale Ebene der geographischen Weltgliederung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Province`: ist die unmittelbar unterhalb einer Region liegende geographische Gebietseinheit.
- `Administrative Region`: ist eine durch Public Administration abgegrenzte Verwaltungseinheit.
- `Territory`: bezeichnet ein Gebiet aufgrund seiner politischen Zuordnung.
- `Strategic Region`: wird durch einen strategischen Zusammenhang bestimmt.

#### Verwandte Begriffe

- World Region
- Province
- Administrative Region
- Strategic Region

#### Referenzen

- PB-002
- PB-003

### Province

#### Definition

Eine `Province` ist eine geographische Gebietseinheit innerhalb einer Region, die mehrere Districts zu einem zusammenhängenden Ausschnitt der World ordnet.

#### Zweck

Der Begriff bezeichnet die geographische Gliederungsebene zwischen Region und District unabhängig von politischer oder administrativer Zuordnung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: umfasst mehrere Provinces und liegt eine geographische Ebene höher.
- `District`: ist die unmittelbar unterhalb einer Province liegende geographische Gebietseinheit.
- `Administrative Region`: folgt einer administrativen statt einer geographischen Abgrenzung.

#### Verwandte Begriffe

- Region
- District
- Territory
- Administrative Region

#### Referenzen

- PB-002
- PB-003

### District

#### Definition

Ein `District` ist die kleinste kanonische geographische Gebietseinheit der World und liegt innerhalb genau einer Province.

#### Zweck

Der Begriff bezeichnet die feinste projektweit festgelegte räumliche Gliederung, auf die größere geographische und politische Gebiete bezogen werden können.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Province`: umfasst mehrere Districts und liegt eine geographische Ebene höher.
- `Municipality`: ist eine örtliche Verwaltungseinheit und keine geographische Grundeinheit.
- `Area`: ist eine zweckgebundene räumliche Zusammenfassung ohne feste Hierarchiestufe.

#### Verwandte Begriffe

- Province
- Municipality
- Area
- Zone

#### Referenzen

- PB-002
- PB-003

## 5.2 Politische Gebiete

### Territory

#### Definition

Ein `Territory` ist ein räumlich abgegrenzter Teil der World, der einem politischen Akteur aufgrund von Sovereignty, Anspruch, Kontrolle oder einem sonstigen politischen Verhältnis zugeordnet wird.

#### Zweck

Der Begriff bezeichnet die allgemeine politische Zuordnung eines Gebietes, ohne deren Rechtsgrund, tatsächliche Wirksamkeit oder administrativen Status vorwegzunehmen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: ist eine geographische Gebietseinheit ohne notwendige politische Zuordnung.
- `State`: ist eine dauerhafte politische und rechtliche Ordnung und kein Gebiet.
- `Country`: ist die im Spielzusammenhang handelnde politische Einheit und nicht ihr räumlicher Umfang.
- `Controlled Territory`: ist ein Territory unter tatsächlich durchgesetzter politischer Kontrolle.

#### Verwandte Begriffe

- State
- Country
- Controlled Territory
- Claim
- Core

#### Referenzen

- PB-002
- PB-003

### Core

#### Definition

Ein `Core` ist ein Territory, das ein Country als dauerhaft zu seiner grundlegenden politischen und territorialen Ordnung gehörend anerkennt.

#### Zweck

Der Begriff bezeichnet die besondere dauerhafte Eigenzuordnung eines Gebietes durch ein Country unabhängig von gegenwärtiger Kontrolle oder fremden Ansprüchen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Claim`: ist ein geltend gemachter politischer Zuordnungsanspruch ohne notwendige Anerkennung als grundlegender Bestandteil.
- `Controlled Territory`: wird tatsächlich kontrolliert, muss aber kein Core des kontrollierenden Country sein.
- `Annexed Territory`: ist formell in die beanspruchte territoriale Ordnung eines Country eingegliedert.

#### Verwandte Begriffe

- Territory
- Country
- Claim
- Controlled Territory
- Annexed Territory

#### Referenzen

- PB-002
- PB-003

### Claim

#### Definition

Ein `Claim` ist der ausdrücklich geltend gemachte Anspruch eines politischen Akteurs, dass ein Territory seiner politischen Authority oder territorialen Ordnung zugeordnet sein soll.

#### Zweck

Der Begriff bezeichnet eine beanspruchte politische Gebietszuordnung unabhängig davon, ob sie anerkannt, durchgesetzt oder als dauerhaft grundlegend betrachtet wird.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Core`: ist die dauerhafte Eigenzuordnung eines Territory durch ein Country.
- `Controlled Territory`: bezeichnet tatsächliche Kontrolle und keinen Anspruch.
- `Sovereignty`: ist der Anspruch eines State auf höchste politische Authority und äußere Unabhängigkeit.

#### Verwandte Begriffe

- Territory
- Core
- Sovereignty
- Controlled Territory

#### Referenzen

- PB-002
- PB-003

### Controlled Territory

#### Definition

Ein `Controlled Territory` ist ein Territory, in dem ein politischer Akteur seine Entscheidungen gegenwärtig tatsächlich und dauerhaft wirksam durchsetzen kann.

#### Zweck

Der Begriff bezeichnet die faktische politische Kontrolle eines Gebietes unabhängig von Sovereignty, Core-Status, Claim oder administrativer Eingliederung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Occupied Territory`: ist ein besonderer Fall fremder Kontrolle ohne vollzogene territoriale Eingliederung.
- `Annexed Territory`: ist formell in die beanspruchte territoriale Ordnung eines Country eingegliedert.
- `Claim`: bezeichnet einen politischen Anspruch statt tatsächlicher Kontrolle.

#### Verwandte Begriffe

- Territory
- Occupied Territory
- Annexed Territory
- Authority
- Claim

#### Referenzen

- PB-002
- PB-003

### Occupied Territory

#### Definition

Ein `Occupied Territory` ist ein Controlled Territory, das ein politischer Akteur außerhalb seiner eigenen territorialen Ordnung vorläufig beherrscht, ohne es in diese eingegliedert zu haben.

#### Zweck

Der Begriff bezeichnet fremde, nicht als territoriale Eingliederung behandelte Kontrolle und trennt sie von allgemeiner Kontrolle und Annexation.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Controlled Territory`: umfasst jede tatsächlich durchgesetzte politische Kontrolle und ist nicht notwendig fremd oder vorläufig.
- `Annexed Territory`: ist in die beanspruchte territoriale Ordnung des annektierenden Country eingegliedert.
- `Colony`: steht in einem dauerhaften Abhängigkeitsverhältnis zu einem anderen Country.

#### Verwandte Begriffe

- Controlled Territory
- Annexed Territory
- Territory
- Claim

#### Referenzen

- PB-002
- PB-003

### Annexed Territory

#### Definition

Ein `Annexed Territory` ist ein Territory, das ein Country durch einen formellen Hoheitsakt in seine beanspruchte territoriale Ordnung eingegliedert hat.

#### Zweck

Der Begriff bezeichnet die vollzogene formelle Eingliederung eines Gebietes unabhängig von ihrer äußeren Anerkennung, tatsächlichen Kontrolle oder Einordnung als Core.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Occupied Territory`: bleibt außerhalb der eigenen territorialen Ordnung des kontrollierenden Akteurs.
- `Controlled Territory`: bezeichnet tatsächliche Kontrolle ohne notwendige formelle Eingliederung.
- `Core`: bezeichnet die dauerhafte grundlegende Eigenzuordnung durch ein Country.

#### Verwandte Begriffe

- Territory
- Occupied Territory
- Controlled Territory
- Core
- Claim

#### Referenzen

- PB-002
- PB-003

## 5.3 Verwaltungsgebiete

### Administrative Region

#### Definition

Eine `Administrative Region` ist ein räumlich abgegrenzter Zuständigkeitsbereich der Public Administration, der mehrere örtliche Verwaltungseinheiten umfassen kann.

#### Zweck

Der Begriff bezeichnet eine allgemeine überörtliche Verwaltungseinheit unabhängig von ihrer geographischen Gliederung oder einer besonderen verfassungsrechtlichen Stellung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: ist eine geographische Gebietseinheit.
- `Federal State`: besitzt eine verfassungsrechtlich zugeordnete eigenständige politische Stellung innerhalb eines State.
- `Municipality`: ist eine örtliche Verwaltungseinheit.

#### Verwandte Begriffe

- Public Administration
- Region
- Federal State
- Municipality
- Administrative Capacity

#### Referenzen

- PB-002
- PB-003

### Federal State

#### Definition

Ein `Federal State` ist eine territoriale politische Einheit innerhalb eines föderal gegliederten State, der durch dessen Constitution eigenständige Zuständigkeiten und Institutionen zugeordnet sind.

#### Zweck

Der Begriff bezeichnet eine verfassungsrechtlich abgesicherte Gliedeinheit und grenzt sie von rein administrativen Unterteilungen und dem übergeordneten State ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State`: ist die übergreifende dauerhafte politische und rechtliche Ordnung.
- `Administrative Region`: besitzt nicht notwendig eigenständige verfassungsrechtliche Zuständigkeiten.
- `Country`: ist eine im Spielzusammenhang eigenständig handelnde politische Einheit.

#### Verwandte Begriffe

- State
- Constitution
- Autonomy
- Administrative Region
- Municipality

#### Referenzen

- PB-002
- PB-003

### Municipality

#### Definition

Eine `Municipality` ist eine örtliche territoriale Einheit der Public Administration mit einem abgegrenzten Zuständigkeitsbereich und institutionell zugeordneten öffentlichen Aufgaben.

#### Zweck

Der Begriff bezeichnet die lokale Ebene administrativer Gebietsorganisation unabhängig von ihrer konkreten Organform oder Bezeichnung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `District`: ist eine geographische Grundeinheit und keine notwendige Verwaltungseinheit.
- `Administrative Region`: ist eine überörtliche Verwaltungseinheit.
- `Capital`: ist ein politisch bestimmter zentraler Ort und keine Verwaltungsebene.

#### Verwandte Begriffe

- Public Administration
- Administrative Region
- District
- Capital
- Autonomy

#### Referenzen

- PB-002
- PB-003

### Capital

#### Definition

Eine `Capital` ist der politisch bestimmte Ort, an dem die zentralen Institutionen eines politischen Akteurs ihren maßgeblichen Sitz haben.

#### Zweck

Der Begriff bezeichnet den institutionellen Hauptort einer politischen Einheit, ohne eine eigene geographische oder administrative Hierarchiestufe festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Municipality`: ist eine örtliche Verwaltungseinheit, die eine Capital enthalten kann.
- `Country`: ist die handelnde politische Einheit, deren zentrale Institutionen an einer Capital ansässig sein können.
- `Political Capital`: bezeichnet politisch mobilisierbare Handlungsmacht und keinen Ort.

#### Verwandte Begriffe

- Country
- State
- Government
- Institution
- Municipality

#### Referenzen

- PB-002
- PB-003

## 5.4 Internationale Gebietsbeziehungen

### Colony

#### Definition

Eine `Colony` ist ein territorial abgegrenztes politisches Gemeinwesen, das dauerhaft einem anderen Country untergeordnet ist und nicht als gleichberechtigter Bestandteil von dessen staatlicher Ordnung gilt.

#### Zweck

Der Begriff bezeichnet territoriale Fremdherrschaft bei institutioneller Abgrenzung vom übergeordneten Country.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Occupied Territory`: steht unter vorläufiger fremder Kontrolle ohne Eingliederung.
- `Protectorate`: behält eine eigene politische Ordnung unter vertraglich oder rechtlich begrenzter äußerer Authority.
- `Subject`: ist der allgemeine Begriff für ein politisch untergeordnetes Country.

#### Verwandte Begriffe

- Country
- Subject
- Protectorate
- Territory
- Sovereignty

#### Referenzen

- PB-002
- PB-003

### Protectorate

#### Definition

Ein `Protectorate` ist ein Country, das seine innere politische Ordnung grundsätzlich beibehält, während festgelegte Bereiche seiner äußeren Sovereignty der Authority eines anderen Country unterstehen.

#### Zweck

Der Begriff bezeichnet eine besondere Form politischer Unterordnung, bei der äußere Entscheidungsbefugnisse begrenzt übertragen sind und die innere Ordnung fortbesteht.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Colony`: ist ein territorial abgegrenztes, nicht gleichberechtigt eingegliedertes Gemeinwesen unter dauerhafter Fremdherrschaft.
- `Subject`: bezeichnet allgemein ein politisch untergeordnetes Country.
- `Puppet State`: besitzt nur begrenzte tatsächliche Eigenständigkeit gegenüber dem beherrschenden Country.

#### Verwandte Begriffe

- Country
- Subject
- Puppet State
- Sovereignty
- Autonomy

#### Referenzen

- PB-002
- PB-003

### Subject

#### Definition

Ein `Subject` ist ein Country, dessen Sovereignty durch ein dauerhaftes politisches Unterordnungsverhältnis zugunsten eines anderen Country begrenzt ist.

#### Zweck

Der Begriff bezeichnet die allgemeine Kategorie politisch abhängiger Countries unabhängig von der besonderen Form oder Bezeichnung ihrer Abhängigkeit.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Protectorate`: ist eine besondere Form mit grundsätzlich fortbestehender innerer Ordnung und begrenzter äußerer Sovereignty.
- `Puppet State`: ist durch geringe tatsächliche politische Eigenständigkeit gekennzeichnet.
- `Colony`: ist ein territorial abgegrenztes Gemeinwesen unter dauerhafter Fremdherrschaft und nicht notwendig ein Country.

#### Verwandte Begriffe

- Country
- Protectorate
- Puppet State
- Colony
- Sovereignty
- Autonomy

#### Referenzen

- PB-002
- PB-003

### Puppet State

#### Definition

Ein `Puppet State` ist ein formal als Country fortbestehender Subject, dessen maßgebliche politische Entscheidungen tatsächlich von einem anderen Country bestimmt werden.

#### Zweck

Der Begriff bezeichnet die Abweichung zwischen formaler Eigenständigkeit und tatsächlicher äußerer Bestimmung der politischen Führung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Subject`: ist der Oberbegriff für ein politisch untergeordnetes Country.
- `Protectorate`: überträgt festgelegte Bereiche äußerer Sovereignty, ohne notwendig eine tatsächliche Bestimmung maßgeblicher innerer Entscheidungen zu begründen.
- `Government`: ist die gegenwärtige politische Führung eines State.

#### Verwandte Begriffe

- Country
- Subject
- Protectorate
- Government
- Sovereignty

#### Referenzen

- PB-002
- PB-003

## 5.5 Räumliche Konzepte

### Border

#### Definition

Eine `Border` ist die festgelegte Trennlinie zwischen zwei unmittelbar aneinandergrenzenden Gebieten mit unterschiedlicher politischer, administrativer oder geographischer Zuordnung.

#### Zweck

Der Begriff bezeichnet eine lineare räumliche Abgrenzung und macht die Art der getrennten Gebietszuordnung ausdrücklich bestimmbar.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Frontier`: ist ein räumlicher Übergangsbereich und keine festgelegte Trennlinie.
- `Area`: ist eine zweckgebundene räumliche Zusammenfassung.
- `Zone`: ist ein abgegrenzter Raum mit einem zugeordneten besonderen Status.

#### Verwandte Begriffe

- Frontier
- Territory
- Region
- Zone

#### Referenzen

- PB-002
- PB-003

### Frontier

#### Definition

Eine `Frontier` ist ein räumlicher Übergangsbereich an der äußeren Reichweite dauerhaft wirksamer politischer oder administrativer Ordnung.

#### Zweck

Der Begriff bezeichnet einen Bereich abgestufter, überlagerter oder noch nicht eindeutig verfestigter Gebietszuordnung statt einer exakten Trennlinie.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Border`: ist eine festgelegte Trennlinie zwischen unterschiedlich zugeordneten Gebieten.
- `Controlled Territory`: ist ein Gebiet tatsächlich und dauerhaft wirksamer politischer Kontrolle.
- `Zone`: besitzt einen ausdrücklich zugeordneten besonderen Status.

#### Verwandte Begriffe

- Border
- Territory
- Controlled Territory
- Area

#### Referenzen

- PB-002
- PB-003

### Area

#### Definition

Eine `Area` ist eine für einen bestimmten fachlichen Zweck zusammengefasste räumliche Menge ohne festgelegte Stellung in der geographischen, politischen oder administrativen Gebietshierarchie.

#### Zweck

Der Begriff bezeichnet eine neutrale, zweckbezogene räumliche Auswahl, wenn keine kanonische Gebietseinheit oder besondere Statuszuweisung gemeint ist.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: besitzt eine festgelegte Stellung in der geographischen Weltgliederung.
- `Zone`: ist ein abgegrenzter Raum mit einem besonderen Status oder einer besonderen Regelungszuordnung.
- `Strategic Region`: ist eine ausdrücklich strategisch bestimmte räumliche Gruppierung.

#### Verwandte Begriffe

- Zone
- Strategic Region
- Region
- District

#### Referenzen

- PB-002
- PB-003

### Zone

#### Definition

Eine `Zone` ist ein abgegrenzter Raum, dem für einen festgelegten fachlichen Zusammenhang ein besonderer Status oder eine besondere Regelungszuordnung zugewiesen ist.

#### Zweck

Der Begriff bezeichnet eine statusbezogene räumliche Abgrenzung unabhängig von den Grenzen kanonischer geographischer, politischer oder administrativer Gebietseinheiten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Area`: ist eine neutrale zweckbezogene räumliche Auswahl ohne notwendigen besonderen Status.
- `Region`: ist eine festgelegte geographische Gebietseinheit.
- `Border`: ist eine Trennlinie und kein räumlicher Bereich.

#### Verwandte Begriffe

- Area
- Border
- Strategic Region
- Territory

#### Referenzen

- PB-002
- PB-003

### Strategic Region

#### Definition

Eine `Strategic Region` ist eine zusammenhängende räumliche Gruppierung, deren Abgrenzung durch einen gemeinsamen strategischen Betrachtungszusammenhang bestimmt ist.

#### Zweck

Der Begriff bezeichnet eine strategische Raumordnung ohne politische, administrative oder geographische Einheitlichkeit vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Region`: ist eine festgelegte geographische Gebietseinheit.
- `World Region`: ist die höchste geographische Gruppierung unterhalb der World.
- `Area`: ist eine allgemeine zweckbezogene räumliche Auswahl ohne notwendig strategische Bestimmung.
- `Zone`: erhält einen besonderen Status oder eine besondere Regelungszuordnung.

#### Verwandte Begriffe

- Region
- World Region
- Area
- Zone

#### Referenzen

- PB-002
- PB-003


## 7. Wirtschaft und Produktion

Wirtschaftliche Begriffe werden als zusammenhängende fachliche Domäne betrachtet, in der Akteure, Gegenstände, Aktivitäten und Ordnungszusammenhänge aufeinander bezogen sind. Wirtschaftliche Prozesse entstehen aus den Aktivitäten von Economic Actors und aus deren Beziehungen untereinander sowie zu Goods, Resources, Markets und finanziellen Mitteln.

Dieses Kapitel definiert ausschließlich die kanonische Terminologie dieser Domäne. Es legt keine Regeln für Gameplay, Balancing, Simulation oder technische Implementierung fest; diese werden in späteren zuständigen Dokumenten behandelt.

## 7.1 Wirtschaftliche Akteure

### Economic Actor

#### Definition

Ein `Economic Actor` ist eine Entity, die innerhalb wirtschaftlicher Beziehungen eigenständig Güter, Ressourcen, Leistungen oder finanzielle Mittel bereitstellt, verwendet, überträgt oder beansprucht.

#### Zweck

Der Begriff bezeichnet den allgemeinen Träger wirtschaftlicher Aktivitäten, ohne eine bestimmte politische, gesellschaftliche oder organisatorische Form vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Producer` und `Consumer` bezeichnen besondere Rollen eines Economic Actor; eine Entity kann mehrere wirtschaftliche Rollen einnehmen.

#### Verwandte Begriffe

- Producer
- Consumer
- Employer
- Employee
- Investor
- State

#### Referenzen

- PB-002
- PB-003

### Producer

#### Definition

Ein `Producer` ist ein Economic Actor in seiner Rolle als Hervorbringer oder Bereitsteller von Goods durch Production.

#### Zweck

Der Begriff ordnet die Verantwortung für ein wirtschaftliches Angebot einer handelnden Entity zu, ohne deren Organisation oder Produktionsweise festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Producer ist der Akteur; `Production` ist seine wirtschaftliche Aktivität und eine `Production Facility` ein dafür bestimmter Ort oder organisatorischer Zusammenhang.

#### Verwandte Begriffe

- Economic Actor
- Production
- Good
- Supply
- Production Facility

#### Referenzen

- PB-002
- PB-003

### Consumer

#### Definition

Ein `Consumer` ist ein Economic Actor in seiner Rolle als endgültiger Verwender von Goods zur Erfüllung eines Bedarfs, ohne diese Verwendung als weiteren Produktionsschritt zu behandeln.

#### Zweck

Der Begriff ordnet Consumption einer handelnden Entity zu und grenzt endgültige Verwendung von produktiver Weiterverarbeitung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Consumer ist der Akteur; `Consumption` ist die Aktivität. Die Verwendung eines Good als `Input` einer Production ist keine Consumption dieses Good.

#### Verwandte Begriffe

- Economic Actor
- Consumption
- Good
- Demand
- Input

#### Referenzen

- PB-002
- PB-003

### Employer

#### Definition

Ein `Employer` ist ein Economic Actor, die Employment anbietet und dafür die Arbeitsleistung von Employees beansprucht.

#### Zweck

Der Begriff bezeichnet die nachfragende Seite einer Beschäftigungsbeziehung, ohne deren rechtliche oder organisatorische Ausgestaltung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Employer ist nicht mit einem `Producer` gleichzusetzen; die Rollen können zusammenfallen, müssen es aber nicht.

#### Verwandte Begriffe

- Economic Actor
- Employee
- Employment
- Producer

#### Referenzen

- PB-002
- PB-003

### Employee

#### Definition

Ein `Employee` ist ein Economic Actor, die im Rahmen von Employment einem Employer Arbeitsleistung gegen eine vereinbarte wirtschaftliche Gegenleistung bereitstellt.

#### Zweck

Der Begriff bezeichnet die leistende Seite einer Beschäftigungsbeziehung unabhängig von Tätigkeit, Qualifikation oder Vertragsform.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Employee ist nicht mit einem `Consumer` gleichzusetzen; beide Begriffe bezeichnen voneinander unabhängige wirtschaftliche Rollen.

#### Verwandte Begriffe

- Economic Actor
- Employer
- Employment
- Consumer

#### Referenzen

- PB-002
- PB-003

### Investor

#### Definition

Ein `Investor` ist ein Economic Actor, die wirtschaftliche Mittel durch Investment bindet, um künftige wirtschaftliche Möglichkeiten oder Erträge zu begründen.

#### Zweck

Der Begriff ordnet Investment einer handelnden Entity zu, ohne Form, Laufzeit oder Ergebnis der Mittelbindung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Investor ist nicht mit einem Mittelgeber gleichzusetzen; Credit kann eine Form der Mittelbereitstellung sein, Investment ist der weiter gefasste Verwendungszusammenhang.

#### Verwandte Begriffe

- Economic Actor
- Investment
- Credit
- Debt

#### Referenzen

- PB-002
- PB-003

### State

#### Definition

Der bereits in Kapitel 4 definierte `State` handelt als Economic Actor, soweit seine Institutionen wirtschaftliche Mittel bereitstellen, verwenden, übertragen oder beanspruchen.

#### Zweck

Die Verwendung ordnet wirtschaftliche Tätigkeiten der bestehenden politischen und rechtlichen Ordnung zu, ohne den Begriff State neu zu definieren.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State` bezeichnet weiterhin die politische und rechtliche Ordnung; `Treasury` bezeichnet deren Bestand verfügbarer finanzieller Mittel und `Budget` deren geplante Zuordnung.

#### Verwandte Begriffe

- Economic Actor
- Treasury
- Tax
- Subsidy
- Budget
- Debt

#### Referenzen

- PB-002
- PB-003

## 7.2 Wirtschaftliche Aktivitäten

### Production

#### Definition

`Production` ist die wirtschaftliche Aktivität, durch die Inputs in Outputs überführt oder Goods bereitgestellt werden.

#### Zweck

Der Begriff bezeichnet die Hervorbringung wirtschaftlich verwendbarer Ergebnisse unabhängig von Akteur, Ort, Verfahren oder technischer Ausgestaltung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Production ist eine Aktivität; `Producer` ist ihr Akteur, `Production Facility` ihr möglicher organisatorischer oder räumlicher Zusammenhang und `Production Chain` die Beziehung mehrerer Produktionsschritte.

#### Verwandte Begriffe

- Producer
- Production Facility
- Production Chain
- Input
- Output

#### Referenzen

- PB-002
- PB-003

### Consumption

#### Definition

`Consumption` ist die endgültige wirtschaftliche Verwendung eines Good zur Erfüllung eines Bedarfs, ohne dass das Good dabei als Input einer weiteren Production dient.

#### Zweck

Der Begriff bezeichnet die bedarfsbezogene Endverwendung und trennt sie von produktiver Verarbeitung, Distribution und Exchange.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Consumption ist die Aktivität; `Consumer` ist der zugeordnete Akteur.

#### Verwandte Begriffe

- Consumer
- Good
- Demand
- Input
- Production

#### Referenzen

- PB-002
- PB-003

### Distribution

#### Definition

`Distribution` ist die wirtschaftliche Aktivität, durch die Goods oder Resources zwischen Akteuren oder Orten zur weiteren Verwendung verfügbar gemacht werden.

#### Zweck

Der Begriff bezeichnet die räumliche oder organisatorische Zuführung wirtschaftlicher Gegenstände, ohne einen Eigentumswechsel oder grenzüberschreitenden Vorgang vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Distribution ist nicht mit `Trade` gleichzusetzen; Trade betrifft Austauschbeziehungen, Distribution die Zuführung und Verteilung.

#### Verwandte Begriffe

- Good
- Resource
- Trade
- Supply
- Market

#### Referenzen

- PB-002
- PB-003

### Exchange

#### Definition

`Exchange` ist die wechselseitige Übertragung wirtschaftlicher Gegenstände oder Ansprüche zwischen Economic Actors.

#### Zweck

Der Begriff bezeichnet die allgemeine wirtschaftliche Gegenseitigkeitsbeziehung unabhängig von Markt, Grenze, Währung oder konkreter Gegenleistung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trade` ist eine auf Goods oder Resources bezogene Form wirtschaftlichen Exchange; Distribution setzt keinen Exchange voraus.

#### Verwandte Begriffe

- Economic Actor
- Trade
- Market
- Currency

#### Referenzen

- PB-002
- PB-003

### Investment

#### Definition

`Investment` ist die gegenwärtige Bindung wirtschaftlicher Mittel zur Begründung oder Erweiterung künftiger wirtschaftlicher Möglichkeiten oder Erträge.

#### Zweck

Der Begriff bezeichnet eine zukunftsgerichtete Mittelverwendung und grenzt sie von Consumption und bloßer Aufbewahrung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Investment ist die Aktivität; `Investor` ist der handelnde Akteur. Credit kann Investment finanzieren, ist aber nicht selbst damit gleichzusetzen.

#### Verwandte Begriffe

- Investor
- Credit
- Production Facility
- Capacity

#### Referenzen

- PB-002
- PB-003

### Employment

#### Definition

`Employment` ist eine wirtschaftliche Beziehung, in der ein Employee einem Employer Arbeitsleistung gegen eine vereinbarte wirtschaftliche Gegenleistung bereitstellt.

#### Zweck

Der Begriff bezeichnet den Zusammenhang zwischen angebotener und beanspruchter Arbeitsleistung, ohne konkrete Rechtsform oder Arbeitsbedingungen festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Employment ist die Beziehung; `Employer` und `Employee` sind ihre Rollen.

#### Verwandte Begriffe

- Employer
- Employee
- Economic Actor
- Production

#### Referenzen

- PB-002
- PB-003

## 7.3 Güter und Ressourcen

### Good

#### Definition

Ein `Good` ist ein abgrenzbares wirtschaftliches Ergebnis oder ein wirtschaftlich verwendbarer Gegenstand, der bereitgestellt, übertragen oder konsumiert werden kann.

#### Zweck

Der Begriff bezeichnet den allgemeinen Gegenstand wirtschaftlicher Bereitstellung und Verwendung unabhängig von Herstellungsstufe oder materieller Form.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Good ist nicht mit einer `Resource` gleichzusetzen: Resource bezeichnet eine verfügbare Grundlage wirtschaftlicher Aktivitäten; ein Good ist deren bereitstellbares oder verwendbares Ergebnis.

#### Verwandte Begriffe

- Resource
- Raw Material
- Intermediate Good
- Finished Good
- Production

#### Referenzen

- PB-002
- PB-003

### Resource

#### Definition

Eine `Resource` ist eine verfügbare natürliche, materielle, personelle oder finanzielle Grundlage, die für wirtschaftliche Aktivitäten eingesetzt werden kann.

#### Zweck

Der Begriff bezeichnet wirtschaftlich nutzbare Voraussetzungen, ohne deren Ursprung, Knappheit oder konkrete Verwendung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Eine Resource ist nicht notwendig ein `Good`; ein Good ist ein abgrenzbares Ergebnis oder ein bereitstellbarer Gegenstand. `Raw Material` bezeichnet eine unverarbeitete materielle Resource für Production.

#### Verwandte Begriffe

- Good
- Raw Material
- Strategic Resource
- Input
- Production

#### Referenzen

- PB-002
- PB-003

### Raw Material

#### Definition

Ein `Raw Material` ist eine materielle Resource, die vor ihrer ersten wirtschaftlich maßgeblichen Verarbeitung als Input einer Production verwendet wird.

#### Zweck

Der Begriff bezeichnet den unverarbeiteten Ausgangsstoff einer Herstellung und grenzt ihn von bereits hervorgebrachten Zwischenprodukten ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Raw Material ist eine `Resource`; ein `Intermediate Good` ist bereits Output eines Produktionsschritts.

#### Verwandte Begriffe

- Resource
- Intermediate Good
- Input
- Production

#### Referenzen

- PB-002
- PB-003

### Intermediate Good

#### Definition

Ein `Intermediate Good` ist ein Good, das als Output eines Produktionsschritts hervorgebracht und als Input eines weiteren Produktionsschritts bestimmt ist.

#### Zweck

Der Begriff bezeichnet ein wirtschaftliches Zwischenergebnis innerhalb einer Production Chain.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Intermediate Good unterscheidet sich vom `Raw Material` durch seine vorherige Verarbeitung und vom `Finished Good` durch seine Bestimmung zur weiteren Production.

#### Verwandte Begriffe

- Good
- Raw Material
- Finished Good
- Production Chain
- Input
- Output

#### Referenzen

- PB-002
- PB-003

### Finished Good

#### Definition

Ein `Finished Good` ist ein Good, das im betrachteten wirtschaftlichen Zusammenhang für eine Verwendung außerhalb weiterer Production bestimmt ist.

#### Zweck

Der Begriff bezeichnet das Endergebnis einer Production Chain relativ zu seinem vorgesehenen Verwendungszusammenhang.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Finished Good kann in einem anderen Zusammenhang als Input dienen; `Intermediate Good` bezeichnet dagegen ausdrücklich die Bestimmung zur weiteren Production.

#### Verwandte Begriffe

- Good
- Intermediate Good
- Consumer
- Consumption
- Output

#### Referenzen

- PB-002
- PB-003

### Strategic Resource

#### Definition

Eine `Strategic Resource` ist eine Resource, deren verlässliche Verfügbarkeit für die dauerhafte Handlungsfähigkeit eines Economic Actor von besonderer Bedeutung ist.

#### Zweck

Der Begriff kennzeichnet die Bedeutung einer Resource für wirtschaftliche Handlungsfähigkeit, ohne konkrete Ressourcentypen oder Folgen ihrer Knappheit festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Strategic Resource ist eine Bedeutungszuordnung und keine Verarbeitungsstufe wie `Raw Material`, `Intermediate Good` oder `Finished Good`.

#### Verwandte Begriffe

- Resource
- Raw Material
- Supply
- Trade

#### Referenzen

- PB-002
- PB-003

## 7.4 Märkte

### Market

#### Definition

Ein `Market` ist der wirtschaftliche Beziehungszusammenhang, in dem Supply und Demand für bestimmte Goods, Resources oder Leistungen aufeinandertreffen und Bedingungen ihres Exchange entstehen.

#### Zweck

Der Begriff bezeichnet den Ordnungszusammenhang wirtschaftlicher Angebote und Nachfragen unabhängig von Ort, Institution oder technischer Abbildung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Market ist der Beziehungszusammenhang; `Trade` ist eine wirtschaftliche Aktivität und `Trade Route` eine dauerhafte räumliche Verbindung für Trade.

#### Verwandte Begriffe

- Supply
- Demand
- Price
- Competition
- Exchange
- Trade

#### Referenzen

- PB-002
- PB-003

### Local Market

#### Definition

Ein `Local Market` ist ein Market, dessen maßgeblicher Beziehungszusammenhang auf einen örtlich begrenzten Raum ausgerichtet ist.

#### Zweck

Der Begriff unterscheidet Märkte nach ihrer räumlichen Reichweite, ohne eine bestimmte geographische oder administrative Gebietseinheit festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Local Market bezeichnet keine besondere Marktmechanik und ist nicht automatisch mit einem `National Market` verbunden.

#### Verwandte Begriffe

- Market
- National Market
- Supply
- Demand

#### Referenzen

- PB-002
- PB-003

### National Market

#### Definition

Ein `National Market` ist ein Market, dessen maßgeblicher Beziehungszusammenhang das wirtschaftliche Gebiet eines Country umfasst.

#### Zweck

Der Begriff bezeichnet eine auf ein Country bezogene Marktreichweite, ohne politische Begriffe oder Regeln wirtschaftlicher Integration neu festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- National Market bezeichnet einen wirtschaftlichen Zusammenhang und weder den `State` noch dessen `Treasury`.

#### Verwandte Begriffe

- Market
- Local Market
- International Market
- Country
- Trade

#### Referenzen

- PB-002
- PB-003

### International Market

#### Definition

Ein `International Market` ist ein Market, dessen maßgeblicher Beziehungszusammenhang Economic Actors aus den wirtschaftlichen Gebieten mehrerer Countries umfasst.

#### Zweck

Der Begriff bezeichnet eine länderübergreifende Marktreichweite unabhängig von konkreten Handelsbeziehungen oder politischen Vereinbarungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- International Market ist der Beziehungszusammenhang; `Import` und `Export` bezeichnen richtungsbezogene grenzüberschreitende Trade-Vorgänge.

#### Verwandte Begriffe

- Market
- National Market
- Trade
- Import
- Export

#### Referenzen

- PB-002
- PB-003

### Supply

#### Definition

`Supply` ist die Gesamtheit der Goods, Resources oder Leistungen, die Economic Actors in einem Market zu bestimmten Bedingungen zur Abgabe bereitstellen.

#### Zweck

Der Begriff bezeichnet die Angebotsseite eines Market und nicht bloß vorhandene Bestände oder hergestellte Mengen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Supply ist keine `Production`: Production bringt Outputs hervor, während Supply deren Bereitstellung in einem Market bezeichnet.

#### Verwandte Begriffe

- Market
- Demand
- Price
- Producer
- Production

#### Referenzen

- PB-002
- PB-003

### Demand

#### Definition

`Demand` ist die Gesamtheit der von Economic Actors in einem Market zu bestimmten Bedingungen angestrebten Erwerbe von Goods, Resources oder Leistungen.

#### Zweck

Der Begriff bezeichnet die Nachfrageseite eines Market und nicht jeden Bedarf oder jede Consumption.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Demand ist keine `Consumption`: Demand betrifft den angestrebten Erwerb in einem Market, Consumption die endgültige Verwendung eines Good.

#### Verwandte Begriffe

- Market
- Supply
- Price
- Consumer
- Consumption

#### Referenzen

- PB-002
- PB-003

### Price

#### Definition

Ein `Price` ist die in einer Exchange-Beziehung ausgedrückte wirtschaftliche Gegenleistung für eine bestimmte Menge eines Good, einer Resource oder einer Leistung.

#### Zweck

Der Begriff bezeichnet die Austauschbedingung eines wirtschaftlichen Gegenstands in einer festgelegten Währung oder anderen Gegenleistung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Price ist weder der Wert eines Bestands im `Treasury` noch das geplante Volumen eines `Budget`.

#### Verwandte Begriffe

- Market
- Supply
- Demand
- Exchange
- Currency

#### Referenzen

- PB-002
- PB-003

### Competition

#### Definition

`Competition` ist die wirtschaftliche Beziehung, in der mehrere Economic Actors um begrenzte Möglichkeiten des Angebots, Erwerbs oder Einsatzes wirtschaftlicher Mittel konkurrieren.

#### Zweck

Der Begriff bezeichnet das gleichzeitige Streben nach nicht unbegrenzt verfügbaren wirtschaftlichen Möglichkeiten, ohne dessen Regeln oder Ergebnis festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Competition ist keine politische Rivalität und setzt keinen bestimmten Markttyp voraus.

#### Verwandte Begriffe

- Economic Actor
- Market
- Supply
- Demand

#### Referenzen

- PB-002
- PB-003

## 7.5 Handel

### Trade

#### Definition

`Trade` ist Exchange von Goods oder Resources zwischen Economic Actors.

#### Zweck

Der Begriff bezeichnet den wirtschaftlichen Austausch handelbarer Gegenstände unabhängig von räumlicher Reichweite, Grenze, Transportweg oder Marktform.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Trade ist die Austauschaktivität; ein `Market` ist ihr möglicher Beziehungszusammenhang und eine `Trade Route` eine dauerhafte räumliche Verbindung für wiederkehrenden Trade.

#### Verwandte Begriffe

- Exchange
- Good
- Resource
- Market
- Trade Route

#### Referenzen

- PB-002
- PB-003

### Trade Route

#### Definition

Eine `Trade Route` ist eine dauerhaft genutzte räumliche Verbindung, entlang der Trade zwischen Economic Actors oder Markets stattfindet.

#### Zweck

Der Begriff bezeichnet den beständigen räumlichen Zusammenhang von Handelsbeziehungen, ohne Verkehrsart, Infrastruktur oder Ablauf festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Eine Trade Route ist weder ein einzelner `Trade` noch mit `Distribution` insgesamt gleichzusetzen.

#### Verwandte Begriffe

- Trade
- Market
- Distribution
- Import
- Export

#### Referenzen

- PB-002
- PB-003

### Import

#### Definition

Ein `Import` ist Trade, bei dem Goods oder Resources aus dem wirtschaftlichen Gebiet eines Country in dessen wirtschaftliches Gebiet gelangen.

#### Zweck

Der Begriff bezeichnet Trade aus Sicht des empfangenden Country und legt weder Transport, Abgaben noch politische Bedingungen fest.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Derselbe grenzüberschreitende Trade kann für das abgebende Country ein `Export` sein; Import ist nicht die Ware selbst.

#### Verwandte Begriffe

- Trade
- Export
- Country
- Tariff
- International Market

#### Referenzen

- PB-002
- PB-003

### Export

#### Definition

Ein `Export` ist Trade, bei dem Goods oder Resources aus dem wirtschaftlichen Gebiet eines Country in das wirtschaftliche Gebiet eines anderen Country gelangen.

#### Zweck

Der Begriff bezeichnet Trade aus Sicht des abgebenden Country und legt weder Transport, Abgaben noch politische Bedingungen fest.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Derselbe grenzüberschreitende Trade kann für das empfangende Country ein `Import` sein; Export ist nicht die Ware selbst.

#### Verwandte Begriffe

- Trade
- Import
- Country
- Tariff
- International Market

#### Referenzen

- PB-002
- PB-003

### Tariff

#### Definition

Ein `Tariff` ist eine durch einen State festgelegte Abgabe auf bestimmte Imports oder Exports.

#### Zweck

Der Begriff bezeichnet die wirtschaftliche Abgabe auf grenzüberschreitenden Trade, ohne Höhe, Erhebung oder Wirkung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Tariff ist eine auf Import oder Export bezogene Abgabe; `Tax` ist der allgemeine Begriff für eine verpflichtende finanzielle Abgabe.

#### Verwandte Begriffe

- State
- Tax
- Import
- Export
- Trade

#### Referenzen

- PB-002
- PB-003

### Embargo

#### Definition

Ein `Embargo` ist eine durch einen politischen Akteur festgelegte Beschränkung oder Untersagung bestimmter Trade-Beziehungen mit einem anderen Akteur oder Gebiet.

#### Zweck

Der Begriff bezeichnet die politische Begrenzung von Trade, ohne Anlass, Umfang, Durchsetzung oder Folgen festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Embargo ist keine Abgabe wie `Tariff` und keine räumliche Verbindung wie `Trade Route`.

#### Verwandte Begriffe

- Trade
- Tariff
- Import
- Export
- Market

#### Referenzen

- PB-002
- PB-003

## 7.6 Finanzen

### Currency

#### Definition

Eine `Currency` ist eine institutionell anerkannte Recheneinheit und ein allgemein verwendbares Mittel zur Erfüllung finanzieller Verpflichtungen innerhalb eines bestimmten Geltungszusammenhangs.

#### Zweck

Der Begriff bezeichnet den gemeinsamen Maßstab und das Übertragungsmittel finanzieller Beziehungen, ohne Ausgestaltung oder Träger festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Currency ist nicht mit `Treasury` gleichzusetzen; Treasury ist ein Bestand finanzieller Mittel.

#### Verwandte Begriffe

- Price
- Treasury
- Credit
- Debt
- Inflation

#### Referenzen

- PB-002
- PB-003

### Treasury

#### Definition

Ein `Treasury` ist der einem State unmittelbar verfügbare Bestand finanzieller Mittel.

#### Zweck

Der Begriff bezeichnet vorhandene staatliche Finanzmittel zu einem bestimmten Zeitpunkt und trennt sie von Planung, Einnahmen, Ausgaben und Verpflichtungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Treasury ist ein Bestand; `Budget` ist eine geplante Zuordnung finanzieller Mittel und `Debt` eine Verpflichtung gegenüber einem Mittelgeber.

#### Verwandte Begriffe

- State
- Currency
- Budget
- Tax
- Subsidy
- Debt

#### Referenzen

- PB-002
- PB-003

### Tax

#### Definition

Eine `Tax` ist eine durch einen State aufgrund seiner Authority verpflichtend beanspruchte finanzielle Abgabe ohne unmittelbar zugeordnete individuelle Gegenleistung.

#### Zweck

Der Begriff bezeichnet eine allgemeine Form staatlicher Einnahmen, ohne Steuergegenstand, Bemessung, Erhebung oder Verwendung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein `Tariff` ist eine besondere Abgabe auf Import oder Export; eine Tax ist nicht mit einem `Price` für eine konkrete Gegenleistung gleichzusetzen.

#### Verwandte Begriffe

- State
- Treasury
- Budget
- Tariff
- Subsidy

#### Referenzen

- PB-002
- PB-003

### Subsidy

#### Definition

Eine `Subsidy` ist eine durch einen State gewährte wirtschaftliche Unterstützung zugunsten bestimmter Economic Actors, Goods oder Aktivitäten.

#### Zweck

Der Begriff bezeichnet eine gezielte staatliche Mittelgewährung oder Entlastung, ohne Voraussetzung, Form, Umfang oder Wirkung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Eine Subsidy ist keine allgemeine Ausgabeart und keine Gegenleistung eines `Price`.

#### Verwandte Begriffe

- State
- Economic Actor
- Treasury
- Budget
- Tax

#### Referenzen

- PB-002
- PB-003

### Budget

#### Definition

Ein `Budget` ist die für einen bestimmten Zeitraum festgelegte Planung erwarteter finanzieller Mittelzuflüsse, Mittelabflüsse und ihrer Zuordnung.

#### Zweck

Der Begriff bezeichnet eine Finanzplanung und trennt geplante Größen von vorhandenen Beständen und bestehenden Verpflichtungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Ein Budget ist eine Planung; `Treasury` ist der verfügbare Bestand, `Debt` eine Verpflichtung und `Credit` eine bereitgestellte Verfügungsmöglichkeit.

#### Verwandte Begriffe

- Treasury
- Tax
- Subsidy
- Debt
- Credit

#### Referenzen

- PB-002
- PB-003

### Debt

#### Definition

`Debt` ist die bestehende Verpflichtung eines Economic Actor, einem Mittelgeber wirtschaftliche Mittel aufgrund einer vorherigen Mittelbereitstellung zurückzugewähren oder anderweitig zu leisten.

#### Zweck

Der Begriff bezeichnet die Verpflichtungsseite einer Kreditbeziehung unabhängig von Laufzeit, Verzinsung, Währung oder Sicherung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Debt ist die Verpflichtung des Schuldners; `Credit` ist die eingeräumte oder bereitgestellte Verfügungsmöglichkeit der Kreditbeziehung. Debt ist kein negativer Treasury-Bestand.

#### Verwandte Begriffe

- Economic Actor
- Credit
- Budget
- Treasury
- Currency

#### Referenzen

- PB-002
- PB-003

### Credit

#### Definition

`Credit` ist die einem Economic Actor von einem Mittelgeber eingeräumte oder bereitgestellte Möglichkeit, gegen eine Verpflichtung gegenwärtig über wirtschaftliche Mittel zu verfügen.

#### Zweck

Der Begriff bezeichnet die Mittelbereitstellungs- und Verfügungsseite einer Kreditbeziehung unabhängig von Form, Laufzeit oder Kosten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Credit ist nicht mit `Debt` gleichzusetzen: Credit bezeichnet die eingeräumte Verfügungsmöglichkeit, Debt die daraus bestehende Verpflichtung. Credit ist auch kein Treasury-Bestand.

#### Verwandte Begriffe

- Economic Actor
- Debt
- Investment
- Treasury
- Currency

#### Referenzen

- PB-002
- PB-003

### Inflation

#### Definition

`Inflation` ist ein anhaltender allgemeiner Anstieg der in einer Currency ausgedrückten Prices innerhalb eines betrachteten wirtschaftlichen Zusammenhangs.

#### Zweck

Der Begriff bezeichnet eine allgemeine Preisentwicklung und grenzt sie von einzelnen Preisänderungen ab, ohne Ursache, Messung oder Wirkung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Inflation ist weder die Veränderung eines einzelnen `Price` noch eine Veränderung der Menge einer `Currency` als solche.

#### Verwandte Begriffe

- Currency
- Price
- Market
- Supply
- Demand

#### Referenzen

- PB-002
- PB-003

## 7.7 Produktion

### Production Facility

#### Definition

Eine `Production Facility` ist ein räumlich oder organisatorisch abgegrenzter Zusammenhang, der dauerhaft für Production bestimmt ist.

#### Zweck

Der Begriff bezeichnet den Träger und Rahmen von Produktionsmöglichkeiten, ohne Bauform, Eigentum, Verfahren oder technische Repräsentation festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Eine Production Facility ist nicht die Aktivität `Production` und nicht die Abfolge `Production Chain`.

#### Verwandte Begriffe

- Production
- Producer
- Production Chain
- Capacity
- Efficiency

#### Referenzen

- PB-002
- PB-003

### Production Chain

#### Definition

Eine `Production Chain` ist ein fachlich geordneter Zusammenhang mehrerer Produktionsschritte, in dem Outputs vorangehender Schritte als Inputs nachfolgender Schritte bestimmt sind.

#### Zweck

Der Begriff bezeichnet die wirtschaftliche Abhängigkeit aufeinander bezogener Produktionsschritte, ohne Ablaufsteuerung, Ort oder konkrete Verfahren festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Eine Production Chain ist weder eine einzelne `Production` noch eine `Production Facility`; sie beschreibt Beziehungen zwischen Produktionsschritten.

#### Verwandte Begriffe

- Production
- Production Facility
- Input
- Output
- Intermediate Good

#### Referenzen

- PB-002
- PB-003

### Input

#### Definition

Ein `Input` ist ein Good oder eine Resource in seiner festgelegten Rolle als Voraussetzung oder Einsatzgegenstand einer bestimmten Production.

#### Zweck

Der Begriff bezeichnet die eingehende wirtschaftliche Rolle eines Gegenstands relativ zu einem Produktionsschritt.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Input ist eine relationale Rolle und keine Güterklasse: Dasselbe Good kann Output eines Schritts und Input eines anderen sein. Input ist nicht mit `Consumption` gleichzusetzen.

#### Verwandte Begriffe

- Production
- Output
- Good
- Resource
- Production Chain

#### Referenzen

- PB-002
- PB-003

### Output

#### Definition

Ein `Output` ist ein Good oder ein anderes wirtschaftlich verwendbares Ergebnis in seiner festgelegten Rolle als Ergebnis einer bestimmten Production.

#### Zweck

Der Begriff bezeichnet die hervorgehende wirtschaftliche Rolle eines Ergebnisses relativ zu einem Produktionsschritt.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Output ist eine relationale Rolle und keine Güterklasse: Ein Output kann `Intermediate Good` oder `Finished Good` sein und als Input eines weiteren Schritts dienen.

#### Verwandte Begriffe

- Production
- Input
- Good
- Intermediate Good
- Finished Good

#### Referenzen

- PB-002
- PB-003

### Capacity

#### Definition

`Capacity` ist der unter festgelegten Bedingungen verfügbare Umfang, in dem ein Economic Actor oder Production Facility eine bestimmte wirtschaftliche Aktivität ausführen kann.

#### Zweck

Der Begriff bezeichnet die Grenze verfügbarer wirtschaftlicher Leistungsfähigkeit, ohne tatsächliche Nutzung, Messverfahren oder Zeiteinheit festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Capacity bezeichnet mögliche Leistung; `Output` bezeichnet ein hervorgebrachtes Ergebnis und `Efficiency` das Verhältnis von Einsatz zu Ergebnis.

#### Verwandte Begriffe

- Economic Actor
- Production Facility
- Production
- Output
- Efficiency

#### Referenzen

- PB-002
- PB-003

### Efficiency

#### Definition

`Efficiency` ist die relative Güte, mit der eine wirtschaftliche Aktivität Inputs oder andere eingesetzte Mittel in beabsichtigte Outputs oder Ergebnisse überführt.

#### Zweck

Der Begriff bezeichnet die Einsatz-Ergebnis-Beziehung unabhängig von Messverfahren, Ursache oder Optimierungsregel.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- Efficiency ist keine `Capacity`: Capacity bezeichnet den verfügbaren Umfang einer Aktivität, Efficiency deren Einsatz-Ergebnis-Verhältnis. Sie ist auch kein Output.

#### Verwandte Begriffe

- Production
- Input
- Output
- Capacity
- Production Facility

#### Referenzen

- PB-002
- PB-003
