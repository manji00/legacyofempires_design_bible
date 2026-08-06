---
document_id: PB-004
title: Naming & Terminology
version: 0.10.0
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
## 6. Bevölkerung und Gesellschaft

Bevölkerung wird auf mehreren, voneinander abzugrenzenden Ebenen beschrieben. Individuen, Haushalte und zusammengefasste Gruppen sind unterschiedliche Konzepte und dürfen nicht stellvertretend füreinander verwendet werden.

Kultur, gesellschaftliche Ordnung und demographische Entwicklung bilden eigenständige Begriffsbereiche. Ihre Beziehungen heben diese Trennung nicht auf.

Spätere Systeme und Dokumente MUST für diese Gegenstände ausschließlich die nachfolgend festgelegte Terminologie verwenden.

## 6.1 Bevölkerung

### Population

#### Definition

Eine `Population` ist die Gesamtheit der Personen, die einem räumlichen, politischen oder sonst eindeutig bestimmten Bezugsbereich zu einem bestimmten Zeitpunkt zugeordnet sind.

#### Zweck

Der Begriff bezeichnet den vollständigen personenbezogenen Bestand eines Bezugsbereichs, ohne dessen innere Gliederung oder rechtliche Stellung vorwegzunehmen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Population Group`: fasst nur Personen mit festgelegten gemeinsamen Merkmalen zusammen.
- `Household`: verbindet Personen durch eine gemeinsame Lebens- und Versorgungsgemeinschaft.
- `Citizen`: bezeichnet eine Person mit rechtlicher Mitgliedschaft in einem State.

#### Verwandte Begriffe

- Population Group
- Household
- Citizen
- Resident
- Migration

#### Referenzen

- PB-002
- PB-003

### Population Group

#### Definition

Eine `Population Group` ist eine innerhalb einer Population abgegrenzte Menge von Personen, die hinsichtlich ausdrücklich festgelegter gesellschaftlicher, kultureller, demographischer oder rechtlicher Merkmale übereinstimmen.

#### Zweck

Der Begriff ermöglicht die fachliche Zusammenfassung vergleichbarer Personen, ohne sie als Individuen oder Household zu behandeln und ohne zusätzliche Gemeinsamkeiten zu unterstellen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Population`: umfasst alle Personen des bestimmten Bezugsbereichs.
- `Household`: beruht auf einer gemeinsamen Lebens- und Versorgungsgemeinschaft.
- `Social Class`: ordnet Personen nach ihrer gesellschaftlichen Stellung.
- `Identity`: ist das Zugehörigkeitsverständnis einer Person oder Gruppe.

#### Verwandte Begriffe

- Population
- Household
- Social Class
- Culture
- Identity

#### Referenzen

- PB-002
- PB-003

### Household

#### Definition

Ein `Household` ist eine auf Dauer angelegte Gemeinschaft einer oder mehrerer Personen, die ihre alltägliche Lebensführung und wesentliche Mittel ihrer Versorgung gemeinsam ordnen.

#### Zweck

Der Begriff bezeichnet die soziale Versorgungseinheit zwischen einzelner Person und größeren Bevölkerungszusammenfassungen, unabhängig von Verwandtschaft oder Rechtsform.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Population Group`: entsteht durch übereinstimmende festgelegte Merkmale.
- `Population`: ist der vollständige Personenbestand eines Bezugsbereichs.
- `Resident`: ist eine einzelne Person mit gewöhnlichem Aufenthalt.

#### Verwandte Begriffe

- Population
- Population Group
- Citizen
- Resident
- Income
- Wealth

#### Referenzen

- PB-002
- PB-003

### Citizen

#### Definition

Ein `Citizen` ist eine natürliche Person, die kraft einer rechtlich anerkannten Zugehörigkeit dauerhaft Mitglied eines State ist.

#### Zweck

Der Begriff bezeichnet die formelle personenbezogene Mitgliedschaft in einer staatlichen Ordnung unabhängig von Aufenthaltsort, gesellschaftlicher Stellung oder politischer Haltung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Resident`: wird durch gewöhnlichen Aufenthalt statt staatlicher Mitgliedschaft bestimmt.
- `Population`: umfasst auch Personen ohne Citizenship.
- `Nation`: ist eine vorgestellte politische und gesellschaftliche Gemeinschaft und keine individuelle Rechtsstellung.

#### Verwandte Begriffe

- State
- Population
- Resident
- Identity

#### Referenzen

- PB-002
- PB-003

### Resident

#### Definition

Ein `Resident` ist eine natürliche Person, deren gewöhnlicher und auf Dauer ausgerichteter Lebensmittelpunkt innerhalb eines bestimmten Gebietes liegt.

#### Zweck

Der Begriff bezeichnet die auf tatsächlichem Aufenthalt beruhende Zuordnung einer Person zu einem Gebiet unabhängig von Citizenship oder kultureller Zugehörigkeit.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Citizen`: besitzt eine rechtliche Mitgliedschaft in einem State unabhängig vom Aufenthalt.
- `Population`: ist die Gesamtheit der einem Bezugsbereich zugeordneten Personen.
- `Immigration`: bezeichnet die auf ein Zielgebiet bezogene Zuwanderung.

#### Verwandte Begriffe

- Citizen
- Population
- Territory
- Migration
- Immigration
- Emigration

#### Referenzen

- PB-002
- PB-003

## 6.2 Gesellschaft

### Social Class

#### Definition

Eine `Social Class` ist eine gesellschaftliche Kategorie, deren Angehörige aufgrund dauerhaft vergleichbarer Stellung in der sozialen Ordnung zusammengefasst werden.

#### Zweck

Der Begriff bezeichnet eine strukturierte gesellschaftliche Lage, ohne eine bestimmte Profession, Occupation, Einkommenshöhe oder politische Organisation vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Profession`: bezeichnet ein abgegrenztes Feld qualifizierter Tätigkeit.
- `Occupation`: bezeichnet die tatsächlich ausgeübte regelmäßige Tätigkeit.
- `Wealth`: ist der Bestand wirtschaftlich nutzbarer Werte.
- `Interest Group`: ist ein organisierter politischer Akteur.

#### Verwandte Begriffe

- Population Group
- Profession
- Occupation
- Education
- Wealth
- Income
- Social Mobility

#### Referenzen

- PB-002
- PB-003

### Profession

#### Definition

Eine `Profession` ist ein gesellschaftlich abgegrenztes Feld qualifizierter Tätigkeit, das durch einen gemeinsamen Bestand an Kenntnissen, Fähigkeiten und anerkannten Aufgaben bestimmt wird.

#### Zweck

Der Begriff bezeichnet eine dauerhafte fachliche Qualifikation und Tätigkeitszuordnung unabhängig davon, ob oder in welcher konkreten Occupation sie gegenwärtig ausgeübt wird.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Occupation`: ist die gegenwärtig regelmäßig ausgeübte Tätigkeit einer Person.
- `Education`: ist der Erwerb und die Vermittlung von Wissen und Fähigkeiten.
- `Social Class`: bezeichnet die Stellung in der gesellschaftlichen Ordnung.

#### Verwandte Begriffe

- Occupation
- Education
- Literacy
- Social Class
- Income

#### Referenzen

- PB-002
- PB-003

### Occupation

#### Definition

Eine `Occupation` ist die von einer Person regelmäßig ausgeübte Tätigkeit, durch die sie eine bestimmte gesellschaftliche oder wirtschaftliche Aufgabe wahrnimmt.

#### Zweck

Der Begriff bezeichnet die tatsächliche gegenwärtige Tätigkeit unabhängig von fachlicher Qualifikation, gesellschaftlicher Stellung oder daraus erzieltem Income.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Profession`: ist ein qualifiziertes Tätigkeitsfeld und nicht dessen notwendige gegenwärtige Ausübung.
- `Income`: bezeichnet den innerhalb eines Zeitraums erfolgenden wirtschaftlichen Zufluss.
- `Social Class`: bezeichnet eine gesellschaftliche Stellung.

#### Verwandte Begriffe

- Profession
- Education
- Social Class
- Income

#### Referenzen

- PB-002
- PB-003

### Education

#### Definition

`Education` ist der geordnete Erwerb und die geordnete Vermittlung von Wissen, Fähigkeiten und Urteilsvermögen durch Personen und gesellschaftliche Einrichtungen.

#### Zweck

Der Begriff bezeichnet Bildung als umfassenden Entwicklungszusammenhang, ohne sie auf Lesefähigkeit, einen formalen Abschluss oder eine bestimmte Profession zu reduzieren.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Literacy`: ist die Fähigkeit, schriftliche Informationen zu verstehen und auszudrücken.
- `Profession`: ist ein gesellschaftlich abgegrenztes qualifiziertes Tätigkeitsfeld.

#### Verwandte Begriffe

- Literacy
- Profession
- Occupation
- Social Mobility

#### Referenzen

- PB-002
- PB-003

### Literacy

#### Definition

`Literacy` ist die Fähigkeit einer Person, schriftlich dargestellte Informationen in einer Language zu verstehen und sich in dieser schriftlich verständlich auszudrücken.

#### Zweck

Der Begriff bezeichnet schriftsprachliche Befähigung und grenzt sie von umfassender Education, fachlicher Qualifikation und bloßer Kenntnis einer Language ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Education`: umfasst weitergehenden Erwerb von Wissen, Fähigkeiten und Urteilsvermögen.
- `Language`: ist ein gemeinsames System sprachlicher Verständigung.
- `Profession`: bezeichnet ein qualifiziertes Tätigkeitsfeld.

#### Verwandte Begriffe

- Education
- Language
- Profession
- Social Mobility

#### Referenzen

- PB-002
- PB-003

### Wealth

#### Definition

`Wealth` ist der zu einem bestimmten Zeitpunkt einer Person, einem Household oder einer Gruppe zugeordnete Bestand wirtschaftlich nutzbarer Werte abzüglich der ihr zugeordneten Verpflichtungen.

#### Zweck

Der Begriff bezeichnet eine Bestandsgröße wirtschaftlicher Verfügungsmöglichkeiten und trennt sie von zeitbezogenen Zuflüssen und gesellschaftlicher Stellung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Income`: ist ein wirtschaftlicher Zufluss innerhalb eines Zeitraums.
- `Social Class`: bezeichnet eine gesellschaftliche Stellung und nicht einen Wertbestand.
- `Political Capital`: bezeichnet politisch mobilisierbare Handlungsmacht.

#### Verwandte Begriffe

- Income
- Household
- Social Class
- Social Mobility

#### Referenzen

- PB-002
- PB-003

### Income

#### Definition

`Income` ist die Gesamtheit wirtschaftlicher Werte, die einer Person, einem Household oder einer Gruppe innerhalb eines bestimmten Zeitraums zufließen.

#### Zweck

Der Begriff bezeichnet eine zeitraumbezogene Zuflussgröße unabhängig vom bereits vorhandenen Wealth oder der gesellschaftlichen Stellung der Empfänger.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Wealth`: ist ein zu einem Zeitpunkt bestehender Wertbestand.
- `Occupation`: ist eine tatsächlich ausgeübte Tätigkeit und nicht deren möglicher Ertrag.
- `Social Class`: bezeichnet die Stellung in der gesellschaftlichen Ordnung.

#### Verwandte Begriffe

- Wealth
- Household
- Occupation
- Profession
- Social Class

#### Referenzen

- PB-002
- PB-003

## 6.3 Kultur

### Culture

#### Definition

Eine `Culture` ist ein von einer Gruppe getragener und weitergegebener Zusammenhang gemeinsamer Bedeutungen, Werte, Normen, Ausdrucksformen und sozialer Praktiken.

#### Zweck

Der Begriff bezeichnet einen erlernten gesellschaftlichen Orientierungszusammenhang, ohne ihn mit Religion, Language oder individuellem Zugehörigkeitsverständnis gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Religion`: ordnet Überzeugungen und Praktiken in Bezug auf Heiliges, Transzendentes oder letzte Sinnfragen.
- `Language`: ist ein gemeinsames System sprachlicher Verständigung.
- `Identity`: ist das Verständnis eigener Zugehörigkeit und Abgrenzung.
- `Nation`: ist eine vorgestellte politische und gesellschaftliche Gemeinschaft.

#### Verwandte Begriffe

- Religion
- Language
- Identity
- Population Group
- Assimilation
- Integration

#### Referenzen

- PB-002
- PB-003

### Religion

#### Definition

Eine `Religion` ist ein geordneter Zusammenhang geteilter Überzeugungen, Deutungen, Normen und Praktiken, die sich auf Heiliges, Transzendentes oder letzte Sinnfragen beziehen.

#### Zweck

Der Begriff bezeichnet religiöse Zugehörigkeits- und Deutungsordnungen, ohne sie mit der gesamten Culture, einer Institution oder politischer Ideology gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Culture`: umfasst einen breiteren Zusammenhang geteilter Bedeutungen und Praktiken.
- `Ideology`: ist ein zusammenhängendes Modell politischer Ordnung und gesellschaftlicher Entwicklung.
- `Institution`: ist eine dauerhaft geordnete Einrichtung mit festgelegten Aufgaben.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit.

#### Verwandte Begriffe

- Culture
- Identity
- Population Group
- Institution
- Ideology

#### Referenzen

- PB-002
- PB-003

### Language

#### Definition

Eine `Language` ist ein gemeinsames, regelhaftes System gesprochener, geschriebener oder gebärdeter Zeichen, durch das Personen Bedeutungen ausdrücken und miteinander verständigen.

#### Zweck

Der Begriff bezeichnet ein Mittel sprachlicher Verständigung unabhängig von Literacy, kultureller Zugehörigkeit oder persönlicher Identity.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Literacy`: bezeichnet schriftsprachliche Befähigung in einer Language.
- `Culture`: ist ein umfassender Zusammenhang gemeinsamer Bedeutungen und Praktiken.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit.

#### Verwandte Begriffe

- Literacy
- Culture
- Identity
- Population Group
- Assimilation
- Integration

#### Referenzen

- PB-002
- PB-003

### Identity

#### Definition

Eine `Identity` ist das Verständnis einer Person oder Gruppe davon, welchen sozialen, kulturellen, politischen oder sonstigen Gemeinschaften sie sich zugehörig sieht und wodurch sie sich von anderen unterscheidet.

#### Zweck

Der Begriff bezeichnet wahrgenommene Zugehörigkeit und Abgrenzung, ohne daraus Culture, Religion, Language, Citizenship oder politische Haltung abzuleiten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Culture`: ist ein geteilter Zusammenhang von Bedeutungen und Praktiken.
- `Religion`: ist eine religiöse Deutungs- und Praxisordnung.
- `Language`: ist ein System sprachlicher Verständigung.
- `Citizen`: bezeichnet eine rechtliche Mitgliedschaft in einem State.
- `Political Support`: ist Zustimmung zu einem politischen Akteur, Ziel oder Vorhaben.

#### Verwandte Begriffe

- Culture
- Religion
- Language
- Citizen
- Population Group
- Assimilation
- Integration

#### Referenzen

- PB-002
- PB-003

## 6.4 Gesellschaftliche Dynamik

### Loyalty

#### Definition

`Loyalty` ist die dauerhafte Bindungsbereitschaft einer Person oder Gruppe gegenüber einem politischen oder gesellschaftlichen Bezugsobjekt, die auch bei einzelnen Meinungsunterschieden fortbestehen kann.

#### Zweck

Der Begriff bezeichnet beständige Verbundenheit und trennt sie von gegenstandsbezogener politischer Zustimmung, allgemeiner Legitimacy und persönlicher Identity.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Support`: ist Zustimmung zu einem bestimmten politischen Akteur, Ziel oder Vorhaben.
- `Legitimacy`: ist die anerkannte Rechtmäßigkeit politischer Ordnung oder Herrschaft.
- `Identity`: ist das Verständnis eigener Zugehörigkeit und Abgrenzung.

#### Verwandte Begriffe

- Political Support
- Legitimacy
- Identity
- Radicalization

#### Referenzen

- PB-002
- PB-003

### Political Support

#### Definition

`Political Support` ist die zustimmende Haltung einer Person oder Gruppe gegenüber einem bestimmten politischen Akteur, Ziel, Vorhaben oder einer politischen Ordnung.

#### Zweck

Der Begriff bezeichnet gegenstandsbezogene politische Zustimmung unabhängig von dauerhafter Loyalty, institutioneller Legitimacy oder organisatorischer Mitgliedschaft.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Loyalty`: ist eine fortdauernde Bindungsbereitschaft gegenüber einem Bezugsobjekt.
- `Legitimacy`: bezeichnet anerkannte Rechtmäßigkeit.
- `Political Party`: ist ein organisierter politischer Akteur.
- `Interest Group`: vertritt dauerhaft gemeinsame politische Interessen.

#### Verwandte Begriffe

- Loyalty
- Legitimacy
- Political Party
- Interest Group
- Radicalization

#### Referenzen

- PB-002
- PB-003

### Radicalization

#### Definition

`Radicalization` ist eine gesellschaftliche Entwicklung, in der Personen oder Gruppen zunehmend grundlegende und kompromissunwillige Veränderungen einer bestehenden politischen oder gesellschaftlichen Ordnung befürworten.

#### Zweck

Der Begriff bezeichnet die Veränderung politischer oder gesellschaftlicher Haltung hin zu fundamentaler Ordnungsablehnung, ohne eine bestimmte Ideology, Organisation oder Handlungsform vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Political Support`: bezeichnet Zustimmung und nicht die Richtung oder Intensivierung einer Haltungsentwicklung.
- `Opposition`: ist die Gesamtheit politischer Akteure, die der gegenwärtigen politischen Führung entgegenstehen.
- `Ideology`: ist ein zusammenhängendes Modell politischer Ordnung und gesellschaftlicher Entwicklung.

#### Verwandte Begriffe

- Political Support
- Loyalty
- Opposition
- Ideology
- Social Mobility

#### Referenzen

- PB-002
- PB-003

### Social Mobility

#### Definition

`Social Mobility` ist die Veränderung der gesellschaftlichen Stellung einer Person, eines Household oder einer Gruppe innerhalb einer gesellschaftlichen Ordnung oder zwischen aufeinanderfolgenden Generationen.

#### Zweck

Der Begriff bezeichnet Positionswechsel in der sozialen Struktur unabhängig davon, ob sie mit Veränderungen von Profession, Occupation, Education, Income oder Wealth einhergehen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Migration`: ist die dauerhafte Verlagerung des gewöhnlichen Aufenthaltsortes.
- `Social Class`: ist eine Kategorie gesellschaftlicher Stellung.
- `Income`: bezeichnet wirtschaftliche Zuflüsse in einem Zeitraum.
- `Wealth`: bezeichnet einen wirtschaftlichen Wertbestand.

#### Verwandte Begriffe

- Social Class
- Education
- Profession
- Occupation
- Income
- Wealth

#### Referenzen

- PB-002
- PB-003

## 6.5 Bevölkerungsentwicklung

### Birth Rate

#### Definition

Eine `Birth Rate` ist die Anzahl der Lebendgeburten innerhalb einer Population während eines bestimmten Zeitraums im Verhältnis zu einer festgelegten Bezugsgröße dieser Population.

#### Zweck

Der Begriff bezeichnet die relative Häufigkeit von Geburten und ermöglicht ihre Vergleichbarkeit über unterschiedlich große Populationen und Zeiträume hinweg.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Population`: ist der Personenbestand und keine Veränderungsrate.
- `Death Rate`: bezeichnet die relative Häufigkeit von Todesfällen.
- `Immigration`: verändert eine Population durch Zuwanderung statt durch Geburten.

#### Verwandte Begriffe

- Population
- Death Rate
- Migration
- Immigration
- Emigration

#### Referenzen

- PB-002
- PB-003

### Death Rate

#### Definition

Eine `Death Rate` ist die Anzahl der Todesfälle innerhalb einer Population während eines bestimmten Zeitraums im Verhältnis zu einer festgelegten Bezugsgröße dieser Population.

#### Zweck

Der Begriff bezeichnet die relative Häufigkeit von Todesfällen und ermöglicht ihre Vergleichbarkeit über unterschiedlich große Populationen und Zeiträume hinweg.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Population`: ist der Personenbestand und keine Veränderungsrate.
- `Birth Rate`: bezeichnet die relative Häufigkeit von Lebendgeburten.
- `Emigration`: verändert eine Population durch Abwanderung statt durch Todesfälle.

#### Verwandte Begriffe

- Population
- Birth Rate
- Migration
- Immigration
- Emigration

#### Referenzen

- PB-002
- PB-003

### Migration

#### Definition

`Migration` ist die auf Dauer ausgerichtete Verlagerung des gewöhnlichen Aufenthaltsortes einer Person oder Gruppe von einem Herkunftsgebiet in ein anderes Gebiet.

#### Zweck

Der Begriff bezeichnet den allgemeinen demographischen Ortswechsel, ohne die Perspektive des Herkunfts- oder Zielgebietes festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Immigration`: betrachtet Migration aus der Perspektive des Zielgebietes.
- `Emigration`: betrachtet Migration aus der Perspektive des Herkunftsgebietes.
- `Social Mobility`: ist eine Veränderung gesellschaftlicher Stellung.
- `Assimilation`: ist die Aufgabe prägender kultureller Unterscheidungsmerkmale zugunsten einer anderen Culture.

#### Verwandte Begriffe

- Population
- Resident
- Immigration
- Emigration
- Assimilation
- Integration

#### Referenzen

- PB-002
- PB-003

### Immigration

#### Definition

`Immigration` ist Migration aus der Perspektive des Zielgebietes, in dem Personen oder Gruppen ihren gewöhnlichen Aufenthalt neu und auf Dauer begründen.

#### Zweck

Der Begriff bezeichnet ausschließlich die auf ein Zielgebiet bezogene Zuwanderung und grenzt sie vom allgemeinen Ortswechsel und seiner Herkunftsperspektive ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Migration`: ist der perspektivisch neutrale Oberbegriff.
- `Emigration`: betrachtet denselben Ortswechsel aus der Perspektive des Herkunftsgebietes.
- `Integration`: bezeichnet gesellschaftliche Einbindung bei fortbestehenden Unterschieden.

#### Verwandte Begriffe

- Migration
- Emigration
- Resident
- Population
- Integration
- Assimilation

#### Referenzen

- PB-002
- PB-003

### Emigration

#### Definition

`Emigration` ist Migration aus der Perspektive des Herkunftsgebietes, aus dem Personen oder Gruppen ihren gewöhnlichen Aufenthalt auf Dauer verlagern.

#### Zweck

Der Begriff bezeichnet ausschließlich die auf ein Herkunftsgebiet bezogene Abwanderung und grenzt sie vom allgemeinen Ortswechsel und seiner Zielperspektive ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Migration`: ist der perspektivisch neutrale Oberbegriff.
- `Immigration`: betrachtet denselben Ortswechsel aus der Perspektive des Zielgebietes.
- `Assimilation`: bezeichnet kulturelle Angleichung und keinen Ortswechsel.

#### Verwandte Begriffe

- Migration
- Immigration
- Resident
- Population
- Integration
- Assimilation

#### Referenzen

- PB-002
- PB-003

### Assimilation

#### Definition

`Assimilation` ist eine auf Dauer wirkende kulturelle Veränderung, durch die eine Person oder Gruppe prägende Unterscheidungsmerkmale ihrer bisherigen Culture zugunsten einer anderen Culture weitgehend aufgibt.

#### Zweck

Der Begriff bezeichnet kulturelle Angleichung durch den Verlust wesentlicher bisheriger Unterscheidungsmerkmale und grenzt sie von gesellschaftlicher Einbindung bei fortbestehenden Unterschieden ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Integration`: ermöglicht gesellschaftliche Einbindung bei fortbestehenden kulturellen oder sozialen Unterschieden.
- `Migration`: bezeichnet die Verlagerung des gewöhnlichen Aufenthaltsortes.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit und Abgrenzung.

#### Verwandte Begriffe

- Integration
- Culture
- Language
- Identity
- Migration
- Population Group

#### Referenzen

- PB-002
- PB-003

### Integration

#### Definition

`Integration` ist ein wechselseitiger gesellschaftlicher Prozess, durch den Personen oder Gruppen gleichberechtigten Zugang zu sozialen Zusammenhängen und gemeinsame Teilhabe erlangen, während kulturelle oder soziale Unterschiede fortbestehen können.

#### Zweck

Der Begriff bezeichnet gesellschaftliche Einbindung ohne die Aufgabe prägender kultureller Unterscheidungsmerkmale vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Assimilation`: setzt die weitgehende Aufgabe prägender Merkmale der bisherigen Culture zugunsten einer anderen voraus.
- `Immigration`: bezeichnet die auf ein Zielgebiet bezogene Migration.
- `Political Support`: bezeichnet Zustimmung zu einem politischen Bezugsobjekt.

#### Verwandte Begriffe

- Assimilation
- Culture
- Language
- Identity
- Migration
- Immigration
- Population Group

#### Referenzen

- PB-002
- PB-003

## 7. Wirtschaft und Produktion

Wirtschaftliche Begriffe werden als zusammenhängende fachliche Domäne betrachtet. Wirtschaftliche Prozesse entstehen aus dem Zusammenwirken von Akteuren, ihren Aktivitäten und den Beziehungen, die sie über Güter, Ressourcen, Märkte, Handel, Finanzen und Produktion miteinander verbinden.

Dieses Kapitel definiert ausschließlich die kanonische Terminologie dieser Domäne. Die zugehörigen Gameplayregeln, Systemabläufe, Werte und technischen Implementierungen werden in späteren Game-Design-, Balancing- und Technikdokumenten behandelt.

## 7.1 Wirtschaftliche Akteure

### Economic Actor

#### Definition

Ein `Economic Actor` ist eine Person, Gruppe, Organisation oder ein State, die beziehungsweise der eigenständig wirtschaftliche Entscheidungen trifft, wirtschaftliche Aktivitäten ausübt oder wirtschaftliche Beziehungen eingeht.

#### Zweck

Der Begriff bezeichnet den allgemeinen Träger wirtschaftlichen Handelns, ohne eine bestimmte Rolle, Rechtsform oder politische Stellung vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Producer`: ist ein Economic Actor in der Rolle der Herstellung oder Bereitstellung von Goods.
- `Consumer`: ist ein Economic Actor in der Rolle der Nutzung oder des Verbrauchs von Goods.
- `State`: ist eine politische und rechtliche Ordnung, die als Economic Actor handeln kann.

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

Ein `Producer` ist ein Economic Actor, der Goods durch Production hervorbringt, bearbeitet oder zur wirtschaftlichen Nutzung bereitstellt.

#### Zweck

Der Begriff bezeichnet die produktive Rolle eines Economic Actor unabhängig von Art, Umfang oder Organisation der Production.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der Oberbegriff für Träger wirtschaftlichen Handelns.
- `Production`: ist die wirtschaftliche Aktivität und nicht ihr Akteur.
- `Production Facility`: ist eine räumlich und organisatorisch abgegrenzte Einrichtung der Production.

#### Verwandte Begriffe

- Economic Actor
- Production
- Good
- Production Facility
- Consumer

#### Referenzen

- PB-002
- PB-003

### Consumer

#### Definition

Ein `Consumer` ist ein Economic Actor, der Goods zur Befriedigung eigener oder zugeordneter Bedürfnisse nutzt oder verbraucht.

#### Zweck

Der Begriff bezeichnet die nachfragende und nutzende Rolle eines Economic Actor, ohne eine bestimmte Art des Erwerbs oder der Verwendung vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der Oberbegriff für Träger wirtschaftlichen Handelns.
- `Consumption`: ist die wirtschaftliche Aktivität der Nutzung oder des Verbrauchs.
- `Demand`: ist die auf einen möglichen Erwerb gerichtete Bereitschaft und Fähigkeit.

#### Verwandte Begriffe

- Economic Actor
- Consumption
- Good
- Demand
- Producer

#### Referenzen

- PB-002
- PB-003

### Employer

#### Definition

Ein `Employer` ist ein Economic Actor, der im Rahmen von Employment Arbeitsleistung anderer Economic Actors in Anspruch nimmt und dafür eine vereinbarte Gegenleistung schuldet.

#### Zweck

Der Begriff bezeichnet die arbeitsnachfragende Seite einer Employment-Beziehung unabhängig von ihrer organisatorischen oder rechtlichen Form.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Employee`: erbringt die vereinbarte Arbeitsleistung.
- `Producer`: bezeichnet eine produktive Rolle und setzt keine Employment-Beziehung voraus.

#### Verwandte Begriffe

- Employee
- Employment
- Economic Actor
- Production

#### Referenzen

- PB-002
- PB-003

### Employee

#### Definition

Ein `Employee` ist ein Economic Actor, der einem Employer im Rahmen von Employment vereinbarte Arbeitsleistung gegen eine geschuldete Gegenleistung erbringt.

#### Zweck

Der Begriff bezeichnet die arbeitserbringende Seite einer Employment-Beziehung, ohne Profession, Occupation oder gesellschaftliche Stellung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Employer`: nimmt die vereinbarte Arbeitsleistung in Anspruch.
- `Occupation`: ist eine regelmäßig ausgeübte Tätigkeit und nicht die Stellung in einer Employment-Beziehung.
- `Profession`: ist ein qualifiziertes Tätigkeitsfeld.

#### Verwandte Begriffe

- Employer
- Employment
- Economic Actor
- Occupation
- Profession
- Income

#### Referenzen

- PB-002
- PB-003

### Investor

#### Definition

Ein `Investor` ist ein Economic Actor, der wirtschaftliche Werte für Investment bereitstellt und damit eine künftige wirtschaftliche Wirkung oder einen wirtschaftlichen Ertrag anstrebt.

#### Zweck

Der Begriff bezeichnet den Träger eines Investment, ohne dessen Gegenstand, Finanzierung oder Ergebnis festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Investment`: ist die wirtschaftliche Aktivität der zielgerichteten Bereitstellung von Werten.
- `Credit`: ist die zeitweilige Überlassung von Verfügungsmacht mit Rückzahlungsanspruch.

#### Verwandte Begriffe

- Economic Actor
- Investment
- Credit
- Production Facility

#### Referenzen

- PB-002
- PB-003

### State

#### Definition

Der `State` ist das in Kapitel 4.1 definierte politische Gemeinwesen; innerhalb der wirtschaftlichen Domäne handelt er als Economic Actor, soweit er wirtschaftliche Entscheidungen trifft, Aktivitäten ausübt oder Beziehungen eingeht.

#### Zweck

Der Eintrag ordnet den bereits definierten State der wirtschaftlichen Domäne zu, ohne seine politische Definition zu ersetzen oder einen eigenständigen wirtschaftlichen Staatsbegriff einzuführen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der allgemeine Oberbegriff und keine politische Entität.
- `Treasury`: bezeichnet die einem State zugeordneten verfügbaren finanziellen Mittel.
- `National Market`: ist ein auf den Wirtschaftsraum eines Country bezogener Market.

#### Verwandte Begriffe

- Economic Actor
- Treasury
- Tax
- Subsidy
- Budget
- National Market

#### Referenzen

- PB-002
- PB-003

## 7.2 Wirtschaftliche Aktivitäten

### Production

#### Definition

`Production` ist die wirtschaftliche Aktivität, durch die ein Producer Inputs einsetzt oder verändert, um Outputs hervorzubringen oder bereitzustellen.

#### Zweck

Der Begriff bezeichnet den Vorgang wirtschaftlicher Hervorbringung und grenzt ihn von seinem Akteur, seiner Einrichtung und der Folge verbundener Produktionsstufen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Producer`: ist der handelnde Economic Actor.
- `Production Facility`: ist eine Einrichtung, in der Production stattfinden kann.
- `Production Chain`: ist eine fachliche Folge voneinander abhängiger Produktionsstufen.

#### Verwandte Begriffe

- Producer
- Input
- Output
- Production Facility
- Production Chain
- Capacity
- Efficiency

#### Referenzen

- PB-002
- PB-003

### Consumption

#### Definition

`Consumption` ist die wirtschaftliche Aktivität, durch die ein Consumer ein Good zur Befriedigung eines Bedürfnisses nutzt oder verbraucht.

#### Zweck

Der Begriff bezeichnet die bedürfnisbezogene Verwendung von Goods und trennt sie von deren Erwerb, Austausch oder produktivem Einsatz als Input.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Consumer`: ist der handelnde Economic Actor.
- `Exchange`: ist die wechselseitige Übertragung wirtschaftlicher Werte.
- `Input`: wird für eine wirtschaftliche Aktivität eingesetzt.

#### Verwandte Begriffe

- Consumer
- Good
- Demand
- Exchange

#### Referenzen

- PB-002
- PB-003

### Distribution

#### Definition

`Distribution` ist die wirtschaftliche Aktivität, durch die Goods oder wirtschaftliche Werte zwischen Akteuren, Verwendungszwecken oder Orten zugeordnet und weitergegeben werden.

#### Zweck

Der Begriff bezeichnet die Verteilung und Weiterleitung wirtschaftlicher Gegenstände, ohne einen Eigentumswechsel, einen Market oder grenzüberschreitenden Trade vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Exchange`: beruht auf wechselseitiger Übertragung.
- `Trade`: ist auf Austausch gerichtetes wirtschaftliches Handeln zwischen Akteuren.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

#### Verwandte Begriffe

- Good
- Exchange
- Trade
- Market
- Supply

#### Referenzen

- PB-002
- PB-003

### Exchange

#### Definition

`Exchange` ist die wirtschaftliche Aktivität, bei der Economic Actors einander wirtschaftliche Werte wechselseitig übertragen.

#### Zweck

Der Begriff bezeichnet den einzelnen wechselseitigen Übertragungsvorgang unabhängig davon, ob er über einen Market, als Trade oder unter Verwendung von Currency erfolgt.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trade`: bezeichnet auf Exchange gerichtetes wirtschaftliches Handeln und die daraus entstehenden Handelsbeziehungen.
- `Distribution`: setzt keine wechselseitige Übertragung voraus.
- `Market`: ist der Zusammenhang, in dem Supply und Demand aufeinandertreffen.

#### Verwandte Begriffe

- Economic Actor
- Trade
- Market
- Currency
- Good

#### Referenzen

- PB-002
- PB-003

### Investment

#### Definition

`Investment` ist die wirtschaftliche Aktivität, bei der wirtschaftliche Werte gegenwärtig für den Aufbau, Erhalt oder die Verbesserung künftiger wirtschaftlicher Möglichkeiten bereitgestellt werden.

#### Zweck

Der Begriff bezeichnet eine zukunftsgerichtete Verwendung wirtschaftlicher Werte unabhängig von Gegenstand, Finanzierung und tatsächlich eintretendem Ertrag.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Investor`: ist der handelnde Economic Actor.
- `Credit`: überlässt Verfügungsmacht nur zeitweilig und begründet einen Rückzahlungsanspruch.
- `Subsidy`: ist eine staatliche wirtschaftliche Zuwendung für einen bestimmten Zweck.

#### Verwandte Begriffe

- Investor
- Credit
- Production Facility
- Capacity
- Efficiency

#### Referenzen

- PB-002
- PB-003

### Employment

#### Definition

`Employment` ist eine wirtschaftliche Beziehung, in der ein Employee einem Employer vereinbarte Arbeitsleistung gegen eine geschuldete Gegenleistung erbringt.

#### Zweck

Der Begriff bezeichnet das Verhältnis zwischen arbeitserbringendem und arbeitsnachfragendem Economic Actor, ohne konkrete Tätigkeit, Qualifikation oder Vergütungsform festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Occupation`: bezeichnet eine regelmäßig ausgeübte Tätigkeit.
- `Profession`: bezeichnet ein qualifiziertes Tätigkeitsfeld.
- `Production`: ist wirtschaftliche Hervorbringung und setzt Employment nicht voraus.

#### Verwandte Begriffe

- Employer
- Employee
- Economic Actor
- Occupation
- Profession
- Income

#### Referenzen

- PB-002
- PB-003

## 7.3 Güter und Ressourcen

### Good

#### Definition

Ein `Good` ist ein materieller oder immaterieller Gegenstand wirtschaftlicher Verfügung, der ein Bedürfnis befriedigen, in wirtschaftlichen Aktivitäten eingesetzt oder zwischen Economic Actors übertragen werden kann.

#### Zweck

Der Begriff bezeichnet den allgemeinen wirtschaftlichen Gegenstand von Production, Consumption, Distribution und Exchange, ohne Herkunft oder Produktionsstufe festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Resource`: ist ein verfügbarer oder erschließbarer Bestand mit möglicher wirtschaftlicher Verwendbarkeit.
- `Raw Material`: ist ein unmittelbar gewonnener und noch nicht weiterverarbeiteter Input.
- `Intermediate Good`: ist für weitere Production bestimmt.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.

#### Verwandte Begriffe

- Resource
- Raw Material
- Intermediate Good
- Finished Good
- Production
- Consumption

#### Referenzen

- PB-002
- PB-003

### Resource

#### Definition

Eine `Resource` ist ein verfügbarer oder erschließbarer materieller oder immaterieller Bestand, der für wirtschaftliche Aktivitäten genutzt werden kann.

#### Zweck

Der Begriff bezeichnet wirtschaftlich verwendbares Potenzial, ohne vorauszusetzen, dass es bereits gewonnen, verarbeitet, als Good bereitgestellt oder tatsächlich eingesetzt wurde.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Good`: ist ein Gegenstand wirtschaftlicher Verfügung.
- `Raw Material`: ist ein gewonnener, noch nicht weiterverarbeiteter Input.
- `Strategic Resource`: besitzt besondere Bedeutung für übergeordnete wirtschaftliche oder staatliche Handlungsfähigkeit.

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

Ein `Raw Material` ist ein unmittelbar aus einer Resource gewonnener und noch nicht weiterverarbeiteter materieller Input für Production.

#### Zweck

Der Begriff bezeichnet die erste stoffliche Form nach der Gewinnung und grenzt sie von der zugrunde liegenden Resource sowie bereits verarbeiteten Goods ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Resource`: kann noch unerschlossen oder ungewonnen sein.
- `Intermediate Good`: ist bereits durch Production hervorgebracht und für weitere Production bestimmt.
- `Input`: ist die funktionale Rolle eines eingesetzten Gegenstands und keine Produktionsstufe.

#### Verwandte Begriffe

- Resource
- Good
- Intermediate Good
- Input
- Production

#### Referenzen

- PB-002
- PB-003

### Intermediate Good

#### Definition

Ein `Intermediate Good` ist ein durch Production hervorgebrachtes Good, das für den Einsatz als Input in weiterer Production bestimmt ist.

#### Zweck

Der Begriff bezeichnet eine zwischen Gewinnung und vorgesehener Endverwendung liegende Produktionsstufe, ohne eine bestimmte Zahl weiterer Stufen vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Raw Material`: ist unmittelbar gewonnen und noch nicht weiterverarbeitet.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.
- `Input`: ist eine Rolle innerhalb einer Aktivität und nicht notwendig eine Güterklasse.

#### Verwandte Begriffe

- Good
- Raw Material
- Finished Good
- Input
- Output
- Production Chain

#### Referenzen

- PB-002
- PB-003

### Finished Good

#### Definition

Ein `Finished Good` ist ein Good, dessen Production für seine vorgesehene Endverwendung abgeschlossen ist.

#### Zweck

Der Begriff bezeichnet den Abschluss der für einen bestimmten Verwendungszweck vorgesehenen Production, ohne auszuschließen, dass das Good in einem anderen Zusammenhang als Input dienen kann.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Intermediate Good`: ist für weitere Production bestimmt.
- `Output`: ist jedes Ergebnis einer wirtschaftlichen Aktivität unabhängig von seiner Produktionsstufe.

#### Verwandte Begriffe

- Good
- Intermediate Good
- Output
- Consumption
- Production Chain

#### Referenzen

- PB-002
- PB-003

### Strategic Resource

#### Definition

Eine `Strategic Resource` ist eine Resource, deren Verfügbarkeit besondere Bedeutung für die übergeordnete wirtschaftliche oder staatliche Handlungsfähigkeit besitzt.

#### Zweck

Der Begriff kennzeichnet die besondere Bedeutung einer Resource, ohne eine konkrete Verwendung, Knappheit oder politische Maßnahme festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Resource`: ist der allgemeine Oberbegriff ohne notwendige strategische Bedeutung.
- `Raw Material`: bezeichnet eine gewonnene und unverarbeitete Form unabhängig von ihrer Bedeutung.

#### Verwandte Begriffe

- Resource
- Raw Material
- Supply
- Trade
- Embargo

#### Referenzen

- PB-002
- PB-003

## 7.4 Märkte

### Market

#### Definition

Ein `Market` ist ein wirtschaftlicher Beziehungszusammenhang, in dem Supply und Demand für bestimmte Goods aufeinandertreffen und Exchange-Bedingungen entstehen.

#### Zweck

Der Begriff bezeichnet den Ordnungs- und Beziehungsrahmen wirtschaftlichen Austauschs, ohne einen bestimmten Ort, räumlichen Umfang oder einzelne Transaktion vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trade`: ist das auf Exchange gerichtete wirtschaftliche Handeln zwischen Akteuren.
- `Exchange`: ist ein wechselseitiger Übertragungsvorgang.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

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

Ein `Local Market` ist ein Market, dessen maßgeblicher wirtschaftlicher Beziehungszusammenhang auf ein örtlich begrenztes Gebiet bezogen ist.

#### Zweck

Der Begriff unterscheidet räumlich begrenzte Marktbeziehungen von Markets mit landesweitem oder grenzüberschreitendem Bezugsraum.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `National Market`: bezieht sich auf den Wirtschaftsraum eines Country.
- `International Market`: verbindet Economic Actors über Grenzen von Countries hinweg.

#### Verwandte Begriffe

- Market
- National Market
- International Market
- Supply
- Demand

#### Referenzen

- PB-002
- PB-003

### National Market

#### Definition

Ein `National Market` ist ein Market, dessen maßgeblicher wirtschaftlicher Beziehungszusammenhang auf den Wirtschaftsraum eines Country bezogen ist.

#### Zweck

Der Begriff bezeichnet landesweit zusammenhängende Marktbeziehungen, ohne vollständige Abgeschlossenheit gegenüber lokalen oder internationalen Markets vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Local Market`: ist auf ein örtlich begrenztes Gebiet bezogen.
- `International Market`: verbindet Economic Actors über Grenzen von Countries hinweg.
- `State`: ist ein politisches Gemeinwesen und kein Market.

#### Verwandte Begriffe

- Market
- Local Market
- International Market
- Country
- Import
- Export

#### Referenzen

- PB-002
- PB-003

### International Market

#### Definition

Ein `International Market` ist ein Market, dessen wirtschaftlicher Beziehungszusammenhang Economic Actors über die Grenzen von Countries hinweg verbindet.

#### Zweck

Der Begriff bezeichnet grenzüberschreitende Marktbeziehungen unabhängig von ihrer räumlichen Reichweite, institutionellen Ordnung oder den beteiligten Goods.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `National Market`: ist auf den Wirtschaftsraum eines Country bezogen.
- `Trade`: ist wirtschaftliches Handeln und nicht der Marktbeziehungszusammenhang.

#### Verwandte Begriffe

- Market
- National Market
- Trade
- Import
- Export
- Tariff
- Embargo

#### Referenzen

- PB-002
- PB-003

### Supply

#### Definition

`Supply` ist die Gesamtheit der Mengen von Goods, die Economic Actors unter bestimmten Bedingungen in einem Market zur Übertragung bereitstellen.

#### Zweck

Der Begriff bezeichnet die Angebotsseite eines Market und trennt die Bereitstellungsbereitschaft von vorhandenen Beständen, Production und tatsächlich erfolgtem Exchange.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Demand`: bezeichnet die auf Erwerb gerichtete Bereitschaft und Fähigkeit.
- `Production`: bringt Outputs hervor, stellt sie aber nicht notwendig in einem Market bereit.
- `Output`: ist das Ergebnis einer wirtschaftlichen Aktivität.

#### Verwandte Begriffe

- Market
- Demand
- Price
- Producer
- Good
- Competition

#### Referenzen

- PB-002
- PB-003

### Demand

#### Definition

`Demand` ist die Gesamtheit der Mengen von Goods, die Economic Actors unter bestimmten Bedingungen in einem Market zu erwerben bereit und fähig sind.

#### Zweck

Der Begriff bezeichnet die Nachfrageseite eines Market und trennt Erwerbsbereitschaft und Erwerbsfähigkeit von Bedürfnis, Consumption und tatsächlich erfolgtem Exchange.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Supply`: bezeichnet zur Übertragung bereitgestellte Goods.
- `Consumption`: ist die Nutzung oder der Verbrauch eines Good.
- `Consumer`: ist ein Economic Actor in einer nutzenden oder verbrauchenden Rolle.

#### Verwandte Begriffe

- Market
- Supply
- Price
- Consumer
- Good
- Competition

#### Referenzen

- PB-002
- PB-003

### Price

#### Definition

Ein `Price` ist der in einer wirtschaftlichen Beziehung einem Good oder einer Leistung zugeordnete Gegenwert, zu dem eine Übertragung angeboten, nachgefragt oder vollzogen wird.

#### Zweck

Der Begriff bezeichnet den wirtschaftlichen Gegenwert einer möglichen oder tatsächlichen Übertragung, ohne seine Bildung, Einheit oder Angemessenheit festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Currency`: ist ein allgemein anerkanntes Mittel zur Angabe und Übertragung wirtschaftlicher Werte.
- `Tax`: ist eine verpflichtende Abgabe an einen State.

#### Verwandte Begriffe

- Market
- Supply
- Demand
- Currency
- Exchange
- Inflation

#### Referenzen

- PB-002
- PB-003

### Competition

#### Definition

`Competition` ist eine wirtschaftliche Beziehung, in der mehrere Economic Actors unabhängig voneinander um begrenzte Möglichkeiten des Angebots, Erwerbs oder wirtschaftlichen Erfolgs streben.

#### Zweck

Der Begriff bezeichnet konkurrierendes wirtschaftliches Handeln, ohne eine bestimmte Marktstruktur, Strategie oder Wirkung vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Market`: ist der Beziehungszusammenhang, in dem Competition auftreten kann.
- `Exchange`: ist eine wechselseitige Übertragung und kein Konkurrenzverhältnis.

#### Verwandte Begriffe

- Economic Actor
- Market
- Supply
- Demand
- Price

#### Referenzen

- PB-002
- PB-003

## 7.5 Handel

### Trade

#### Definition

`Trade` ist das auf Exchange von Goods oder wirtschaftlichen Werten gerichtete wirtschaftliche Handeln zwischen Economic Actors und die daraus entstehende Handelsbeziehung.

#### Zweck

Der Begriff bezeichnet wirtschaftliches Austauschhandeln unabhängig davon, ob es innerhalb eines Gebietes, über Grenzen hinweg, über einen Market oder entlang einer Trade Route erfolgt.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Market`: ist der Beziehungszusammenhang von Supply und Demand.
- `Exchange`: ist der einzelne wechselseitige Übertragungsvorgang.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

#### Verwandte Begriffe

- Exchange
- Market
- Trade Route
- Import
- Export
- Tariff
- Embargo

#### Referenzen

- PB-002
- PB-003

### Trade Route

#### Definition

Eine `Trade Route` ist eine beständige räumliche Verbindung zwischen Herkunfts-, Durchgangs- und Zielorten, über die Trade regelmäßig erfolgt oder erfolgen kann.

#### Zweck

Der Begriff bezeichnet den räumlichen Zusammenhang wiederkehrenden Trade und grenzt ihn vom Trade selbst sowie von einzelnen Transport- oder Austauschvorgängen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trade`: ist das wirtschaftliche Austauschhandeln.
- `Distribution`: ist die Zuordnung und Weitergabe von Goods oder Werten.
- `Import`: betrachtet grenzüberschreitenden Trade aus der Perspektive des Ziel-Country.

#### Verwandte Begriffe

- Trade
- Distribution
- Import
- Export
- Market
- Embargo

#### Referenzen

- PB-002
- PB-003

### Import

#### Definition

`Import` ist grenzüberschreitender Trade aus der Perspektive des Country, in dessen Wirtschaftsraum Goods oder wirtschaftliche Werte eingebracht werden.

#### Zweck

Der Begriff bezeichnet ausschließlich die Zielperspektive grenzüberschreitenden Trade und grenzt sie von dessen Herkunftsperspektive ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Export`: betrachtet denselben grenzüberschreitenden Trade aus der Perspektive des Herkunfts-Country.
- `Trade`: ist der perspektivisch allgemeine Begriff.
- `Immigration`: bezeichnet die dauerhafte Zuwanderung von Personen.

#### Verwandte Begriffe

- Trade
- Export
- National Market
- International Market
- Tariff
- Embargo

#### Referenzen

- PB-002
- PB-003

### Export

#### Definition

`Export` ist grenzüberschreitender Trade aus der Perspektive des Country, aus dessen Wirtschaftsraum Goods oder wirtschaftliche Werte ausgeführt werden.

#### Zweck

Der Begriff bezeichnet ausschließlich die Herkunftsperspektive grenzüberschreitenden Trade und grenzt sie von dessen Zielperspektive ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Import`: betrachtet denselben grenzüberschreitenden Trade aus der Perspektive des Ziel-Country.
- `Trade`: ist der perspektivisch allgemeine Begriff.
- `Emigration`: bezeichnet die dauerhafte Abwanderung von Personen.

#### Verwandte Begriffe

- Trade
- Import
- National Market
- International Market
- Tariff
- Embargo

#### Referenzen

- PB-002
- PB-003

### Tariff

#### Definition

Ein `Tariff` ist eine von einem State aufgrund grenzüberschreitenden Trade erhobene verpflichtende Abgabe auf bestimmte Goods oder wirtschaftliche Übertragungen.

#### Zweck

Der Begriff bezeichnet eine handelsbezogene Abgabe und grenzt sie von der allgemeinen Kategorie der Tax sowie von einem Verbot des Trade ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Tax`: ist der Oberbegriff für verpflichtende staatliche Abgaben.
- `Embargo`: beschränkt oder untersagt bestimmte Handelsbeziehungen.

#### Verwandte Begriffe

- Trade
- Import
- Export
- Tax
- State
- Embargo

#### Referenzen

- PB-002
- PB-003

### Embargo

#### Definition

Ein `Embargo` ist eine von einem State angeordnete Beschränkung oder Untersagung bestimmter Handelsbeziehungen mit festgelegten Economic Actors, Countries oder für festgelegte Goods.

#### Zweck

Der Begriff bezeichnet eine staatliche Begrenzung von Trade, ohne ihre Gründe, Reichweite, Durchsetzung oder Wirkung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Tariff`: erhebt eine Abgabe, ohne Trade notwendig zu untersagen.
- `Trade Route`: ist eine räumliche Verbindung und keine staatliche Maßnahme.

#### Verwandte Begriffe

- State
- Trade
- Import
- Export
- Tariff
- Strategic Resource

#### Referenzen

- PB-002
- PB-003

## 7.6 Finanzen

### Currency

#### Definition

Eine `Currency` ist ein innerhalb eines wirtschaftlichen Zusammenhangs allgemein anerkanntes Mittel zur Angabe, Aufbewahrung und Übertragung wirtschaftlicher Werte.

#### Zweck

Der Begriff bezeichnet die gemeinsame wirtschaftliche Rechnungs- und Übertragungsgrundlage, ohne eine konkrete Form, Herausgabeordnung oder technische Repräsentation festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Treasury`: ist der Bestand verfügbarer finanzieller Mittel eines State.
- `Credit`: ist die zeitweilige Überlassung wirtschaftlicher Verfügungsmacht.
- `Price`: ist der einem Good oder einer Leistung zugeordnete Gegenwert.

#### Verwandte Begriffe

- Price
- Exchange
- Treasury
- Credit
- Inflation

#### Referenzen

- PB-002
- PB-003

### Treasury

#### Definition

Ein `Treasury` ist die Gesamtheit der einem State zu einem bestimmten Zeitpunkt zur Erfüllung seiner finanziellen Verpflichtungen und Vorhaben verfügbaren finanziellen Mittel.

#### Zweck

Der Begriff bezeichnet einen staatlichen Bestand verfügbarer Mittel und trennt ihn von der zeitraumbezogenen Planung eines Budget sowie von Forderungen und Verpflichtungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Budget`: ist eine Planung erwarteter Einnahmen und vorgesehener Ausgaben für einen Zeitraum.
- `Debt`: ist die Gesamtheit bestehender Rückzahlungsverpflichtungen.
- `Credit`: bezeichnet die Überlassungsbeziehung, nicht den Bestand verfügbarer Staatsmittel.

#### Verwandte Begriffe

- State
- Budget
- Tax
- Subsidy
- Debt
- Currency

#### Referenzen

- PB-002
- PB-003

### Tax

#### Definition

Eine `Tax` ist eine von einem State aufgrund seiner Rechtsordnung verpflichtend erhobene wirtschaftliche Abgabe ohne Anspruch des Abgabepflichtigen auf eine unmittelbar entsprechende individuelle Gegenleistung.

#### Zweck

Der Begriff bezeichnet die allgemeine Kategorie verpflichtender staatlicher Abgaben und grenzt sie von freiwilligen Übertragungen, Credit und staatlichen Zuwendungen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Tariff`: ist eine Tax aufgrund grenzüberschreitenden Trade.
- `Credit`: begründet einen Rückzahlungsanspruch.
- `Subsidy`: ist eine staatliche Zuwendung.

#### Verwandte Begriffe

- State
- Tariff
- Treasury
- Budget
- Subsidy

#### Referenzen

- PB-002
- PB-003

### Subsidy

#### Definition

Eine `Subsidy` ist eine von einem State gewährte wirtschaftliche Zuwendung zur Unterstützung eines festgelegten wirtschaftlichen Zwecks oder Empfängers.

#### Zweck

Der Begriff bezeichnet zweckbezogene staatliche Unterstützung, ohne ihre Form, Bedingungen, Finanzierung oder Wirkung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Investment`: ist eine zukunftsgerichtete Bereitstellung wirtschaftlicher Werte und nicht notwendig staatlich.
- `Credit`: begründet einen Rückzahlungsanspruch.
- `Tax`: ist eine verpflichtende Abgabe an einen State.

#### Verwandte Begriffe

- State
- Treasury
- Budget
- Tax
- Investment
- Credit

#### Referenzen

- PB-002
- PB-003

### Budget

#### Definition

Ein `Budget` ist die für einen bestimmten Zeitraum geordnete Gegenüberstellung erwarteter Einnahmen und vorgesehener Ausgaben eines Economic Actor.

#### Zweck

Der Begriff bezeichnet eine zeitraumbezogene finanzielle Planung und trennt sie von verfügbaren Beständen, tatsächlich eingetretenen Zahlungsströmen und bestehenden Verpflichtungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Treasury`: ist der zu einem Zeitpunkt verfügbare Bestand finanzieller Mittel eines State.
- `Debt`: ist die Gesamtheit bestehender Rückzahlungsverpflichtungen.
- `Income`: bezeichnet tatsächlich zufließende wirtschaftliche Werte.

#### Verwandte Begriffe

- Economic Actor
- Treasury
- Tax
- Subsidy
- Debt
- Credit
- Income

#### Referenzen

- PB-002
- PB-003

### Debt

#### Definition

`Debt` ist die Gesamtheit der zu einem bestimmten Zeitpunkt bestehenden Verpflichtungen eines Economic Actor, überlassene wirtschaftliche Werte nach vereinbarten Bedingungen zurückzugewähren.

#### Zweck

Der Begriff bezeichnet den Bestand von Rückzahlungsverpflichtungen aus der Perspektive des Schuldners und trennt ihn von der zugrunde liegenden Credit-Beziehung und finanzieller Planung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Credit`: ist die Beziehung der zeitweiligen Überlassung wirtschaftlicher Verfügungsmacht.
- `Budget`: ist eine Planung für einen Zeitraum.
- `Treasury`: bezeichnet verfügbare staatliche finanzielle Mittel.

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

`Credit` ist eine wirtschaftliche Beziehung, in der ein Economic Actor einem anderen wirtschaftliche Verfügungsmacht zeitweilig überlässt und einen Anspruch auf Rückgewähr nach vereinbarten Bedingungen erhält.

#### Zweck

Der Begriff bezeichnet die Überlassungs- und Rückgewährbeziehung und grenzt sie vom Bestand der daraus entstandenen Debt sowie von Investment und Subsidy ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Debt`: bezeichnet bestehende Rückzahlungsverpflichtungen aus der Perspektive des Schuldners.
- `Investment`: setzt keinen Anspruch auf Rückgewähr überlassener Werte voraus.
- `Subsidy`: ist eine staatliche Zuwendung für einen bestimmten Zweck oder Empfänger.

#### Verwandte Begriffe

- Economic Actor
- Debt
- Investor
- Investment
- Currency
- Budget

#### Referenzen

- PB-002
- PB-003

### Inflation

#### Definition

`Inflation` ist eine über einen Zeitraum anhaltende allgemeine Erhöhung von Prices innerhalb eines Currency- und Wirtschaftsraums, durch die die wirtschaftliche Verfügungskraft derselben Currency-Einheit abnimmt.

#### Zweck

Der Begriff bezeichnet eine allgemeine Preisentwicklung und grenzt sie von einzelnen Price-Änderungen sowie von Veränderungen einzelner Goods oder Markets ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Price`: ist der Gegenwert eines bestimmten Good oder einer Leistung.
- `Currency`: ist das Mittel zur Angabe, Aufbewahrung und Übertragung wirtschaftlicher Werte.

#### Verwandte Begriffe

- Price
- Currency
- Market
- Supply
- Demand

#### Referenzen

- PB-002
- PB-003

## 7.7 Produktion

### Production Facility

#### Definition

Eine `Production Facility` ist eine räumlich und organisatorisch abgegrenzte Einrichtung, in der ein Producer Production ausüben kann.

#### Zweck

Der Begriff bezeichnet den institutionell-räumlichen Träger von Production und trennt ihn von der Aktivität, dem handelnden Producer und der Folge von Produktionsstufen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Production`: ist die wirtschaftliche Aktivität.
- `Producer`: ist der handelnde Economic Actor.
- `Production Chain`: ist eine fachliche Folge abhängiger Produktionsstufen.

#### Verwandte Begriffe

- Producer
- Production
- Production Chain
- Input
- Output
- Capacity
- Efficiency

#### Referenzen

- PB-002
- PB-003

### Production Chain

#### Definition

Eine `Production Chain` ist eine fachlich zusammenhängende Folge voneinander abhängiger Produktionsstufen, in der Outputs früherer Stufen als Inputs späterer Stufen dienen.

#### Zweck

Der Begriff bezeichnet die Abhängigkeit mehrerer Produktionsstufen und grenzt sie von einer einzelnen Production, einer Production Facility und der bloßen Klassifikation von Goods ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Production`: ist eine wirtschaftliche Aktivität und kann nur eine Stufe umfassen.
- `Production Facility`: ist eine räumlich und organisatorisch abgegrenzte Einrichtung.
- `Intermediate Good`: ist ein Good zwischen Produktionsstufen und nicht deren gesamte Folge.

#### Verwandte Begriffe

- Production
- Production Facility
- Raw Material
- Intermediate Good
- Finished Good
- Input
- Output

#### Referenzen

- PB-002
- PB-003

### Input

#### Definition

Ein `Input` ist eine Resource, ein Good, eine Arbeitsleistung oder ein anderer wirtschaftlicher Wert, der in einer wirtschaftlichen Aktivität eingesetzt oder verändert wird.

#### Zweck

Der Begriff bezeichnet die funktionale Rolle eines eingesetzten wirtschaftlichen Gegenstands und trennt sie von dessen Güterklasse, Herkunft und dem Ergebnis der Aktivität.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Output`: ist das Ergebnis einer wirtschaftlichen Aktivität.
- `Raw Material`: ist eine bestimmte, unmittelbar gewonnene Güterklasse.
- `Intermediate Good`: ist ein für weitere Production bestimmtes Good.

#### Verwandte Begriffe

- Output
- Production
- Resource
- Good
- Raw Material
- Intermediate Good
- Production Chain

#### Referenzen

- PB-002
- PB-003

### Output

#### Definition

Ein `Output` ist ein Good, eine Leistung oder ein anderer wirtschaftlicher Wert, der als Ergebnis einer wirtschaftlichen Aktivität hervorgebracht oder bereitgestellt wird.

#### Zweck

Der Begriff bezeichnet die funktionale Rolle eines wirtschaftlichen Ergebnisses und trennt sie von dessen Güterklasse, weiterer Verwendung und dem dafür eingesetzten Input.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Input`: wird in einer wirtschaftlichen Aktivität eingesetzt oder verändert.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.
- `Intermediate Good`: ist für weitere Production bestimmt.

#### Verwandte Begriffe

- Input
- Production
- Good
- Intermediate Good
- Finished Good
- Production Chain

#### Referenzen

- PB-002
- PB-003

### Capacity

#### Definition

`Capacity` ist der unter festgelegten Bedingungen innerhalb eines bestimmten Zeitraums erreichbare Umfang einer wirtschaftlichen Aktivität.

#### Zweck

Der Begriff bezeichnet eine Grenze des möglichen Aktivitätsumfangs und trennt sie vom tatsächlich erreichten Output sowie vom Verhältnis zwischen Einsatz und Ergebnis.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Output`: ist ein tatsächlich hervorgebrachtes oder bereitgestelltes Ergebnis.
- `Efficiency`: beschreibt das Verhältnis zwischen eingesetzten Mitteln und erreichtem Ergebnis.
- `Production Facility`: ist eine Einrichtung und keine Umfangsgrenze.

#### Verwandte Begriffe

- Production
- Production Facility
- Input
- Output
- Efficiency
- Investment

#### Referenzen

- PB-002
- PB-003

### Efficiency

#### Definition

`Efficiency` ist das Verhältnis zwischen den für eine wirtschaftliche Aktivität eingesetzten Mitteln und dem damit erreichten Ergebnis unter festgelegten Bedingungen.

#### Zweck

Der Begriff bezeichnet die wirtschaftliche Ergiebigkeit eines Mitteleinsatzes und trennt sie vom maximal möglichen Umfang einer Aktivität und von der bloßen Menge ihres Output.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Capacity`: bezeichnet den erreichbaren Umfang einer Aktivität.
- `Output`: ist das hervorgebrachte oder bereitgestellte Ergebnis.
- `Price`: ist der wirtschaftliche Gegenwert einer Übertragung.

#### Verwandte Begriffe

- Production
- Production Facility
- Input
- Output
- Capacity
- Investment

#### Referenzen

- PB-002
- PB-003

# 8. Militärische Terminologie

Militärische Begriffe bezeichnen unterschiedliche Ebenen militärischer Organisation und müssen entsprechend ihrer jeweiligen fachlichen Reichweite verwendet werden. Die Gesamtorganisation, ihre Teilorganisationen und ihre konkreten Verbände bilden voneinander abgegrenzte Begriffsbereiche.

Organisation, Verbände, Kommandostrukturen, Operationen und Logistik werden bewusst getrennt, damit institutionelle Ordnung, Führung, räumlich und zeitlich begrenztes Handeln sowie materielle Unterstützung nicht miteinander vermischt werden. Militärische Konzepte beschreiben davon getrennt übergreifende Eigenschaften und Ordnungsgrundsätze.

Dieses Kapitel definiert ausschließlich die kanonische militärische Terminologie. Spielmechaniken, Regeln und technische Umsetzungen werden in späteren zuständigen Dokumenten beschrieben.

## 8.1 Militärische Organisation

### Armed Forces

#### Definition

`Armed Forces` ist die Gesamtheit aller dauerhaft einer einheitlichen obersten militärischen Autorität zugeordneten militärischen Branches eines politischen Gemeinwesens.

#### Zweck

Der Begriff bezeichnet die militärische Gesamtorganisation und grenzt sie von einzelnen Branches, Armies und Military Formations ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Army`: ist die landmilitärische Branch der Armed Forces.
- `Branch`: ist ein funktional abgegrenzter Teil der Armed Forces.
- `Military Formation`: ist ein gegliederter militärischer Verband und keine militärische Gesamtorganisation.

#### Verwandte Begriffe

- Army
- Navy
- Air Force
- Branch
- Military Formation

#### Referenzen

- PB-002
- PB-003

### Army

#### Definition

`Army` ist die für landgebundene Kriegführung zuständige Branch der Armed Forces.

#### Zweck

Der Begriff legt die landmilitärische Teilorganisation fest und verhindert eine Verwendung als Bezeichnung sämtlicher Armed Forces oder einer Military Formation.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Armed Forces`: umfassen alle militärischen Branches.
- `Military Formation`: ist der Oberbegriff für gegliederte militärische Verbände.
- `Division`: ist eine bestimmte Größen- und Führungsebene eines Verbandes.

#### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Division

#### Referenzen

- PB-002
- PB-003

### Navy

#### Definition

`Navy` ist die für maritime Kriegführung zuständige Branch der Armed Forces.

#### Zweck

Der Begriff bezeichnet ausschließlich die maritime Teilorganisation und trennt sie von der militärischen Gesamtorganisation und einzelnen maritimen Verbänden.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Armed Forces`: bilden die militärische Gesamtorganisation.
- `Branch`: bezeichnet allgemein einen funktional abgegrenzten Teil der Armed Forces.

#### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Command

#### Referenzen

- PB-002
- PB-003

### Air Force

#### Definition

`Air Force` ist die für Kriegführung im Luftraum zuständige Branch der Armed Forces.

#### Zweck

Der Begriff bezeichnet ausschließlich die luftmilitärische Teilorganisation und trennt sie von der militärischen Gesamtorganisation und einzelnen luftmilitärischen Verbänden.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Armed Forces`: bilden die militärische Gesamtorganisation.
- `Branch`: bezeichnet allgemein einen funktional abgegrenzten Teil der Armed Forces.

#### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Command

#### Referenzen

- PB-002
- PB-003

### Branch

#### Definition

`Branch` ist ein nach einem primären militärischen Aufgaben- oder Wirkungsbereich abgegrenzter institutioneller Teil der Armed Forces.

#### Zweck

Der Begriff bezeichnet die erste funktionale Gliederung der militärischen Gesamtorganisation, ohne eine bestimmte innere Verbandsstruktur vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Military Formation`: ist ein gegliederter Verband, keine institutionelle Teilorganisation.
- `Army`: bezeichnet eine bestimmte Branch oder eine ausdrücklich so bezeichnete landmilitärische Großorganisation.

#### Verwandte Begriffe

- Armed Forces
- Army
- Navy
- Air Force
- Military Formation

#### Referenzen

- PB-002
- PB-003

### Military Formation

#### Definition

`Military Formation` ist ein militärisch gegliederter, einer gemeinsamen Führung unterstellter Verband aus Personal und zugeordneten Mitteln.

#### Zweck

Der Begriff dient als Oberbegriff für militärische Verbände aller ausdrücklich festgelegten Ebenen und grenzt diese von Branches und der Gesamtheit der Armed Forces ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Formation`: bezeichnet die konkrete organisatorische Zusammenfassung militärischer Elemente.
- `Unit`: ist die kleinste im jeweiligen fachlichen Zusammenhang selbständig betrachtete Military Formation.
- `Branch`: ist ein institutioneller Teil der Armed Forces.

#### Verwandte Begriffe

- Armed Forces
- Branch
- Unit
- Formation
- Command

#### Referenzen

- PB-002
- PB-003

## 8.2 Verbände

### Unit

#### Definition

`Unit` ist die kleinste in einem festgelegten fachlichen Zusammenhang als selbständig geführtes Ganzes betrachtete Military Formation.

#### Zweck

Der Begriff bezeichnet eine relative organisatorische Grundeinheit; ihre konkrete Größe oder Zusammensetzung folgt nicht aus dem Begriff allein.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Military Formation`: ist der ebenenübergreifende Oberbegriff.
- `Formation`: bezeichnet eine konkrete organisatorische Zusammenfassung und ist nicht notwendig die kleinste selbständig betrachtete Ebene.

#### Verwandte Begriffe

- Military Formation
- Formation
- Company
- Command

#### Referenzen

- PB-002
- PB-003

### Formation

#### Definition

`Formation` ist eine konkrete, nach einer festgelegten Gliederung zusammengefasste und gemeinsam geführte Military Formation.

#### Zweck

Der Begriff bezeichnet die organisatorische Gestalt eines Verbandes, ohne eine bestimmte Größenstufe festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Military Formation`: ist der allgemeine begriffliche Oberbegriff.
- `Unit`: ist die im jeweiligen Zusammenhang kleinste selbständig betrachtete Formation.

#### Verwandte Begriffe

- Military Formation
- Unit
- Division
- Brigade
- Regiment
- Battalion
- Company

#### Referenzen

- PB-002
- PB-003

### Division

#### Definition

`Division` ist eine über einer Brigade oder einem Regiment und unter einer übergeordneten Großformation eingeordnete Formation.

#### Zweck

Der Begriff bezeichnet eine bestimmte relative Verbandsstufe, ohne Personalstärke, Gliederung oder Einsatzweise festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Brigade`: ist eine nachgeordnete Verbandsstufe.
- `Military Formation`: umfasst Verbände aller Ebenen.

#### Verwandte Begriffe

- Formation
- Brigade
- Regiment
- Battalion
- Headquarters

#### Referenzen

- PB-002
- PB-003

### Brigade

#### Definition

`Brigade` ist eine unter einer Division und über einem Battalion eingeordnete Formation, die Regimenter umfassen kann.

#### Zweck

Der Begriff bezeichnet eine mittlere Verbandsstufe und grenzt sie von benachbarten Stufen ab, ohne eine feste Zusammensetzung vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Division`: ist die übergeordnete Verbandsstufe.
- `Regiment`: ist eine eigenständige, häufig derselben relativen Ebene zugeordnete Organisationsform.
- `Battalion`: ist die nachgeordnete Verbandsstufe.

#### Verwandte Begriffe

- Formation
- Division
- Regiment
- Battalion
- Headquarters

#### Referenzen

- PB-002
- PB-003

### Regiment

#### Definition

`Regiment` ist eine militärische Formation mit eigener institutioneller Identität, die zwischen Brigade- und Battalionsebene eingeordnet ist oder an die Stelle einer Brigadegliederung treten kann.

#### Zweck

Der Begriff bezeichnet eine eigenständige Organisationsform, ohne sie mit der funktional anders abgegrenzten Brigade gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Brigade`: ist eine eigene Verbandsstufe und kein alternativer Name für Regiment.
- `Battalion`: ist eine nachgeordnete Verbandsstufe.

#### Verwandte Begriffe

- Formation
- Division
- Brigade
- Battalion
- Company

#### Referenzen

- PB-002
- PB-003

### Battalion

#### Definition

`Battalion` ist eine unter einer Brigade oder einem Regiment und über einer Company eingeordnete Formation.

#### Zweck

Der Begriff bezeichnet eine untere Verbandsstufe und grenzt sie von ihrer über- und nachgeordneten organisatorischen Umgebung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Company`: ist die nachgeordnete Verbandsstufe.
- `Regiment`: ist eine übergeordnete Formation.

#### Verwandte Begriffe

- Formation
- Brigade
- Regiment
- Company
- Headquarters

#### Referenzen

- PB-002
- PB-003

### Company

#### Definition

`Company` ist eine unter einem Battalion eingeordnete Formation aus mehreren nachgeordneten militärischen Elementen.

#### Zweck

Der Begriff bezeichnet eine grundlegende untere Verbandsstufe, ohne ihre Stärke, Ausstattung oder Untergliederung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Battalion`: ist die übergeordnete Verbandsstufe.
- `Unit`: bezeichnet relativ zum jeweiligen Zusammenhang die kleinste selbständig betrachtete Formation.

#### Verwandte Begriffe

- Formation
- Battalion
- Unit
- Commander

#### Referenzen

- PB-002
- PB-003

## 8.3 Kommandostruktur

### Commander

#### Definition

`Commander` ist eine Person, der die formale militärische Führungsverantwortung für einen festgelegten Command übertragen ist.

#### Zweck

Der Begriff bezeichnet die verantwortliche Führungsrolle und nicht den geführten Zuständigkeitsbereich oder dessen Einrichtung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Command`: ist der übertragene Führungs- und Zuständigkeitsbereich.
- `Headquarters`: ist die organisatorische Einrichtung zur Unterstützung eines Command.

#### Verwandte Begriffe

- Command
- Chain of Command
- Headquarters
- Military Formation

#### Referenzen

- PB-002
- PB-003

### Command

#### Definition

`Command` ist ein formal abgegrenzter militärischer Führungs- und Zuständigkeitsbereich unter einem Commander.

#### Zweck

Der Begriff bezeichnet die Einheit übertragener Autorität, Verantwortung und Zuständigkeit, ohne eine bestimmte Formation oder räumliche Ebene vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Commander`: ist die verantwortliche Person.
- `Military Formation`: ist ein militärischer Verband.
- `Headquarters`: unterstützt die Ausübung eines Command.

#### Verwandte Begriffe

- Commander
- Chain of Command
- Headquarters
- Theater

#### Referenzen

- PB-002
- PB-003

### Chain of Command

#### Definition

`Chain of Command` ist die geordnete Folge formaler militärischer Über- und Unterordnungsverhältnisse, durch die Commands miteinander verbunden sind.

#### Zweck

Der Begriff bezeichnet den verbindlichen Verlauf militärischer Autorität und Verantwortung über mehrere Führungsebenen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Command`: ist ein einzelner Führungs- und Zuständigkeitsbereich.
- `Formation`: ist ein Verband und keine Autoritätsfolge.

#### Verwandte Begriffe

- Commander
- Command
- Headquarters
- Armed Forces

#### Referenzen

- PB-002
- PB-003

### Headquarters

#### Definition

`Headquarters` ist die organisatorische Einrichtung, die einen Commander bei der Ausübung eines Command unterstützt.

#### Zweck

Der Begriff bezeichnet die Führungs- und Koordinierungseinrichtung und trennt sie von der verantwortlichen Person, dem Command und der geführten Formation.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Commander`: trägt die formale Führungsverantwortung.
- `Command`: ist der Zuständigkeitsbereich.
- `Military Formation`: ist der geführte Verband.

#### Verwandte Begriffe

- Commander
- Command
- Chain of Command
- Theater

#### Referenzen

- PB-002
- PB-003

### Theater

#### Definition

`Theater` ist ein für übergreifende militärische Führung abgegrenzter geographischer Raum zusammenhängender möglicher oder tatsächlicher Operationen.

#### Zweck

Der Begriff bezeichnet den großräumigen Bezugsbereich militärischer Führung, ohne eine konkrete Operation, einen Frontverlauf oder politische Grenzen vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Front`: ist ein räumlicher Kontakt- und Wirkungszusammenhang gegnerischer Kräfte.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.
- `Campaign`: ist eine zusammenhängende Folge militärischer Operationen.

#### Verwandte Begriffe

- Command
- Headquarters
- Operation
- Campaign
- Front

#### Referenzen

- PB-002
- PB-003

## 8.4 Operationen

### Operation

#### Definition

`Operation` ist ein nach Ziel, Verantwortung, Raum und zeitlichem Zusammenhang abgegrenztes militärisches Vorhaben.

#### Zweck

Der Begriff bezeichnet eine koordinierte militärische Handlungseinheit zwischen einer übergeordneten Campaign und einzelnen Battles oder Engagements.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Campaign`: verbindet mehrere Operations zu einem längerfristigen militärischen Zusammenhang.
- `Battle`: ist eine größere unmittelbare bewaffnete Auseinandersetzung.
- `Engagement`: ist eine begrenzte unmittelbare bewaffnete Auseinandersetzung.

#### Verwandte Begriffe

- Campaign
- Battle
- Engagement
- Theater
- Offensive
- Defensive Operation

#### Referenzen

- PB-002
- PB-003

### Campaign

#### Definition

`Campaign` ist eine strategisch zusammenhängende Folge militärischer Operations, die auf ein übergeordnetes militärisches Ziel in einem größeren räumlichen und zeitlichen Zusammenhang ausgerichtet ist.

#### Zweck

Der Begriff bezeichnet die übergeordnete Verbindung mehrerer Operations und grenzt sie von einzelnen Vorhaben und unmittelbaren Auseinandersetzungen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Operation`: ist ein einzelnes abgegrenztes militärisches Vorhaben.
- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.
- `Theater`: ist ein geographischer Führungsraum und kein Vorhaben.

#### Verwandte Begriffe

- Operation
- Battle
- Engagement
- Theater
- Front

#### Referenzen

- PB-002
- PB-003

### Battle

#### Definition

`Battle` ist eine größere, räumlich und zeitlich zusammenhängende unmittelbare bewaffnete Auseinandersetzung gegnerischer militärischer Kräfte.

#### Zweck

Der Begriff bezeichnet eine umfangreiche konkrete Auseinandersetzung innerhalb oder außerhalb einer Operation, ohne deren Ergebnis oder Bedeutung vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Engagement`: ist eine begrenztere unmittelbare Auseinandersetzung.
- `Operation`: ist ein zielgerichtetes militärisches Vorhaben und kann mehrere Battles umfassen.
- `Campaign`: verbindet mehrere Operations.

#### Verwandte Begriffe

- Engagement
- Operation
- Campaign
- Front

#### Referenzen

- PB-002
- PB-003

### Engagement

#### Definition

`Engagement` ist eine begrenzte, unmittelbare bewaffnete Auseinandersetzung zwischen gegnerischen militärischen Kräften.

#### Zweck

Der Begriff bezeichnet die kleinste hier eigenständig benannte Ebene unmittelbarer bewaffneter Auseinandersetzung und grenzt sie von größeren Battles ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Battle`: ist eine größere zusammenhängende Auseinandersetzung.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.

#### Verwandte Begriffe

- Battle
- Operation
- Military Formation
- Front

#### Referenzen

- PB-002
- PB-003

### Front

#### Definition

`Front` ist der räumliche Zusammenhang, in dem gegnerische militärische Kräfte einander gegenüberstehen und unmittelbar aufeinander einwirken können.

#### Zweck

Der Begriff bezeichnet eine veränderliche militärische Kontakt- und Wirkungszone, ohne sie mit einem Theater, einer politischen Grenze oder einem einzelnen Vorhaben gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Theater`: ist ein großräumiger geographischer Führungsbereich.
- `Operation`: ist ein militärisches Vorhaben.
- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.

#### Verwandte Begriffe

- Theater
- Operation
- Battle
- Offensive
- Defensive Operation

#### Referenzen

- PB-002
- PB-003

### Offensive

#### Definition

`Offensive` ist eine Operation, deren bestimmender Zweck darin besteht, durch eigenes militärisches Handeln die Initiative zu ergreifen und eine angestrebte Veränderung der militärischen Lage herbeizuführen.

#### Zweck

Der Begriff bezeichnet die vorstoßende Zielrichtung einer Operation, ohne konkrete Mittel, Verfahren oder Erfolg festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Defensive Operation`: richtet sich bestimmend auf die Abwehr gegnerischen Handelns oder die Bewahrung einer militärischen Lage.
- `Battle`: ist eine Auseinandersetzung und keine operative Zielrichtung.

#### Verwandte Begriffe

- Operation
- Defensive Operation
- Front
- Campaign

#### Referenzen

- PB-002
- PB-003

### Defensive Operation

#### Definition

`Defensive Operation` ist eine Operation, deren bestimmender Zweck darin besteht, gegnerischem militärischem Handeln entgegenzuwirken oder eine angestrebte militärische Lage zu bewahren.

#### Zweck

Der Begriff bezeichnet die abwehrende oder bewahrende Zielrichtung einer Operation, ohne Passivität, konkrete Mittel oder Erfolg vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Offensive`: ist auf das Ergreifen der Initiative und eine Veränderung der militärischen Lage gerichtet.
- `Battle`: ist eine Auseinandersetzung und keine operative Zielrichtung.

#### Verwandte Begriffe

- Operation
- Offensive
- Front
- Campaign

#### Referenzen

- PB-002
- PB-003

## 8.5 Logistik

### Supply

#### Definition

`Supply` ist die Gesamtheit der für die fortgesetzte Handlungsfähigkeit militärischer Kräfte bestimmten materiellen Mittel und Leistungen.

#### Zweck

Der Begriff bezeichnet den Gegenstand militärischer Versorgung und trennt ihn von deren Planung, Organisation und Verbindungssystemen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Logistics`: umfasst Planung, Bereitstellung, Bewegung und Erhaltung militärisch benötigter Mittel und Leistungen.
- `Supply Line`: ist eine beständige Versorgungsverbindung.
- `Reinforcement`: ergänzt militärische Kräfte personell oder materiell.

#### Verwandte Begriffe

- Logistics
- Supply Line
- Reinforcement
- Readiness

#### Referenzen

- PB-002
- PB-003

### Supply Line

#### Definition

`Supply Line` ist eine beständige räumliche und organisatorische Verbindung, über die Supply zu militärischen Kräften gelangen kann.

#### Zweck

Der Begriff bezeichnet die Versorgungsverbindung und grenzt sie von den Versorgungsgütern sowie vom gesamten Aufgabenbereich der Logistics ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Supply`: bezeichnet die bestimmten Mittel und Leistungen.
- `Logistics`: ist der übergreifende Aufgabenbereich.

#### Verwandte Begriffe

- Supply
- Logistics
- Front
- Theater

#### Referenzen

- PB-002
- PB-003

### Logistics

#### Definition

`Logistics` ist der militärische Aufgabenbereich der Planung, Bereitstellung, Bewegung, Verteilung und Erhaltung der für militärische Kräfte benötigten personellen, materiellen und unterstützenden Mittel.

#### Zweck

Der Begriff bezeichnet den umfassenden Unterstützungszusammenhang und trennt ihn von einzelnen Supply-Beständen oder Supply Lines.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Supply`: ist der Gegenstand militärischer Versorgung.
- `Supply Line`: ist eine konkrete Versorgungsverbindung.
- `Mobilization`: überführt verfügbare Potenziale in militärische Verwendbarkeit.

#### Verwandte Begriffe

- Supply
- Supply Line
- Reinforcement
- Mobilization
- Reserve

#### Referenzen

- PB-002
- PB-003

### Reinforcement

#### Definition

`Reinforcement` ist die personelle oder materielle Ergänzung bestehender militärischer Kräfte.

#### Zweck

Der Begriff bezeichnet das Zuführen zusätzlicher Kräfte oder Mittel zu einer bestehenden militärischen Organisation und grenzt dies von ihrer erstmaligen Mobilization ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Mobilization`: stellt militärische Verwendbarkeit aus verfügbaren Potenzialen her.
- `Reserve`: ist zurückgehaltenes oder nicht dauerhaft aktives militärisches Potenzial.
- `Supply`: dient der fortgesetzten Handlungsfähigkeit.

#### Verwandte Begriffe

- Military Formation
- Supply
- Mobilization
- Reserve
- Attrition

#### Referenzen

- PB-002
- PB-003

### Mobilization

#### Definition

`Mobilization` ist der geordnete Übergang verfügbarer personeller, materieller und organisatorischer Potenziale in einen für militärische Aufgaben verwendbaren Zustand.

#### Zweck

Der Begriff bezeichnet die Herstellung militärischer Verwendbarkeit und grenzt sie von fortlaufender Versorgung, Ergänzung und dem bloßen Vorhandensein einer Reserve ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Reserve`: bezeichnet verfügbares, zurückgehaltenes oder nicht dauerhaft aktives militärisches Potenzial.
- `Reinforcement`: ergänzt bereits bestehende militärische Kräfte.
- `Readiness`: ist der Grad gegenwärtiger Fähigkeit zur Aufgabenerfüllung.

#### Verwandte Begriffe

- Reserve
- Reinforcement
- Readiness
- Logistics
- Armed Forces

#### Referenzen

- PB-002
- PB-003

### Reserve

#### Definition

`Reserve` ist personelles, materielles oder organisatorisches militärisches Potenzial, das verfügbar gehalten wird, ohne dauerhaft für laufende Aufgaben eingesetzt zu sein.

#### Zweck

Der Begriff bezeichnet zurückgehaltenes oder nicht dauerhaft aktives Potenzial und grenzt dieses vom Vorgang seiner Mobilization und von aktiven Reinforcements ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Mobilization`: ist der Übergang in militärische Verwendbarkeit.
- `Reinforcement`: ist die Ergänzung bestehender Kräfte.
- `Readiness`: bezeichnet einen Fähigkeitsgrad und keinen Bestand.

#### Verwandte Begriffe

- Mobilization
- Reinforcement
- Readiness
- Logistics

#### Referenzen

- PB-002
- PB-003

## 8.6 Militärische Konzepte

### Doctrine

#### Definition

`Doctrine` ist ein verbindlicher Zusammenhang grundlegender militärischer Vorstellungen und Leitgrundsätze für Vorbereitung, Führung und Unterstützung militärischen Handelns.

#### Zweck

Der Begriff bezeichnet den normativen Orientierungsrahmen militärischen Handelns, ohne einzelne Befehle, konkrete Operations oder technische Verfahren festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Command`: ist ein konkreter Führungs- und Zuständigkeitsbereich.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.
- `Organization`: ist die geordnete innere Beschaffenheit militärischer Kräfte.

#### Verwandte Begriffe

- Armed Forces
- Command
- Operation
- Organization
- Readiness

#### Referenzen

- PB-002
- PB-003

### Readiness

#### Definition

`Readiness` ist der Grad, in dem militärische Kräfte zu einem bestimmten Zeitpunkt für festgelegte Aufgaben unmittelbar verwendungsfähig sind.

#### Zweck

Der Begriff bezeichnet gegenwärtige Aufgabenerfüllungsfähigkeit und grenzt sie von struktureller Organization, angesammelter Experience und dem Vorgang der Mobilization ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Organization`: bezeichnet die innere Ordnung und Funktionsfähigkeit.
- `Experience`: ist durch militärische Tätigkeit erworbene und bewahrte praktische Befähigung.
- `Mobilization`: ist ein Übergang in militärische Verwendbarkeit.

#### Verwandte Begriffe

- Organization
- Experience
- Morale
- Mobilization
- Supply

#### Referenzen

- PB-002
- PB-003

### Morale

#### Definition

`Morale` ist der gemeinsame psychische Zustand militärischer Kräfte hinsichtlich Zuversicht, Zusammenhalt und Bereitschaft, militärische Aufgaben fortzuführen.

#### Zweck

Der Begriff bezeichnet die mentale und soziale Handlungsbereitschaft, ohne Ausbildung, strukturelle Ordnung oder gegenwärtige materielle Verwendbarkeit gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Readiness`: ist der Grad unmittelbarer Verwendungsfähigkeit.
- `Organization`: bezeichnet innere Ordnung und Funktionsfähigkeit.
- `Experience`: bezeichnet erworbene praktische Befähigung.

#### Verwandte Begriffe

- Readiness
- Organization
- Experience
- Commander
- Attrition

#### Referenzen

- PB-002
- PB-003

### Organization

#### Definition

`Organization` ist der Grad geordneter innerer Gliederung, Koordination und fortbestehender Funktionsfähigkeit militärischer Kräfte.

#### Zweck

Der Begriff bezeichnet die strukturelle und koordinative Geschlossenheit militärischer Kräfte und nicht die militärische Institution, ihre Kampferfahrung oder ihre unmittelbare Einsatzbereitschaft.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Military Formation`: ist ein militärisch gegliederter Verband.
- `Readiness`: bezeichnet gegenwärtige Aufgabenerfüllungsfähigkeit.
- `Experience`: ist erworbene praktische Befähigung.
- `Morale`: ist ein psychischer und sozialer Zustand.

#### Verwandte Begriffe

- Military Formation
- Readiness
- Morale
- Experience
- Attrition

#### Referenzen

- PB-002
- PB-003

### Experience

#### Definition

`Experience` ist die durch militärische Tätigkeit erworbene und innerhalb militärischer Kräfte bewahrte praktische Befähigung.

#### Zweck

Der Begriff bezeichnet angesammelte handlungsbezogene Vertrautheit und grenzt sie von gegenwärtiger Readiness, struktureller Organization und psychischer Morale ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Readiness`: ist gegenwärtige Aufgabenerfüllungsfähigkeit.
- `Organization`: ist innere Ordnung und Funktionsfähigkeit.
- `Morale`: ist ein psychischer und sozialer Zustand.

#### Verwandte Begriffe

- Readiness
- Organization
- Morale
- Doctrine
- Attrition

#### Referenzen

- PB-002
- PB-003

### Attrition

#### Definition

`Attrition` ist der fortschreitende Verlust personeller, materieller oder organisatorischer militärischer Leistungsfähigkeit durch fortdauernde Beanspruchung.

#### Zweck

Der Begriff bezeichnet kumulativen militärischen Substanz- oder Fähigkeitsverlust unabhängig von einem einzelnen Battle oder Engagement und ohne eine bestimmte Ursache vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.
- `Engagement`: ist eine begrenzte unmittelbare bewaffnete Auseinandersetzung.
- `Reinforcement`: ergänzt bestehende militärische Kräfte.
- `Organization`: bezeichnet innere Ordnung und Funktionsfähigkeit.

#### Verwandte Begriffe

- Battle
- Engagement
- Reinforcement
- Supply
- Organization
- Readiness
- Morale

#### Referenzen

- PB-002
- PB-003

# 9. Diplomatie und Internationale Beziehungen

Diplomatie beschreibt die Beziehungen zwischen politischen Akteuren sowie das auf diese Beziehungen gerichtete Handeln. Beziehungen, diplomatische Handlungen und daraus hervorgehende Abkommen sind eigenständige Konzepte und dürfen nicht gleichgesetzt werden; insbesondere sind Verträge mögliche Ergebnisse diplomatischer Prozesse und nicht deren Ausgangspunkt.

Dieses Kapitel definiert ausschließlich die kanonische diplomatische Terminologie. Spielmechaniken, Regeln und technische Umsetzungen werden in späteren zuständigen Dokumenten beschrieben.

## 9.1 Diplomatische Akteure

### Country

#### Definition

Für `Country` gilt ausschließlich die kanonische Definition aus Abschnitt 4.1.

#### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet ein Country als möglichen diplomatischen Akteur ein, ohne den politischen Begriff erneut zu definieren.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Government`: ist die gegenwärtige politische Führung und kann ein Country diplomatisch vertreten.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

#### Verwandte Begriffe

- State
- Government
- Diplomatic Relation
- Diplomatic Mission

#### Referenzen

- PB-001
- PB-002
- PB-003

### Government

#### Definition

Für `Government` gilt ausschließlich die kanonische Definition aus Abschnitt 4.1.

#### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet ein Government als mögliche diplomatisch handelnde politische Führung ein, ohne den politischen Begriff erneut zu definieren.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Country`: ist die territorial-politische Einheit als Ganzes.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

#### Verwandte Begriffe

- State
- Country
- Diplomat
- Diplomatic Mission

#### Referenzen

- PB-001
- PB-002
- PB-003

### Diplomatic Mission

#### Definition

Eine `Diplomatic Mission` ist eine dauerhafte oder zeitlich begrenzte offizielle Vertretung eines diplomatischen Akteurs gegenüber einem anderen diplomatischen Akteur oder einem internationalen Zusammenhang.

#### Zweck

Der Begriff bezeichnet die institutionalisierte diplomatische Vertretung und grenzt sie von den vertretenen Akteuren und den für sie handelnden Personen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Diplomat`: ist eine mit diplomatischer Vertretung betraute Person.
- `Government`: ist die gegenwärtige politische Führung eines State.

#### Verwandte Begriffe

- Country
- Government
- Diplomat
- Diplomatic Relation
- International Organization

#### Referenzen

- PB-002
- PB-003

### Diplomat

#### Definition

Ein `Diplomat` ist eine Person, die zur offiziellen Vertretung eines diplomatischen Akteurs in diplomatischen Beziehungen und Handlungen bevollmächtigt ist.

#### Zweck

Der Begriff bezeichnet die bevollmächtigte handelnde Person und nicht den vertretenen Akteur, dessen Beziehung oder dessen Vertretungseinrichtung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Diplomatic Mission`: ist eine offizielle Vertretung und keine Person.
- `Government`: ist eine politische Führung und nicht deren einzelner Vertreter.

#### Verwandte Begriffe

- Country
- Government
- Diplomatic Mission
- Negotiation

#### Referenzen

- PB-002
- PB-003

## 9.2 Diplomatische Beziehungen

### Diplomatic Relation

#### Definition

Eine `Diplomatic Relation` ist der bestehende diplomatische Zusammenhang zwischen zwei diplomatischen Akteuren, innerhalb dessen sie einander politisch begegnen und aufeinander Bezug nehmen.

#### Zweck

Der Begriff bezeichnet die Beziehung selbst und trennt sie von einzelnen Einschätzungen, Handlungen und Abkommen innerhalb dieser Beziehung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Negotiation`: ist eine diplomatische Handlung.
- `Treaty`: ist ein formales internationales Abkommen.

#### Verwandte Begriffe

- Country
- Government
- Recognition
- Trust
- Influence
- Reputation

#### Referenzen

- PB-002
- PB-003

### Recognition

#### Definition

`Recognition` ist die formale Anerkennung eines politischen Akteurs oder eines von ihm beanspruchten internationalen Status durch einen anderen diplomatischen Akteur.

#### Zweck

Der Begriff bezeichnet einen bestehenden Anerkennungsstatus und grenzt ihn vom Vorschlag seiner Begründung sowie von allgemeiner Zustimmung oder Vertrauen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Recognition Proposal`: ist ein Vorschlag zur Begründung oder Änderung von Recognition.
- `Reputation`: ist eine akteursübergreifende zugeschriebene Bewertung.

#### Verwandte Begriffe

- Country
- Diplomatic Relation
- Recognition Proposal
- Sovereignty

#### Referenzen

- PB-002
- PB-003

### Trust

#### Definition

`Trust` ist die innerhalb einer Diplomatic Relation bestehende Erwartung eines Akteurs, dass der andere Akteur als verlässlich und in seinen Absichten hinreichend berechenbar handelt.

#### Zweck

Der Begriff bezeichnet eine beziehungsgebundene Erwartung und grenzt sie von Einfluss, formaler Anerkennung und allgemeiner Reputation ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Reputation`: ist nicht auf eine einzelne Diplomatic Relation beschränkt.
- `Influence`: bezeichnet die Fähigkeit, auf andere Akteure einzuwirken.

#### Verwandte Begriffe

- Diplomatic Relation
- Reputation
- Influence
- Agreement

#### Referenzen

- PB-002
- PB-003

### Influence

#### Definition

`Influence` ist die Fähigkeit eines politischen Akteurs, die Auffassungen, Entscheidungen oder Handlungsbedingungen anderer politischer Akteure zu prägen, ohne deren formale Entscheidungszuständigkeit zu übernehmen.

#### Zweck

Der Begriff bezeichnet politische Einwirkungsfähigkeit und grenzt sie von Herrschaft, Vertrauen und zugeschriebener Reputation ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trust`: ist eine beziehungsgebundene Erwartung von Verlässlichkeit.
- `Sphere of Influence`: ist ein internationaler Beziehungszusammenhang verdichteter Influence.

#### Verwandte Begriffe

- Diplomatic Relation
- Trust
- Reputation
- Sphere of Influence
- Balance of Power

#### Referenzen

- PB-002
- PB-003

### Reputation

#### Definition

`Reputation` ist die über einzelne Diplomatic Relations hinausreichende, einem politischen Akteur zugeschriebene Bewertung seines bisherigen und erwartbaren internationalen Verhaltens.

#### Zweck

Der Begriff bezeichnet eine akteursübergreifende Zuschreibung und trennt sie von beziehungsgebundenem Trust, formaler Recognition und tatsächlicher Influence.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trust`: besteht innerhalb einer bestimmten Diplomatic Relation.
- `Recognition`: ist ein formaler Anerkennungsstatus.

#### Verwandte Begriffe

- Diplomatic Relation
- Trust
- Influence
- Recognition

#### Referenzen

- PB-002
- PB-003

## 9.3 Diplomatische Handlungen

### Negotiation

#### Definition

Eine `Negotiation` ist ein geordneter diplomatischer Austausch zwischen Akteuren mit dem Ziel, unterschiedliche Positionen zu klären und eine gemeinsame Regelung zu ermöglichen.

#### Zweck

Der Begriff bezeichnet den diplomatischen Verständigungsprozess und grenzt ihn von darin eingebrachten Proposals und daraus hervorgehenden Agreements ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Proposal`: ist ein formaler Vorschlag oder ein diplomatisches Angebot.
- `Agreement`: ist eine übereinstimmende Willensfestlegung.

#### Verwandte Begriffe

- Diplomat
- Proposal
- Agreement
- Treaty

#### Referenzen

- PB-002
- PB-003

### Proposal

#### Definition

Ein `Proposal` ist ein formaler Vorschlag oder ein diplomatisches Angebot eines Akteurs an mindestens einen anderen Akteur, dessen Annahme, Ablehnung oder Veränderung noch nicht feststeht.

#### Zweck

Der Begriff bezeichnet einen zur Entscheidung gestellten Inhalt, ohne dessen Behandlung oder Ergebnis vorwegzunehmen; darüber entscheiden erst die später definierten zuständigen Spielsysteme.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Negotiation`: ist der diplomatische Austausch, in dem Proposals behandelt werden können.
- `Agreement`: setzt eine übereinstimmende Willensfestlegung voraus.
- `Treaty`: ist ein formales internationales Abkommen.

#### Verwandte Begriffe

- Negotiation
- Agreement
- Recognition Proposal
- Ultimatum

#### Referenzen

- PB-002
- PB-003

### Agreement

#### Definition

Ein `Agreement` ist die übereinstimmende Willensfestlegung von mindestens zwei Akteuren hinsichtlich eines gemeinsamen diplomatischen Gegenstands.

#### Zweck

Der Begriff bezeichnet das allgemeine Ergebnis diplomatischer Verständigung, ohne zwingend die Form oder Verbindlichkeit eines Treaty vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Proposal`: ist noch keine übereinstimmende Willensfestlegung.
- `Treaty`: ist eine besondere formale Art internationalen Abkommens.

#### Verwandte Begriffe

- Negotiation
- Proposal
- Treaty
- Guarantee

#### Referenzen

- PB-002
- PB-003

### Guarantee

#### Definition

Eine `Guarantee` ist die formale einseitige Zusage eines diplomatischen Akteurs, für den Fortbestand eines bezeichneten internationalen Zustands oder Anspruchs einzustehen.

#### Zweck

Der Begriff bezeichnet eine einseitig übernommene diplomatische Verpflichtung und grenzt sie von gegenseitigen Agreements und bloßen politischen Erklärungen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Alliance`: begründet eine wechselseitige organisierte Zusammenarbeit.
- `Defensive Pact`: ist ein gegenseitiges Abkommen über defensive Unterstützung.

#### Verwandte Begriffe

- Agreement
- Alliance
- Defensive Pact
- Neutrality

#### Referenzen

- PB-002
- PB-003

### Recognition Proposal

#### Definition

Ein `Recognition Proposal` ist ein Proposal, dessen Gegenstand die Begründung, Änderung oder Beendigung formaler Recognition ist.

#### Zweck

Der Begriff bezeichnet den zur Entscheidung gestellten Anerkennungsgegenstand und nicht den daraus möglicherweise hervorgehenden Anerkennungsstatus.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Recognition`: ist der bestehende formale Anerkennungsstatus.
- `Proposal`: bezeichnet die allgemeine Form eines formalen Vorschlags oder Angebots.

#### Verwandte Begriffe

- Proposal
- Recognition
- Negotiation
- Country

#### Referenzen

- PB-002
- PB-003

### Sanction

#### Definition

Eine `Sanction` ist eine von einem diplomatischen Akteur formal auferlegte beschränkende Maßnahme gegenüber einem anderen Akteur mit dem Zweck, dessen Verhalten zu beanstanden oder zu beeinflussen.

#### Zweck

Der Begriff bezeichnet diplomatischen Zwang durch eine Beschränkung und grenzt ihn von einer Forderung, einem Abkommen und bewaffnetem Konflikt ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Ultimatum`: ist eine befristete Forderung mit angekündigter Folge.
- `War`: ist ein Zustand organisierter bewaffneter Auseinandersetzung.

#### Verwandte Begriffe

- Diplomatic Relation
- Ultimatum
- Agreement
- War

#### Referenzen

- PB-002
- PB-003

### Ultimatum

#### Definition

Ein `Ultimatum` ist eine formale, abschließende und befristete diplomatische Forderung, die für den Fall ihrer Nichterfüllung eine bestimmte nachteilige Folge ankündigt.

#### Zweck

Der Begriff bezeichnet eine Forderung unter ausdrücklich angekündigtem Entscheidungsdruck und grenzt sie von einem ergebnisoffenen Proposal und einer bereits vollzogenen Sanction ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Proposal`: lässt Annahme, Ablehnung oder Veränderung ohne begriffsnotwendige Drohfolge offen.
- `Sanction`: ist eine auferlegte beschränkende Maßnahme.

#### Verwandte Begriffe

- Proposal
- Negotiation
- Sanction
- War

#### Referenzen

- PB-002
- PB-003

## 9.4 Internationale Abkommen

### Treaty

#### Definition

Ein `Treaty` ist ein formal begründetes internationales Abkommen zwischen mindestens zwei diplomatischen Akteuren, das ihre gegenseitigen Rechte, Pflichten oder Beziehungen verbindlich ordnet.

#### Zweck

Der Begriff bezeichnet eine formalisierte Art von Agreement als Ergebnis diplomatischer Verständigung, ohne einen bestimmten Regelungsgegenstand vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Agreement`: ist der allgemeinere Begriff für eine übereinstimmende Willensfestlegung.
- `Proposal`: ist ein noch nicht übereinstimmend festgelegter Vorschlag.

#### Verwandte Begriffe

- Negotiation
- Proposal
- Agreement
- Alliance
- Peace Treaty

#### Referenzen

- PB-002
- PB-003

### Alliance

#### Definition

Eine `Alliance` ist ein formales internationales Abkommen zur dauerhaften organisierten Zusammenarbeit ihrer Mitglieder bei gemeinsamen internationalen Interessen.

#### Zweck

Der Begriff bezeichnet einen umfassenden Kooperationszusammenhang und grenzt ihn von Abkommen mit einem einzelnen begrenzten Gegenstand ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Defensive Pact`: beschränkt sich auf gegenseitige defensive Unterstützung.
- `International Organization`: ist eine eigenständige internationale Einrichtung.

#### Verwandte Begriffe

- Treaty
- Defensive Pact
- Guarantee
- International Organization
- Balance of Power

#### Referenzen

- PB-002
- PB-003

### Trade Agreement

#### Definition

Ein `Trade Agreement` ist ein Treaty, das den wirtschaftlichen Austausch zwischen seinen Parteien ordnet.

#### Zweck

Der Begriff bezeichnet ein internationales Abkommen mit handelsbezogenem Gegenstand, ohne konkrete Waren, Bedingungen oder wirtschaftliche Verfahren festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trade`: ist die wirtschaftliche Übertragung von Goods oder Services.
- `Treaty`: kann andere internationale Gegenstände regeln.

#### Verwandte Begriffe

- Treaty
- Agreement
- Trade
- Market

#### Referenzen

- PB-002
- PB-003

### Non-Aggression Pact

#### Definition

Ein `Non-Aggression Pact` ist ein Treaty, durch das sich seine Parteien gegenseitig verpflichten, keinen War gegeneinander zu beginnen.

#### Zweck

Der Begriff bezeichnet den vereinbarten Verzicht auf gegenseitige Kriegseröffnung und grenzt ihn von Neutrality und gegenseitiger Unterstützungsverpflichtung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Defensive Pact`: verpflichtet zu gegenseitiger defensiver Unterstützung.
- `Neutrality`: ist eine internationale Haltung und kein notwendigerweise gegenseitiges Abkommen.

#### Verwandte Begriffe

- Treaty
- War
- Neutrality
- Defensive Pact

#### Referenzen

- PB-002
- PB-003

### Defensive Pact

#### Definition

Ein `Defensive Pact` ist ein Treaty, durch das sich seine Parteien zu gegenseitiger Unterstützung gegen von außen gegen eine Partei gerichtete Aggression verpflichten.

#### Zweck

Der Begriff bezeichnet eine begrenzte gegenseitige defensive Verpflichtung und grenzt sie von umfassender Alliance und einseitiger Guarantee ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Alliance`: bezeichnet einen umfassenderen organisierten Kooperationszusammenhang.
- `Guarantee`: ist eine einseitige Zusage.

#### Verwandte Begriffe

- Treaty
- Alliance
- Guarantee
- Non-Aggression Pact

#### Referenzen

- PB-002
- PB-003

### Military Access

#### Definition

`Military Access` ist ein internationales Abkommen, durch das ein politischer Akteur militärischen Kräften eines anderen Akteurs die Anwesenheit oder Bewegung in einem abgegrenzten Gebiet gestattet.

#### Zweck

Der Begriff bezeichnet die diplomatische Erlaubnis und nicht deren konkrete militärische Nutzung, Führung oder logistische Ausgestaltung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Territorial Control`: bezeichnet tatsächliche politische oder administrative Verfügungsgewalt über ein Gebiet.
- `Occupation`: bezeichnet gemäß Abschnitt 6.2 die regelmäßig ausgeübte Tätigkeit einer Person und besitzt keine militärische Bedeutung.

#### Verwandte Begriffe

- Agreement
- Treaty
- Territory
- Armed Forces

#### Referenzen

- PB-002
- PB-003

## 9.5 Konflikte

### War

#### Definition

`War` ist ein zwischen politischen Akteuren bestehender Zustand organisierter bewaffneter Auseinandersetzung zur Durchsetzung widerstreitender politischer Ziele.

#### Zweck

Der Begriff bezeichnet den übergreifenden Konfliktzustand und nicht einzelne Operations, Battles oder die diplomatische Begründung des Konflikts.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Casus Belli`: ist ein geltend gemachter Rechtfertigungsgrund.
- `Battle`: ist eine konkrete bewaffnete Auseinandersetzung.

#### Verwandte Begriffe

- Casus Belli
- Ceasefire
- Armistice
- Peace Treaty
- Battle

#### Referenzen

- PB-002
- PB-003

### Casus Belli

#### Definition

Ein `Casus Belli` ist ein formal geltend gemachter politischer Rechtfertigungsgrund für die Einleitung eines War gegen einen bezeichneten politischen Akteur.

#### Zweck

Der Begriff bezeichnet die beanspruchte Rechtfertigung und grenzt sie vom War selbst, seinen Zielen und seinem Ergebnis ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Ultimatum`: ist eine befristete diplomatische Forderung.
- `War`: ist der Zustand bewaffneter Auseinandersetzung.

#### Verwandte Begriffe

- War
- Ultimatum
- Diplomatic Relation
- Peace Treaty

#### Referenzen

- PB-002
- PB-003

### Ceasefire

#### Definition

Ein `Ceasefire` ist eine begrenzte Vereinbarung der Konfliktparteien, bewaffnete Handlungen vorübergehend oder unter festgelegten Bedingungen auszusetzen.

#### Zweck

Der Begriff bezeichnet eine Unterbrechung bewaffneter Handlungen, ohne den War oder dessen Streitgegenstände notwendig zu beenden.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Armistice`: beendet die allgemeinen bewaffneten Handlungen eines War auf Grundlage eines formalen Abkommens.
- `Peace Treaty`: beendet den War und ordnet seine politischen Folgen.

#### Verwandte Begriffe

- War
- Armistice
- Peace Treaty
- Agreement

#### Referenzen

- PB-002
- PB-003

### Armistice

#### Definition

Ein `Armistice` ist ein formales internationales Abkommen, das die allgemeinen bewaffneten Handlungen zwischen Parteien eines War beendet, ohne den War und seine politischen Streitgegenstände notwendig abschließend zu regeln.

#### Zweck

Der Begriff bezeichnet die umfassende Beendigung der Kampfhandlungen und grenzt sie von begrenztem Ceasefire und abschließendem Peace Treaty ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Ceasefire`: ist eine begrenzte Aussetzung bewaffneter Handlungen.
- `Peace Treaty`: beendet den War und regelt seine politischen Folgen.

#### Verwandte Begriffe

- War
- Ceasefire
- Peace Treaty
- Treaty

#### Referenzen

- PB-002
- PB-003

### Peace Treaty

#### Definition

Ein `Peace Treaty` ist ein Treaty, das einen War zwischen seinen Parteien beendet und die daraus hervorgehenden internationalen Rechte, Pflichten oder Beziehungen ordnet.

#### Zweck

Der Begriff bezeichnet die formale Beendigung des Konfliktzustands und dessen politische Regelung, nicht lediglich das Ende bewaffneter Handlungen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Armistice`: beendet allgemeine Kampfhandlungen, aber nicht notwendig den War.
- `Ceasefire`: setzt bewaffnete Handlungen begrenzt aus.

#### Verwandte Begriffe

- Treaty
- War
- Ceasefire
- Armistice
- Agreement

#### Referenzen

- PB-002
- PB-003

### Occupation

#### Definition

Für `Occupation` gilt ausschließlich die kanonische Definition aus Abschnitt 6.2 als regelmäßig ausgeübte Tätigkeit einer Person.

#### Zweck

Die Aufnahme in diese Begriffsgruppe dokumentiert die notwendige Abgrenzung: Der Begriff erhält keine zweite militärische oder territoriale Bedeutung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Territorial Control`: bezeichnet tatsächliche politische oder administrative Verfügungsgewalt über ein Gebiet.
- `Military Access`: ist eine internationale Erlaubnis zur Anwesenheit oder Bewegung militärischer Kräfte.

#### Verwandte Begriffe

- Profession
- Territorial Control
- Military Access
- War

#### Referenzen

- PB-002
- PB-003

## 9.6 Internationale Konzepte

### Neutrality

#### Definition

`Neutrality` ist die internationale Haltung eines politischen Akteurs, sich gegenüber einem War anderer Akteure keiner Konfliktpartei als kriegführende Partei anzuschließen.

#### Zweck

Der Begriff bezeichnet eine Haltung gegenüber einem fremden Konflikt und grenzt sie von Bündnisfreiheit, gegenseitigem Gewaltverzicht und Passivität ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Non-Aggression Pact`: ist ein gegenseitiges Treaty über den Verzicht auf Kriegseröffnung.
- `Alliance`: ist ein organisierter internationaler Kooperationszusammenhang.

#### Verwandte Begriffe

- War
- Non-Aggression Pact
- Alliance
- Guarantee

#### Referenzen

- PB-002
- PB-003

### Sphere of Influence

#### Definition

Eine `Sphere of Influence` ist ein internationaler Beziehungszusammenhang, in dem die politischen Handlungsmöglichkeiten mehrerer Akteure in besonderem Maß durch die Influence eines bestimmten politischen Akteurs geprägt sind.

#### Zweck

Der Begriff bezeichnet eine verdichtete Struktur politischer Einwirkung, ohne formale Herrschaft, Alliance oder Protectorate Relationship vorauszusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Influence`: ist die Fähigkeit eines Akteurs zur politischen Einwirkung.
- `Protectorate Relationship`: ist eine formalisierte asymmetrische internationale Beziehung.

#### Verwandte Begriffe

- Influence
- Diplomatic Relation
- Balance of Power
- Protectorate Relationship

#### Referenzen

- PB-002
- PB-003

### Balance of Power

#### Definition

`Balance of Power` ist die internationale Konstellation, in der die Handlungsmöglichkeiten politischer Akteure durch die Verteilung und wechselseitige Begrenzung ihrer Macht geprägt sind.

#### Zweck

Der Begriff bezeichnet einen übergreifenden Beziehungszustand und nicht ein einzelnes Abkommen, eine Alliance oder die Influence eines einzelnen Akteurs.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Sphere of Influence`: bezeichnet die verdichtete Influence eines bestimmten Akteurs.
- `Alliance`: ist ein formales internationales Abkommen.

#### Verwandte Begriffe

- Influence
- Sphere of Influence
- Alliance
- Diplomatic Relation

#### Referenzen

- PB-002
- PB-003

### International Organization

#### Definition

Eine `International Organization` ist eine durch internationale Übereinkunft begründete dauerhafte Einrichtung, in der mehrere diplomatische Akteure gemeinsame internationale Angelegenheiten geordnet behandeln.

#### Zweck

Der Begriff bezeichnet eine eigenständige institutionelle Form internationaler Zusammenarbeit und grenzt sie von einzelnen Agreements und Alliances ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Alliance`: ist ein Abkommen zur organisierten Zusammenarbeit seiner Mitglieder.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

#### Verwandte Begriffe

- Country
- Government
- Diplomatic Mission
- Agreement
- Treaty
- Alliance

#### Referenzen

- PB-002
- PB-003

### Protectorate Relationship

#### Definition

Eine `Protectorate Relationship` ist eine formalisierte asymmetrische internationale Beziehung, in der ein politischer Akteur die äußere Schutzverantwortung für einen anderen übernimmt und dadurch dessen internationale Handlungsfreiheit begrenzt ist.

#### Zweck

Der Begriff bezeichnet die Beziehung zwischen den beteiligten Akteuren und trennt sie von den Akteuren selbst, territorialer Herrschaft und bloßer Influence.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Protectorate`: ist gemäß Abschnitt 5.4 ein Political Territory innerhalb einer Protectorate Relationship.
- `Sphere of Influence`: setzt keine formalisierte Schutzverantwortung voraus.

#### Verwandte Begriffe

- Protectorate
- Diplomatic Relation
- Influence
- Sphere of Influence
- Sovereignty

#### Referenzen

- PB-002
- PB-003

# Kapitel 10 – Gameplay- und Designbegriffe

Dieses Kapitel definiert die domänenübergreifende Sprache für Gameplay-Interaktionen, Prozesse und Spielzustände. Die Begriffe bezeichnen allgemeine Konzepte, ohne die Mechaniken einzelner Systeme festzulegen.

Dieselben Begriffe werden in sämtlichen Spielsystemen einheitlich verwendet. Politik, Wirtschaft, Militär, Diplomatie, Technik und weitere Domänen dürfen sie fachlich konkretisieren, aber weder umdeuten noch durch domänenspezifische Synonyme ersetzen.

Spätere Dokumente referenzieren für diese Konzepte ausschließlich die hier festgelegte Terminologie. Regeln, Abläufe, Werte und technische Repräsentationen verbleiben in den jeweils zuständigen Dokumenten.

## 10.1 Spielerinteraktion

### Player

#### Definition

Ein `Player` ist eine Person, die innerhalb einer Campaign Entscheidungen trifft und durch Interaktionen Einfluss auf deren Verlauf nimmt.

#### Zweck

Der Begriff bezeichnet den menschlichen Ursprung von Spielabsichten und grenzt ihn von den innerhalb der World handelnden Akteuren ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Actor`: ist ein innerhalb der World handlungsfähiges Subjekt.
- `Player Intent`: ist die von einem Player verfolgte Absicht.

#### Verwandte Begriffe

- Player Intent
- Input
- Selection
- Actor
- Campaign

#### Referenzen

- PB-002
- PB-003

### Player Intent

#### Definition

`Player Intent` ist die von einem Player mit einer Interaktion verfolgte, noch nicht notwendig als gültige Handlung bestimmte Absicht.

#### Zweck

Der Begriff trennt das angestrebte Ergebnis einer Spielerinteraktion von ihrem Input, ihrer formalen Ausgestaltung und einer späteren Execution.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Input`: ist eine vom Spiel entgegengenommene Eingabe.
- `Action`: ist eine zur Ausführung bestimmte Gameplay-Handlung.

#### Verwandte Begriffe

- Player
- Input
- Selection
- Target
- Action

#### Referenzen

- PB-002
- PB-003

### Input

#### Definition

Ein `Input` ist eine vom Spiel entgegengenommene Eingabe eines Player, durch die eine Interaktion begonnen, fortgeführt oder beeinflusst wird.

#### Zweck

Der Begriff bezeichnet die Eingabe selbst, ohne daraus eine bestimmte Absicht, Gültigkeit oder Zustandsänderung abzuleiten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Player Intent`: bezeichnet die mit einer Interaktion verfolgte Absicht.
- `Selection`: bestimmt etwas als aktuellen Gegenstand einer Interaktion.

#### Verwandte Begriffe

- Player
- Player Intent
- Selection
- Confirmation

#### Referenzen

- PB-002
- PB-003

### Selection

#### Definition

Eine `Selection` ist die Bestimmung eines verfügbaren Gegenstands als aktuellen Bezugspunkt einer Spielerinteraktion.

#### Zweck

Der Begriff bezeichnet die interaktive Auswahl, ohne den ausgewählten Gegenstand notwendig zum Target einer Action zu machen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Target`: ist der bezeichnete Bezugspunkt einer Handlung oder eines Prozesses.
- `Decision`: legt eine Alternative verbindlich fest.

#### Verwandte Begriffe

- Player
- Input
- Target
- Action

#### Referenzen

- PB-002
- PB-003

### Target

#### Definition

Ein `Target` ist der eindeutig bezeichnete Gegenstand, auf den eine Action, ein Proposal, ein Effect oder ein anderer Gameplay-Prozess gerichtet ist.

#### Zweck

Der Begriff stellt einen domänenübergreifenden Bezugspunkt bereit, ohne dessen Art oder die auf ihn anwendbaren Regeln festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Selection`: ist die aktuelle interaktive Auswahl und begründet nicht notwendig einen Handlungsbezug.
- `Objective`: ist ein angestrebter Zustand oder ein angestrebtes Ergebnis.

#### Verwandte Begriffe

- Selection
- Action
- Proposal
- Effect
- Objective

#### Referenzen

- PB-002
- PB-003

## 10.2 Gameplay-Handlungen

### Action

#### Definition

Eine `Action` ist eine tatsächlich ausgeführte Gameplay-Handlung, durch die ein Player oder Actor innerhalb eines Spielsystems handelt.

#### Zweck

Der Begriff bezeichnet die tatsächliche Handlung und grenzt sie insbesondere von einer noch veränderbaren Proposal, einer Decision, ihrem Vollzug als Execution und dem Ergebnis der Handlung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Proposal`: wird vor einer möglichen Ausführung zur Prüfung oder Entscheidung gestellt.
- `Execution`: ist der Vollzug einer Action.
- `Effect`: ist eine durch einen Vorgang bewirkte Zustandsänderung.

#### Verwandte Begriffe

- Player Intent
- Proposal
- Decision
- Execution
- Effect

#### Referenzen

- PB-002
- PB-003

### Proposal

#### Definition

Ein `Proposal` ist domänenübergreifend ein formaler Vorschlag oder eine beabsichtigte Handlung, die vor ihrer möglichen Ausführung validiert, verändert, angenommen oder abgelehnt werden kann.

#### Zweck

Der Begriff bezeichnet einen noch nicht ausgeführten, zur weiteren Behandlung gestellten Inhalt. Er gilt in sämtlichen Spielsystemen; Diplomatie ist lediglich eines seiner möglichen Anwendungsgebiete.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Action`: ist die zur tatsächlichen Ausführung bestimmte Gameplay-Handlung.
- `Decision`: legt fest, wie über eine Proposal oder einen anderen auslösenden Sachverhalt entschieden wird.
- `Execution`: vollzieht eine bestimmte Action.

#### Verwandte Begriffe

- Action
- Decision
- Confirmation
- Execution
- Cancellation

#### Referenzen

- PB-002
- PB-003

### Decision

#### Definition

Eine `Decision` ist die verbindliche Festlegung einer verfügbaren Alternative als Antwort auf eine Proposal oder einen anderen auslösenden Sachverhalt.

#### Zweck

Der Begriff bezeichnet die Entscheidung selbst, ohne ihre Bestätigung, Ausführung oder daraus hervorgehenden Effects vorwegzunehmen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Proposal`: ist ein zur Behandlung gestellter Inhalt.
- `Confirmation`: bestätigt eine zuvor bestimmte Eingabe, Auswahl oder Entscheidung.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.

#### Verwandte Begriffe

- Proposal
- Confirmation
- Execution
- Cancellation
- Outcome

#### Referenzen

- PB-002
- PB-003

### Confirmation

#### Definition

Eine `Confirmation` ist die ausdrückliche Bestätigung, dass eine zuvor bestimmte Eingabe, Auswahl, Proposal oder Decision in ihrer vorliegenden Form fortgeführt werden soll.

#### Zweck

Der Begriff bezeichnet einen bestätigenden Interaktionsschritt und nicht die bestätigte Festlegung oder deren Execution.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Decision`: ist die verbindliche Festlegung einer Alternative.
- `Execution`: ist der Vollzug einer Action.

#### Verwandte Begriffe

- Input
- Selection
- Proposal
- Decision
- Execution

#### Referenzen

- PB-002
- PB-003

### Execution

#### Definition

Eine `Execution` ist der Vollzug, durch den eine dafür bestimmte Action tatsächlich ausgeführt wird.

#### Zweck

Der Begriff trennt den Vollzug von der vorherigen Absicht, Proposal, Decision oder Confirmation sowie von den daraus hervorgehenden Effects.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Action`: ist die Handlung, die vollzogen wird.
- `Effect`: ist eine durch den Vollzug bewirkte Zustandsänderung.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.

#### Verwandte Begriffe

- Action
- Proposal
- Decision
- Confirmation
- Effect

#### Referenzen

- PB-002
- PB-003

### Cancellation

#### Definition

Eine `Cancellation` ist die Beendigung einer noch nicht abgeschlossenen Proposal, Action oder eines laufenden Prozesses, ohne dessen vorgesehenen Abschluss herbeizuführen.

#### Zweck

Der Begriff bezeichnet den Abbruch vor Completion und legt weder seine Zulässigkeit noch seine möglichen Consequences fest.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Completion`: ist der vorgesehene Abschluss eines fortschreitenden Vorgangs.
- `Execution`: ist der Vollzug einer Action.

#### Verwandte Begriffe

- Proposal
- Action
- Project
- Completion
- Consequence

#### Referenzen

- PB-002
- PB-003

## 10.3 Laufende Prozesse

### Project

#### Definition

Ein `Project` ist ein über einen längeren Zeitraum laufender, auf einen bestimmten angestrebten Zustand oder ein Ergebnis ausgerichteter Gameplay-Prozess.

#### Zweck

Der Begriff bezeichnet einen fortdauernden Prozess und grenzt ihn von einzelnen Actions, untergeordneten Tasks und bloßen Zielbeschreibungen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Task`: ist eine abgegrenzte zu erledigende Einheit.
- `Objective`: beschreibt einen angestrebten Zustand oder ein angestrebtes Ergebnis.
- `Action`: ist eine zur Ausführung bestimmte einzelne Gameplay-Handlung.

#### Verwandte Begriffe

- Task
- Objective
- Progress
- Completion
- Cancellation

#### Referenzen

- PB-002
- PB-003

### Task

#### Definition

Ein `Task` ist eine abgegrenzte, zu erledigende Einheit innerhalb eines Gameplay-Zusammenhangs.

#### Zweck

Der Begriff bezeichnet einen bestimmten Erledigungsgegenstand, ohne einen länger laufenden Gesamtprozess oder dessen Ziel festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Project`: ist ein länger laufender Gameplay-Prozess.
- `Objective`: bezeichnet den angestrebten Zustand oder das angestrebte Ergebnis.
- `Action`: ist eine zur Ausführung bestimmte Gameplay-Handlung.

#### Verwandte Begriffe

- Project
- Objective
- Mission
- Progress
- Completion

#### Referenzen

- PB-002
- PB-003

### Objective

#### Definition

Ein `Objective` ist ein ausdrücklich bezeichneter Zustand oder ein ausdrücklich bezeichnetes Ergebnis, dessen Erreichen angestrebt wird.

#### Zweck

Der Begriff bezeichnet das Ziel eines Handelns oder Prozesses und nicht den Weg, die Handlung oder den Prozess zu seiner Erreichung.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Target`: ist der Gegenstand, auf den ein Vorgang gerichtet ist.
- `Task`: ist eine zu erledigende Einheit.
- `Outcome`: ist das tatsächlich eingetretene unmittelbare Ergebnis.

#### Verwandte Begriffe

- Target
- Project
- Task
- Mission
- Outcome

#### Referenzen

- PB-002
- PB-003

### Mission

#### Definition

Eine `Mission` ist ein abgegrenzter Gameplay-Auftrag, der mindestens ein Objective als zu erreichenden Gegenstand festlegt.

#### Zweck

Der Begriff bezeichnet einen zielgebundenen Auftrag und grenzt ihn von einem eigenständig laufenden Project, einer einzelnen Task und einer priorisierenden Agenda ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Objective`: ist der angestrebte Zustand oder das angestrebte Ergebnis.
- `Task`: ist eine abgegrenzte zu erledigende Einheit.
- `Agenda`: ordnet mehrere Anliegen oder Vorhaben nach einer verfolgten Ausrichtung.

#### Verwandte Begriffe

- Objective
- Task
- Project
- Agenda
- Completion

#### Referenzen

- PB-002
- PB-003

### Agenda

#### Definition

Eine `Agenda` ist eine geordnete Zusammenstellung von Anliegen, Objectives oder Vorhaben, die ein Akteur verfolgt oder priorisiert.

#### Zweck

Der Begriff bezeichnet eine übergreifende Ausrichtung mehrerer Gegenstände, ohne daraus einzelne Missions, Projects oder Actions abzuleiten.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Mission`: ist ein abgegrenzter zielgebundener Auftrag.
- `Objective`: ist ein einzelner angestrebter Zustand oder ein einzelnes angestrebtes Ergebnis.

#### Verwandte Begriffe

- Objective
- Mission
- Project
- Decision
- Actor

#### Referenzen

- PB-002
- PB-003

## 10.4 Spielereignisse

### Trigger

#### Definition

Ein `Trigger` ist die festgelegte Voraussetzung, deren Erfüllung die Möglichkeit oder das Eintreten eines Event auslöst.

#### Zweck

Der Begriff bezeichnet den auslösenden Bezug eines Ereignisses und grenzt ihn von einer allgemein geprüften Condition sowie vom Event selbst ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Condition`: ist ein prüfbarer Sachverhalt, ohne notwendig ein Event auszulösen.
- `Event`: ist das eingetretene Ereignis.

#### Verwandte Begriffe

- Condition
- Event
- State
- Outcome

#### Referenzen

- PB-002
- PB-003

### Condition

#### Definition

Eine `Condition` ist ein eindeutig prüfbarer Sachverhalt, der zu einem bestimmten Zeitpunkt erfüllt oder nicht erfüllt ist.

#### Zweck

Der Begriff stellt eine allgemeine Sprache für Voraussetzungen und Prüfungen bereit, ohne festzulegen, was aus ihrem Ergebnis folgt.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trigger`: ist eine als Auslöser für ein Event festgelegte Voraussetzung.
- `Requirement`: bezeichnet etwas, das für einen bestimmten Gegenstand erfüllt sein muss.
- `State`: ist die Gesamtheit maßgeblicher Eigenschaften eines Gegenstands zu einem Zeitpunkt.

#### Verwandte Begriffe

- Trigger
- Requirement
- Rule
- State
- Event

#### Referenzen

- PB-002
- PB-003

### Event

#### Definition

Ein `Event` ist ein innerhalb des Spielverlaufs eingetretenes und als zusammengehörig betrachtetes Ereignis.

#### Zweck

Der Begriff bezeichnet das eingetretene Ereignis und grenzt es von seiner auslösenden Voraussetzung, seinem unmittelbaren Outcome und seinen weiteren Consequences ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Trigger`: ist die Voraussetzung für ein Event.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.
- `Effect`: ist eine Zustandsänderung.

#### Verwandte Begriffe

- Trigger
- Condition
- Outcome
- Consequence
- Effect

#### Referenzen

- PB-002
- PB-003

### Outcome

#### Definition

Ein `Outcome` ist das unmittelbar aus einem Event, einer Action, einer Decision oder einem anderen abgeschlossenen Vorgang hervorgegangene Ergebnis.

#### Zweck

Der Begriff bezeichnet, was ein Vorgang unmittelbar ergeben hat, ohne längerfristige Consequences oder einzelne Zustandsänderungen damit gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Effect`: ist eine bestimmte Zustandsänderung.
- `Consequence`: ist eine aus einem Vorgang oder Outcome hervorgehende weitere Folge.
- `Objective`: ist ein angestrebtes und nicht notwendig tatsächlich erreichtes Ergebnis.

#### Verwandte Begriffe

- Event
- Action
- Decision
- Effect
- Consequence

#### Referenzen

- PB-002
- PB-003

### Consequence

#### Definition

Eine `Consequence` ist eine aus einem Vorgang, Event oder Outcome hervorgehende weitere Folge.

#### Zweck

Der Begriff bezeichnet einen Folgebezug über das unmittelbare Outcome hinaus, ohne dessen Zeitpunkt, Umfang oder konkrete Ausgestaltung festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.
- `Effect`: ist eine bestimmte Zustandsänderung.

#### Verwandte Begriffe

- Event
- Outcome
- Effect
- State
- Modifier

#### Referenzen

- PB-002
- PB-003

## 10.5 Regeln

### Requirement

#### Definition

Ein `Requirement` ist eine Voraussetzung, die für die Verfügbarkeit, Gültigkeit, Fortführung oder den Abschluss eines bestimmten Gameplay-Gegenstands erfüllt sein muss.

#### Zweck

Der Begriff bezeichnet eine notwendige Voraussetzung, ohne die prüfende Condition oder die übergreifende Rule damit gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Condition`: ist ein allgemein prüfbarer Sachverhalt.
- `Restriction`: begrenzt eine ansonsten bestehende Möglichkeit.
- `Rule`: ist eine verbindliche allgemeine Festlegung.

#### Verwandte Begriffe

- Condition
- Restriction
- Rule
- Completion

#### Referenzen

- PB-002
- PB-003

### Restriction

#### Definition

Eine `Restriction` ist eine verbindliche Begrenzung einer ansonsten bestehenden Gameplay-Möglichkeit.

#### Zweck

Der Begriff bezeichnet eine Einschränkung, ohne sie mit einer notwendigen Requirement oder der Gesamtheit einer Rule gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Requirement`: muss für einen bestimmten Gegenstand erfüllt sein.
- `Rule`: ist eine allgemeine verbindliche Festlegung.
- `Cooldown`: begrenzt erneute Verfügbarkeit anhand eines fortschreitenden Zeitraums.

#### Verwandte Begriffe

- Requirement
- Rule
- Condition
- Cooldown

#### Referenzen

- PB-002
- PB-003

### Rule

#### Definition

Eine `Rule` ist eine verbindliche allgemeine Festlegung darüber, wie ein Gameplay-Sachverhalt behandelt wird.

#### Zweck

Der Begriff bezeichnet die normative Grundlage eines Spielzusammenhangs, ohne eine konkrete Mechanik, Requirement, Restriction oder Wirkung zu bestimmen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Requirement`: ist eine notwendige Voraussetzung für einen bestimmten Gegenstand.
- `Restriction`: begrenzt eine bestehende Möglichkeit.
- `Effect`: ist eine Zustandsänderung.

#### Verwandte Begriffe

- Requirement
- Restriction
- Condition
- Effect
- Modifier

#### Referenzen

- PB-002
- PB-003

### Effect

#### Definition

Ein `Effect` ist eine durch eine Action, ein Event, eine Rule oder einen anderen Gameplay-Vorgang bewirkte Zustandsänderung.

#### Zweck

Der Begriff bezeichnet die Zustandsänderung selbst und grenzt sie vom auslösenden Vorgang, dessen gesamtem Outcome und einer wert- oder verhaltensbezogenen Veränderung durch einen Modifier ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Outcome`: ist das unmittelbare Gesamtergebnis eines Vorgangs.
- `Consequence`: ist eine weitere Folge eines Vorgangs oder Outcome.
- `Modifier`: verändert einen Wert oder ein Verhalten dauerhaft oder temporär.

#### Verwandte Begriffe

- Action
- Event
- Outcome
- Consequence
- Modifier
- State

#### Referenzen

- PB-002
- PB-003

### Modifier

#### Definition

Ein `Modifier` ist eine dauerhafte oder temporäre Veränderung eines Wertes oder Verhaltens gegenüber dessen ansonsten maßgeblicher Ausprägung.

#### Zweck

Der Begriff bezeichnet die verändernde Einflussgröße und grenzt sie von einer beliebigen Zustandsänderung, ihrer Ursache und dem betroffenen Wert oder Verhalten ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Effect`: ist eine Zustandsänderung und kann einen Modifier begründen, verändern oder beenden.
- `Rule`: legt verbindlich fest, wie ein Gameplay-Sachverhalt behandelt wird.
- `Status`: ist eine benannte Einordnung eines gegenwärtigen State.

#### Verwandte Begriffe

- Effect
- Rule
- State
- Status
- Cooldown

#### Referenzen

- PB-002
- PB-003

## 10.6 Fortschritt

### State

#### Definition

Ein `State` ist die Gesamtheit der zu einem bestimmten Zeitpunkt maßgeblichen Eigenschaften eines abgegrenzten Gameplay-Gegenstands.

#### Zweck

Der Begriff bezeichnet dessen gegenwärtige Beschaffenheit und grenzt sie von einer benannten Einordnung, zeitlicher Entwicklung und einzelnen Zustandsänderung ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Game State`: beschreibt den Zustand der gesamten World zu einem bestimmten Zeitpunkt.
- `Status`: ist eine benannte Einordnung eines State.
- `Progress`: beschreibt die Entwicklung hin zu einem Bezugspunkt.

#### Verwandte Begriffe

- Game State
- Status
- Progress
- Effect
- Condition

#### Referenzen

- PB-002
- PB-003

### Status

#### Definition

Ein `Status` ist eine benannte Einordnung des gegenwärtigen State eines Gameplay-Gegenstands hinsichtlich eines bestimmten Betrachtungszwecks.

#### Zweck

Der Begriff stellt eine verständliche Zustandsklassifikation bereit, ohne den vollständigen State oder dessen zeitliche Entwicklung abzubilden.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `State`: umfasst sämtliche maßgeblichen Eigenschaften des betrachteten Gegenstands.
- `Progress`: beschreibt eine Entwicklung hin zu einem Bezugspunkt.
- `Condition`: ist ein prüfbarer Sachverhalt.

#### Verwandte Begriffe

- State
- Progress
- Completion
- Condition
- Modifier

#### Referenzen

- PB-002
- PB-003

### Progress

#### Definition

`Progress` ist der erreichte Stand der Entwicklung eines fortschreitenden Vorgangs im Verhältnis zu einem bestimmten Bezugspunkt.

#### Zweck

Der Begriff bezeichnet den Entwicklungsstand, ohne den vollständigen State, einen Status oder den vorgesehenen Abschluss des Vorgangs damit gleichzusetzen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Status`: ist eine benannte Einordnung eines State.
- `Completion`: ist der vorgesehene Abschluss eines Vorgangs.
- `Outcome`: ist das unmittelbare Ergebnis eines abgeschlossenen Vorgangs.

#### Verwandte Begriffe

- State
- Status
- Project
- Task
- Completion

#### Referenzen

- PB-002
- PB-003

### Completion

#### Definition

`Completion` ist der vorgesehene Abschluss eines fortschreitenden Vorgangs nach Erfüllung der dafür maßgeblichen Requirements.

#### Zweck

Der Begriff bezeichnet den regulären Abschluss und grenzt ihn von laufendem Progress, vorzeitiger Cancellation und dem daraus hervorgehenden Outcome ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Progress`: bezeichnet den erreichten Entwicklungsstand.
- `Cancellation`: beendet einen Vorgang ohne seinen vorgesehenen Abschluss.
- `Outcome`: ist das unmittelbare Ergebnis eines abgeschlossenen Vorgangs.

#### Verwandte Begriffe

- Progress
- Requirement
- Cancellation
- Outcome
- Project

#### Referenzen

- PB-002
- PB-003

### Cooldown

#### Definition

Ein `Cooldown` ist ein fortschreitender Zeitraum, während dessen die erneute Verfügbarkeit eines bestimmten Gameplay-Gegenstands begrenzt ist.

#### Zweck

Der Begriff bezeichnet einen zeitbezogenen Verfügbarkeitszustand, ohne dessen Dauer, Beginn, Ende oder zugrunde liegende Rule festzulegen.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Restriction`: ist der allgemeinere Begriff für eine verbindliche Begrenzung.
- `Progress`: bezeichnet einen Entwicklungsstand im Verhältnis zu einem Bezugspunkt.
- `Modifier`: verändert einen Wert oder ein Verhalten.

#### Verwandte Begriffe

- Restriction
- Rule
- State
- Status
- Progress

#### Referenzen

- PB-002
- PB-003
