---
document_id: PB-004
title: Naming & Terminology
version: 0.16.1
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
  - PB-997
  - PB-998
  - PB-999
systems: []
requirements:
  - REQ-TERM-001
  - REQ-TERM-002
  - REQ-TERM-003
  - REQ-TERM-004
  - REQ-TERM-005
  - REQ-TERM-006
  - REQ-TERM-007
  - REQ-TERM-008
  - REQ-TERM-009
  - REQ-TERM-010
  - REQ-TERM-011
  - REQ-TERM-012
  - REQ-TERM-013
  - REQ-TERM-014
  - REQ-TERM-015
  - REQ-TERM-016
  - REQ-TERM-017
  - REQ-TERM-018
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

## Kapitel 1 – Zweck und Geltungsbereich

PB-004 schafft ein verbindliches, projektweites Vokabular, damit fachliche Konzepte über Dokumente, Implementierungen und Inhalte hinweg eindeutig bezeichnet und verstanden werden. Einheitliche Begriffe verhindern, dass unklare Synonyme dasselbe Konzept scheinbar trennen oder dass ein einzelner Ausdruck mehrere, miteinander unvereinbare Bedeutungen erhält.

Die in PB-004 festgelegte Terminologie gilt für Game Design, technische Architektur und Implementierung, Datenmodelle, Savegames, APIs, Modding-Schnittstellen und -Inhalte, Benutzeroberflächen, Szenarioinhalte sowie für Kontexte und Ausgaben von KI-Assistenten. Derselbe kanonische Begriff muss in diesen Bereichen konsistent dieselbe Bedeutung tragen, sofern eine ausdrücklich dokumentierte bereichsspezifische Abbildung oder lokalisierte Anzeigeform keine Abweichung erlaubt.

PB-004 legt die Bedeutung von Projektbegriffen und ihre zulässigen Benennungen fest. Ein Begriff ist erst dann kanonisch, wenn er in einem dafür vorgesehenen Abschnitt von PB-004 ausdrücklich definiert und das Dokument gemäß PB-000 in einen autoritativen Status überführt wurde. Bis dahin verwendete Bezeichnungen sind Arbeitsbegriffe und begründen weder allein durch häufige Verwendung noch durch ihre Verwendung in Code, Daten oder bestehenden Entwürfen eine kanonische Bedeutung.

PB-004 definiert keine vollständigen Spielmechaniken, Systemabläufe, Datenstrukturen oder Implementierungsdetails. Es stellt das gemeinsame begriffliche Fundament bereit; die fachlichen Regeln und technischen Verträge verbleiben in den jeweils zuständigen Game-Design-, Technik-, Content-, Balancing- und Entwicklungsdokumenten.

Besteht ein Konflikt zwischen einer vorgeschlagenen Begriffsdefinition in PB-004 und einem bestehenden kanonischen Dokument, darf PB-004 dieses nicht stillschweigend überschreiben. Der Konflikt muss benannt, geprüft und durch eine ausdrückliche Änderung oder Supersession der betroffenen Dokumente aufgelöst werden. Bis zu dieser Auflösung bleibt die bestehende kanonische Festlegung maßgeblich. Abweichende Verwendungen in nicht-kanonischen oder älteren Dokumenten sind bei ihrer Überarbeitung an die bestätigte Terminologie anzupassen.

### 1.1 Normative Sprachregel

Die Begriffe **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT** und **MAY** werden gemäß PB-000 normativ verwendet. Deutsche Erläuterungen verändern ihre dort festgelegte Verbindlichkeit nicht.

## Kapitel 2 – Grundprinzipien der Terminologie

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

## Kapitel 3 – Allgemeine Kernbegriffe

Dieses Kapitel bildet das begriffliche Fundament für alle weiteren Terminologiebereiche von PB-004. Ab diesem Kapitel MUST jeder neu aufgenommene Begriff exakt die nachfolgend verwendete Abschnittsfolge besitzen: `Definition`, `Zweck`, `Verwendung`, optional `Darf nicht verwechselt werden mit`, `Verwandte Begriffe` und `Referenzen`. Abschnitte dürfen weder umbenannt noch durch begriffsspezifische Strukturen ersetzt werden. `Verwandte Begriffe` enthält ausschließlich Verweise auf Begriffe, `Referenzen` ausschließlich Dokument-IDs.

### World

#### Definition

Die `World` ist die Gesamtheit aller innerhalb eines laufenden Spielzusammenhangs berücksichtigten Räume, Akteure, Zustände und Beziehungen. Sie bildet den Bezugsraum, in dem eine `Simulation` stattfindet.

#### Zweck

Der Begriff grenzt den vollständigen betrachteten Zusammenhang von einzelnen Inhalten, Zustandsausschnitten und deren zeitlicher Entwicklung ab.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Scenario`: definiert die Ausgangsbedingungen und Vorgaben einer World.
- `Game State`: beschreibt den Zustand einer World zu einem bestimmten Zeitpunkt.

#### Verwandte Begriffe

- Scenario
- Simulation
- Game State
- Entity

#### Referenzen

- PB-001
- PB-002
- PB-003

### Scenario

#### Definition

Ein `Scenario` ist eine in sich geschlossene Festlegung der für einen Spielbeginn verfügbaren Inhalte, Regeln, Ausgangsbedingungen und zeitlichen Einordnung. Es MUST von den allgemeinen Grundlagen des Projekts trennbar bleiben.

#### Zweck

Der Begriff bezeichnet den austauschbaren Rahmen, aus dem eine konkrete World initial hervorgehen kann, ohne diesen Rahmen mit der allgemeinen Produkt- oder Systemidentität gleichzusetzen.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `World`: umfasst den tatsächlich betrachteten und fortgeschriebenen Spielzusammenhang.
- `Campaign`: ist der fortlaufende Spielverlauf auf Grundlage eines Scenario.

#### Verwandte Begriffe

- World
- Campaign
- Timeline
- Calendar
- Configuration

#### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### Campaign

#### Definition

Eine `Campaign` ist ein zusammenhängender, fortlaufender Spielverlauf, der auf einem Scenario beruht und die Entwicklung seiner World über die Zeit umfasst.

#### Zweck

Der Begriff bezeichnet die dauerhafte Kontinuität eines begonnenen Spiels einschließlich seines individuellen Verlaufs.

#### Verwendung

- Game Design
- Savegames
- UI
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Scenario`: legt den Rahmen und die Ausgangsbedingungen fest.
- `Timeline`: ordnet zeitbezogene Zustände und Vorgänge.

#### Verwandte Begriffe

- Scenario
- World
- Timeline
- Game State

#### Referenzen

- PB-001
- PB-002
- PB-003

### Timeline

#### Definition

Eine `Timeline` ist die geordnete zeitliche Achse, auf der Zustände und Vorgänge einer World eingeordnet werden. Sie bestimmt deren Reihenfolge und zeitliche Lage, ohne selbst deren fachliche Wirkung festzulegen.

#### Zweck

Der Begriff stellt einen gemeinsamen zeitlichen Bezugsrahmen für Verlauf, Vergleich und Nachvollziehbarkeit bereit.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Calendar`: bildet Positionen einer Timeline auf benannte Zeiteinheiten ab.
- `Campaign`: umfasst den gesamten zusammenhängenden Spielverlauf.

#### Verwandte Begriffe

- Calendar
- Date
- Tick
- Time Step
- Campaign

#### Referenzen

- PB-002
- PB-003

### Calendar

#### Definition

Ein `Calendar` ist ein Regelsystem zur Gliederung und Benennung von Positionen auf einer Timeline. Er legt fest, wie zeitliche Positionen als Dates ausgedrückt werden.

#### Zweck

Der Begriff ermöglicht eine einheitliche, für Inhalte und Darstellung nutzbare zeitliche Einordnung.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Timeline`: ist die zugrunde liegende zeitliche Achse.
- `Date`: bezeichnet eine einzelne Position gemäß einem Calendar.

#### Verwandte Begriffe

- Timeline
- Date
- Scenario

#### Referenzen

- PB-000
- PB-002

### Date

#### Definition

Ein `Date` ist die eindeutige Bezeichnung einer zeitlichen Position gemäß einem bestimmten Calendar.

#### Zweck

Der Begriff erlaubt es, Zustände und Vorgänge auf einer Timeline eindeutig zu verorten und verständlich darzustellen.

#### Verwendung

- Game Design
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Calendar`: definiert das Regelsystem der zeitlichen Bezeichnung.
- `Tick`: bezeichnet einen diskreten Fortschritt der Simulation.

#### Verwandte Begriffe

- Calendar
- Timeline
- Tick

#### Referenzen

- PB-000
- PB-002

### Tick

#### Definition

Ein `Tick` ist ein einzelner, diskreter Fortschritt der Simulation entlang ihrer Timeline. Er bezeichnet eine Ordnungsposition des Simulationsfortschritts und keine festgelegte kalendarische Dauer.

#### Zweck

Der Begriff schafft eine eindeutige Einheit für die Reihenfolge diskreter Simulationsfortschritte.

#### Verwendung

- Game Design
- Engine
- Savegames
- APIs
- Modding
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Time Step`: bezeichnet den zeitlichen Umfang eines Simulationsfortschritts.
- `Date`: bezeichnet eine Position gemäß einem Calendar.

#### Verwandte Begriffe

- Time Step
- Timeline
- Date
- Simulation

#### Referenzen

- PB-002
- PB-003

### Time Step

#### Definition

Ein `Time Step` ist der zeitliche Umfang, um den eine Simulation bei einem Fortschritt weitergeführt wird. Seine Größe ist nicht durch den Begriff selbst festgelegt.

#### Zweck

Der Begriff trennt die verarbeitete Zeitspanne von der bloßen Reihenfolge einzelner Simulationsfortschritte.

#### Verwendung

- Game Design
- Engine
- Savegames
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Tick`: bezeichnet den einzelnen diskreten Simulationsfortschritt.
- `Date`: bezeichnet eine kalendarisch ausgedrückte zeitliche Position.

#### Verwandte Begriffe

- Tick
- Timeline
- Calendar
- Simulation

#### Referenzen

- PB-002
- PB-003

### Simulation

#### Definition

Die `Simulation` ist die autoritative, regelgebundene Fortschreibung des Game State über die Zeit. Sie bestimmt zulässige Zustandsänderungen und deren verbindliche Ergebnisse.

#### Zweck

Der Begriff bezeichnet die Instanz fachlicher Autorität, durch die die World konsistent fortgeführt und Auswirkungen nachvollziehbar bestimmt werden.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `System`: trägt einen abgegrenzten Teil der Regeln und Zuständigkeiten bei.
- `Game State`: ist der autoritative Zustand, den die Simulation fortschreibt.

#### Verwandte Begriffe

- Game State
- World
- System
- Tick
- Time Step

#### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### Game State

#### Definition

Der `Game State` ist die vollständige Menge der zu einem bestimmten Simulationszeitpunkt autoritativ geltenden und für die Fortführung relevanten Zustandsinformationen einer Campaign.

#### Zweck

Der Begriff grenzt verbindlichen Simulationszustand von Darstellung, Erzählung, abgeleiteten Informationen und unverbindlichen Vorschlägen ab.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `World`: ist der gesamte betrachtete Spielzusammenhang.
- `Data`: bezeichnet Informationen unabhängig von ihrer Autorität oder Rolle.
- `Configuration`: beeinflusst Verhalten, ist aber nicht allein deshalb Teil des laufenden Zustands.

#### Verwandte Begriffe

- Simulation
- Campaign
- World
- Entity
- Data

#### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### Entity

#### Definition

Eine `Entity` ist ein innerhalb des Projekts eindeutig unterscheidbarer Gegenstand, dem Zustand, Eigenschaften oder Beziehungen zugeordnet werden können. Der Begriff setzt keine bestimmte technische Repräsentation oder Architektur voraus.

#### Zweck

Der Begriff stellt eine gemeinsame Bezeichnung für einzeln referenzierbare fachliche Gegenstände bereit.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Identifier`: bezeichnet eine stabile Referenz auf einen Gegenstand, nicht den Gegenstand selbst.
- `Module`: ist eine abgegrenzte organisatorische Einheit.

#### Verwandte Begriffe

- Identifier
- Game State
- Data
- World

#### Referenzen

- PB-000
- PB-002
- PB-003

### Identifier

#### Definition

Ein `Identifier` ist eine innerhalb seines festgelegten Geltungsbereichs eindeutige und stabile Referenz auf genau einen bestimmten Gegenstand. Seine konkrete Syntax und Vergaberegeln werden durch den jeweils zuständigen Standard festgelegt.

#### Zweck

Der Begriff ermöglicht eindeutige, dauerhafte und bereichsübergreifend nachvollziehbare Referenzen.

#### Verwendung

- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Entity`: ist der referenzierte Gegenstand.
- Anzeigename: dient der menschlichen Darstellung und muss nicht eindeutig oder stabil sein.

#### Verwandte Begriffe

- Entity
- Data
- Configuration

#### Referenzen

- PB-000
- PB-004

### System

#### Definition

Ein `System` ist eine fachlich abgegrenzte Gesamtheit zusammengehöriger Regeln, Zuständigkeiten, Zustände und Beziehungen, die einen bestimmten Teil des Projekts beschreibt oder trägt. Ein System ist unabhängig von seiner späteren technischen Aufteilung definiert.

#### Zweck

Der Begriff schafft stabile fachliche Grenzen für Entwurf, Verantwortung, Abhängigkeiten und Dokumentation.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Module`: gliedert Artefakte organisatorisch oder technisch.
- `Simulation`: führt den autoritativen Game State unter Beteiligung von Systemen fort.

#### Verwandte Begriffe

- Module
- Simulation
- Game State
- Configuration

#### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### Module

#### Definition

Ein `Module` ist eine abgegrenzte, benannte Einheit von zusammengehörigen Artefakten mit festgelegter Verantwortung. Seine Grenze dient der Strukturierung und begründet keine eigenständige fachliche Bedeutung.

#### Zweck

Der Begriff ermöglicht eine klare organisatorische Aufteilung und Zuordnung von Verantwortlichkeiten, ohne fachliche Systemgrenzen vorwegzunehmen.

#### Verwendung

- Engine
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `System`: bezeichnet eine fachliche Gesamtheit unabhängig von ihrer technischen oder organisatorischen Aufteilung.
- `Entity`: bezeichnet einen einzeln referenzierbaren Gegenstand.

#### Verwandte Begriffe

- System
- Data
- Configuration

#### Referenzen

- PB-000
- PB-003

### Data

#### Definition

`Data` sind formal darstellbare Informationen, die im Projekt gespeichert, übertragen, ausgewertet oder dargestellt werden können. Der Begriff legt weder Autorität noch Herkunft, Lebensdauer oder technische Repräsentation dieser Informationen fest.

#### Zweck

Der Begriff stellt eine neutrale gemeinsame Bezeichnung für verarbeitbare Informationen bereit.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Game State`: ist die autoritative Teilmenge der für die Fortführung einer Campaign relevanten Zustandsinformationen.
- `Configuration`: besteht aus Vorgaben, die zulässiges oder gewünschtes Verhalten festlegen.

#### Verwandte Begriffe

- Game State
- Configuration
- Entity
- Identifier

#### Referenzen

- PB-000
- PB-002
- PB-003

### Configuration

#### Definition

Eine `Configuration` ist eine festgelegte Menge von Vorgaben, durch die zulässiges oder gewünschtes Verhalten und auswählbare Varianten bestimmt werden, ohne das zugrunde liegende Konzept neu zu definieren.

#### Zweck

Der Begriff trennt anpassbare Vorgaben von fachlichen Definitionen, laufendem Game State und allgemeinen Data.

#### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

#### Darf nicht verwechselt werden mit

- `Data`: umfasst Informationen unabhängig von ihrer steuernden Rolle.
- `Game State`: beschreibt den autoritativen Zustand einer laufenden Campaign.
- `Scenario`: legt einen vollständigen inhaltlichen und regelbezogenen Ausgangsrahmen fest.

#### Verwandte Begriffe

- Data
- Game State
- Scenario
- System
- Module

#### Referenzen

- PB-000
- PB-002
- PB-003

## Kapitel 4 – Politische Terminologie

Politische Begriffe werden fachlich und hierarchisch gruppiert. Die fünf Gruppen bilden unterschiedliche Ebenen politischer Ordnung ab und verdeutlichen die Beziehungen und notwendigen Abgrenzungen zwischen den Begriffen.

Die Reihenfolge führt von politischen Entitäten über die institutionelle Ordnung und ihre Organe bis zu politischen Akteuren und abstrakten Konzepten.

Spätere Dokumente MUST diese Begriffe in ihrer hier festgelegten kanonischen Bedeutung verwenden.

### 4.1 Politische Entitäten

#### Country

##### Definition

Ein `Country` ist eine als Einheit betrachtete Verbindung aus Gebiet, Bevölkerung und politischer Ordnung, die in politischen und internationalen Zusammenhängen als eigenständiger Akteur referenziert wird.

##### Zweck

Der Begriff stellt die gemeinsame Bezeichnung für die territorial-politische Gesamteinheit bereit, ohne sie auf State, Government oder Nation zu reduzieren.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: bezeichnet die dauerhafte politische und rechtliche Organisation.
- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Nation`: bezeichnet eine kollektive Identität.

##### Verwandte Begriffe

- State
- Government
- Nation
- Sovereignty

##### Referenzen

- PB-001
- PB-002
- PB-003

#### State

##### Definition

Ein `State` ist eine dauerhafte politische und rechtliche Organisation, die über Institutionen eine Bevölkerung und ein Gebiet ordnet und dafür Sovereignty beansprucht.

##### Zweck

Der Begriff bezeichnet die organisierte Trägerin öffentlicher Herrschaft unabhängig von ihrer jeweiligen Führung, gesellschaftlichen Identität oder geografischen Benennung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: übt die gegenwärtige politische Leitung aus.
- `Nation`: bezeichnet eine kollektive politische oder gesellschaftliche Identität.
- `Country`: bezeichnet eine territorial-politische Einheit als Ganzes.

##### Verwandte Begriffe

- Government
- Nation
- Country
- Sovereignty
- Institution

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Nation

##### Definition

Eine `Nation` ist eine als zusammengehörig verstandene politische oder gesellschaftliche Gemeinschaft, die sich auf eine gemeinsame kollektive Identität bezieht.

##### Zweck

Der Begriff bezeichnet kollektive Zugehörigkeit, ohne sie mit einer staatlichen Organisation oder einem bestimmten Gebiet gleichzusetzen.

##### Verwendung

- Game Design
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: ist eine politische und rechtliche Organisation.
- `Country`: ist eine territorial-politische Einheit.

##### Verwandte Begriffe

- State
- Country
- Sovereignty
- Autonomy

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Government

##### Definition

Ein `Government` ist die Gesamtheit der Personen und Organe, die innerhalb eines State zu einem bestimmten Zeitpunkt dessen oberste politische Leitungs- und Entscheidungsfunktionen ausüben.

##### Zweck

Der Begriff bezeichnet die jeweils handelnde politische Führung und grenzt sie von der dauerhaften politischen Ordnung und ihren Einrichtungen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: ist die dauerhafte politische und rechtliche Organisation.
- `Regime`: bezeichnet die grundlegende Ordnung politischer Herrschaft.

##### Verwandte Begriffe

- State
- Regime
- Cabinet
- Executive
- Head of Government

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Regime

##### Definition

Ein `Regime` ist die grundlegende Ordnung, nach der politische Herrschaft innerhalb eines State erlangt, ausgeübt, begrenzt und übertragen wird.

##### Zweck

Der Begriff bezeichnet die beständige Struktur politischer Herrschaft jenseits der jeweils amtierenden Personen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: ist die gegenwärtig handelnde politische Führung.
- `Constitution`: ist die grundlegende normative Ordnung eines State.

##### Verwandte Begriffe

- Government
- State
- Constitution
- Legitimacy
- Authority

##### Referenzen

- PB-002
- PB-003

### 4.2 Staatsorganisation

#### Constitution

##### Definition

Eine `Constitution` ist die grundlegende normative Ordnung eines State, welche die Ausübung öffentlicher Authority, die maßgeblichen Institutionen und deren Beziehungen festlegt.

##### Zweck

Der Begriff bezeichnet den obersten Ordnungsrahmen, an dem die staatliche Herrschaftsstruktur und ihre Zuständigkeiten ausgerichtet sind.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Law`: ist eine verbindliche allgemeine Norm innerhalb der politischen Ordnung.
- `Regime`: bezeichnet die tatsächliche grundlegende Ordnung politischer Herrschaft.

##### Verwandte Begriffe

- State
- Regime
- Institution
- Law
- Authority

##### Referenzen

- PB-002
- PB-003

#### Institution

##### Definition

Eine `Institution` ist eine dauerhaft etablierte politische oder rechtliche Ordnungseinheit mit anerkannten Aufgaben, Zuständigkeiten oder Verfahrensregeln.

##### Zweck

Der Begriff bezeichnet beständige Träger und Ordnungen politischer Funktionen unabhängig von einzelnen Amtsinhabern.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die gegenwärtige politische Führung.
- `Public Administration`: bezeichnet die Gesamtheit der Einrichtungen und Tätigkeiten zur Ausführung öffentlicher Aufgaben.

##### Verwandte Begriffe

- Constitution
- State
- Ministry
- Parliament
- Public Administration

##### Referenzen

- PB-002
- PB-003

#### Law

##### Definition

Ein `Law` ist eine von zuständiger öffentlicher Authority gesetzte oder anerkannte, allgemein verbindliche Norm innerhalb eines State.

##### Zweck

Der Begriff bezeichnet verbindliche politische und rechtliche Vorgaben unterhalb der grundlegenden Verfassungsordnung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Constitution`: bildet die grundlegende normative Ordnung.
- `Authority`: ist die anerkannte Befugnis, verbindliche Entscheidungen zu treffen.

##### Verwandte Begriffe

- Constitution
- Legislature
- Judiciary
- Authority
- Institution

##### Referenzen

- PB-002
- PB-003

### 4.3 Staatsorgane

#### Head of State

##### Definition

Der `Head of State` ist das Amt, das einen State in seiner obersten institutionellen Kontinuität und Repräsentation verkörpert.

##### Zweck

Der Begriff bezeichnet die staatliche Spitzenfunktion unabhängig davon, ob sie mit der Leitung des Government verbunden ist.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Head of Government`: leitet das Government.
- `Government`: ist die Gesamtheit der gegenwärtigen politischen Führung.

##### Verwandte Begriffe

- State
- Government
- Head of Government
- Constitution
- Authority

##### Referenzen

- PB-002
- PB-003

#### Head of Government

##### Definition

Der `Head of Government` ist das Amt, dem die politische Leitung und Koordination des Government zugeordnet ist.

##### Zweck

Der Begriff bezeichnet die führende Regierungsfunktion unabhängig von ihrer Amtsbezeichnung oder ihrer Verbindung mit dem Head of State.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Head of State`: verkörpert die oberste institutionelle Kontinuität und Repräsentation des State.
- `Cabinet`: ist ein kollegiales Leitungsgremium.

##### Verwandte Begriffe

- Government
- Cabinet
- Head of State
- Executive

##### Referenzen

- PB-002
- PB-003

#### Cabinet

##### Definition

Ein `Cabinet` ist das kollegiale Leitungsgremium des Government, in dem der Head of Government und die für zentrale Regierungsbereiche verantwortlichen Mitglieder zusammenwirken.

##### Zweck

Der Begriff bezeichnet die gemeinsame politische Führung und Abstimmung der obersten Regierungsverantwortlichen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: umfasst die politische Führung insgesamt.
- `Ministry`: ist eine einzelne nach Aufgabenbereich gegliederte Regierungsinstitution.

##### Verwandte Begriffe

- Government
- Ministry
- Executive
- Head of Government

##### Referenzen

- PB-002
- PB-003

#### Ministry

##### Definition

Ein `Ministry` ist eine nach einem öffentlichen Aufgabenbereich gegliederte Institution des Government unter politischer Leitung.

##### Zweck

Der Begriff bezeichnet die dauerhafte institutionelle Bündelung von Verantwortung für einen abgegrenzten Regierungsbereich.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Cabinet`: ist das kollegiale Leitungsgremium des Government.
- `Public Administration`: umfasst die öffentliche Verwaltung insgesamt.

##### Verwandte Begriffe

- Government
- Cabinet
- Executive
- Institution
- Public Administration

##### Referenzen

- PB-002
- PB-003

#### Parliament

##### Definition

Ein `Parliament` ist eine beratende und beschlussfassende politische Institution mit zusammengesetzter Mitgliedschaft, die insbesondere öffentliche Repräsentations- und Gesetzgebungsfunktionen wahrnimmt.

##### Zweck

Der Begriff bezeichnet die konkrete institutionelle Versammlung, in der politische Beratung, Repräsentation und verbindliche Beschlussfassung gebündelt sind.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Legislature`: bezeichnet die Funktion oder Gesamtheit der gesetzgebenden Staatsgewalt.
- `Cabinet`: ist das kollegiale Leitungsgremium des Government.

##### Verwandte Begriffe

- Legislature
- Institution
- Law
- Political Party
- Opposition

##### Referenzen

- PB-002
- PB-003

#### Legislature

##### Definition

Die `Legislature` ist die Institution oder Gesamtheit von Institutionen eines State, der die Zuständigkeit zur Beratung und Verabschiedung von Laws zugeordnet ist.

##### Zweck

Der Begriff bezeichnet die gesetzgebende Staatsfunktion unabhängig davon, durch welche konkrete institutionelle Form sie wahrgenommen wird.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Parliament`: ist eine konkrete politische Institution, die gesetzgebende Funktionen wahrnehmen kann.
- `Executive`: bezeichnet die leitende und ausführende Staatsgewalt.

##### Verwandte Begriffe

- Parliament
- Executive
- Judiciary
- Law
- Constitution

##### Referenzen

- PB-002
- PB-003

#### Executive

##### Definition

Die `Executive` ist die Institution oder Gesamtheit von Institutionen eines State, der die politische Leitung und Ausführung von Laws und öffentlichen Entscheidungen zugeordnet ist.

##### Zweck

Der Begriff bezeichnet die leitende und ausführende Staatsfunktion unabhängig von ihren konkreten Organen oder Amtsinhabern.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: bezeichnet die jeweils handelnde politische Führung.
- `Public Administration`: führt öffentliche Aufgaben innerhalb zugewiesener Zuständigkeiten aus.

##### Verwandte Begriffe

- Government
- Legislature
- Judiciary
- Cabinet
- Public Administration

##### Referenzen

- PB-002
- PB-003

#### Judiciary

##### Definition

Die `Judiciary` ist die Institution oder Gesamtheit von Institutionen eines State, der die verbindliche Auslegung und Anwendung von Law in Streit- und Entscheidungsfällen zugeordnet ist.

##### Zweck

Der Begriff bezeichnet die rechtsprechende Staatsfunktion unabhängig von ihrer konkreten institutionellen Gliederung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Legislature`: verabschiedet Laws.
- `Executive`: leitet und vollzieht öffentliche Entscheidungen.

##### Verwandte Begriffe

- Legislature
- Executive
- Law
- Constitution
- Institution

##### Referenzen

- PB-002
- PB-003

### 4.4 Politische Akteure

#### Political Party

##### Definition

Eine `Political Party` ist eine dauerhaft organisierte politische Vereinigung, die gemeinsame politische Ziele verfolgt und auf die Besetzung oder Ausübung öffentlicher Authority hinwirkt.

##### Zweck

Der Begriff bezeichnet eine beständige Organisation zur Bündelung politischer Programme, Unterstützung und Führungspersonen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte Strömung innerhalb eines größeren politischen Zusammenhangs.
- `Interest Group`: vertritt gemeinsame Interessen, ohne notwendig öffentliche Authority anzustreben.

##### Verwandte Begriffe

- Faction
- Interest Group
- Opposition
- Coalition
- Ideology

##### Referenzen

- PB-002
- PB-003

#### Faction

##### Definition

Eine `Faction` ist eine organisierte politische Strömung innerhalb eines größeren politischen Akteurs oder Zusammenhangs, die gemeinsame Ziele verfolgt und dessen Richtung oder Entscheidungen beeinflussen will.

##### Zweck

Der Begriff bezeichnet interne politische Organisation und Konkurrenz, ohne daraus eine eigenständige Political Party oder Interest Group abzuleiten.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Party`: ist eine eigenständige dauerhafte politische Vereinigung.
- `Interest Group`: organisiert sich um gemeinsame Interessen.

##### Verwandte Begriffe

- Political Party
- Interest Group
- Coalition
- Opposition
- Ideology

##### Referenzen

- PB-002
- PB-003

#### Interest Group

##### Definition

Eine `Interest Group` ist eine organisierte Gemeinschaft, die gemeinsame gesellschaftliche oder materielle Interessen gegenüber politischen Entscheidungsträgern vertritt.

##### Zweck

Der Begriff bezeichnet die gebündelte politische Einflussnahme aus gemeinsamen Interessen, ohne die Übernahme öffentlicher Authority vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Party`: wirkt auf die Besetzung oder Ausübung öffentlicher Authority hin.
- `Faction`: ist eine Strömung innerhalb eines größeren politischen Zusammenhangs.

##### Verwandte Begriffe

- Political Party
- Faction
- Opposition
- Political Capital

##### Referenzen

- PB-002
- PB-003

#### Opposition

##### Definition

Die `Opposition` ist die Gesamtheit politischer Akteure, die der gegenwärtigen politischen Führung oder deren maßgeblicher Ausrichtung organisiert entgegentreten.

##### Zweck

Der Begriff bezeichnet die relationale politische Gegenposition zur amtierenden Führung, ohne eine bestimmte Organisationsform vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Faction`: ist eine organisierte interne Strömung.
- `Coalition`: koordiniert mehrere Akteure zur Verfolgung gemeinsamer politischer Ziele.

##### Verwandte Begriffe

- Government
- Political Party
- Faction
- Coalition
- Legitimacy

##### Referenzen

- PB-002
- PB-003

#### Coalition

##### Definition

Eine `Coalition` ist eine vereinbarte Zusammenarbeit mehrerer politischer Akteure zur Verfolgung gemeinsamer politischer Ziele unter Erhalt ihrer jeweiligen Eigenständigkeit.

##### Zweck

Der Begriff bezeichnet koordinierte politische Zusammenarbeit, ohne die beteiligten Akteure zu einer einzigen Organisation zu verschmelzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Party`: ist selbst eine dauerhafte politische Vereinigung.
- `Faction`: besteht innerhalb eines größeren politischen Zusammenhangs.

##### Verwandte Begriffe

- Political Party
- Faction
- Government
- Opposition
- Cabinet

##### Referenzen

- PB-002
- PB-003

### 4.5 Politische Konzepte

#### Ideology

##### Definition

Eine `Ideology` ist ein zusammenhängendes System politischer Grundannahmen, Werte und Zielvorstellungen zur Deutung und Gestaltung gesellschaftlicher und politischer Ordnung.

##### Zweck

Der Begriff bezeichnet den normativen und deutenden Bezugsrahmen politischer Ziele und Positionen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Party`: ist eine politische Organisation und kein System von Vorstellungen.
- `Regime`: ist die grundlegende Ordnung politischer Herrschaft.

##### Verwandte Begriffe

- Political Party
- Faction
- Regime
- Legitimacy
- Constitution

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Legitimacy

##### Definition

`Legitimacy` ist das Ausmaß, in dem die Ausübung politischer Authority von den für eine politische Ordnung maßgeblichen Akteuren als berechtigt anerkannt wird.

##### Zweck

Der Begriff bezeichnet die anerkannte Rechtfertigung politischer Herrschaft und grenzt sie von bloßer Durchsetzungsfähigkeit ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Authority`: ist die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Sovereignty`: ist der Anspruch auf höchste politische Authority.

##### Verwandte Begriffe

- Authority
- Sovereignty
- Government
- Regime
- Opposition

##### Referenzen

- PB-002
- PB-003

#### Authority

##### Definition

`Authority` ist die anerkannte Befugnis eines politischen Akteurs oder einer Institution, innerhalb eines bestimmten Geltungsbereichs verbindliche Entscheidungen zu treffen.

##### Zweck

Der Begriff bezeichnet rechtfertigbare politische Entscheidungsbefugnis und grenzt sie von Fähigkeit, Einfluss oder bloßer Gewalt ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Legitimacy`: bezeichnet die Anerkennung politischer Herrschaft als berechtigt.
- `Sovereignty`: bezeichnet den Anspruch auf höchste politische Authority.

##### Verwandte Begriffe

- Legitimacy
- Sovereignty
- Constitution
- Law
- Institution

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Sovereignty

##### Definition

`Sovereignty` ist der Anspruch eines State auf höchste politische Authority über seine inneren Angelegenheiten und auf politische Unabhängigkeit gegenüber äußeren Autoritäten.

##### Zweck

Der Begriff bezeichnet die oberste Zuordnung politischer Entscheidungsgewalt und die Unabhängigkeit ihrer Ausübung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Autonomy`: ist begrenzte eigenständige Entscheidungsbefugnis innerhalb einer übergeordneten Ordnung.
- `Authority`: kann auf einen begrenzten Geltungsbereich bezogen sein.

##### Verwandte Begriffe

- State
- Authority
- Legitimacy
- Autonomy
- Country

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Autonomy

##### Definition

`Autonomy` ist die anerkannte Befugnis eines politischen Akteurs oder Gebietes, bestimmte Angelegenheiten innerhalb einer übergeordneten politischen Ordnung eigenständig zu regeln.

##### Zweck

Der Begriff bezeichnet abgegrenzte politische Selbstbestimmung, ohne vollständige Sovereignty vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Sovereignty`: beansprucht höchste politische Authority und äußere Unabhängigkeit.
- `Decentralization`: beschreibt die Verteilung von Zuständigkeiten weg von einer politischen Mitte.

##### Verwandte Begriffe

- Sovereignty
- Authority
- Centralization
- Decentralization
- State

##### Referenzen

- PB-002
- PB-003

#### Centralization

##### Definition

`Centralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten bei einer übergeordneten politischen Mitte gebündelt sind.

##### Zweck

Der Begriff bezeichnet die vertikale Konzentration öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet anerkannte Entscheidungsbefugnis als solche.
- `Administrative Capacity`: bezeichnet die Fähigkeit, öffentliche Entscheidungen wirksam auszuführen.

##### Verwandte Begriffe

- Decentralization
- Autonomy
- Authority
- State
- Public Administration

##### Referenzen

- PB-002
- PB-003

#### Decentralization

##### Definition

`Decentralization` ist das Ausmaß, in dem politische Entscheidungsbefugnisse und administrative Zuständigkeiten von einer übergeordneten politischen Mitte auf nachgeordnete oder eigenständige Einheiten verteilt sind.

##### Zweck

Der Begriff bezeichnet die vertikale Verteilung öffentlicher Zuständigkeiten innerhalb einer politischen Ordnung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Autonomy`: bezeichnet die anerkannte eigenständige Regelungsbefugnis eines Akteurs oder Gebietes.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Ausführung öffentlicher Aufgaben.

##### Verwandte Begriffe

- Centralization
- Autonomy
- Authority
- State
- Public Administration

##### Referenzen

- PB-002
- PB-003

#### Political Capital

##### Definition

`Political Capital` ist die verfügbare Fähigkeit eines politischen Akteurs, Unterstützung, Beziehungen, Vertrauen und Einfluss zur Durchsetzung politischer Vorhaben zu mobilisieren.

##### Zweck

Der Begriff bezeichnet die politisch nutzbare Handlungsmacht, die aus Unterstützung und Einflussbeziehungen hervorgeht.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Authority`: ist anerkannte verbindliche Entscheidungsbefugnis.
- `Legitimacy`: ist die Anerkennung politischer Herrschaft als berechtigt.

##### Verwandte Begriffe

- Authority
- Legitimacy
- Government
- Political Party
- Interest Group

##### Referenzen

- PB-002
- PB-003

#### Administrative Capacity

##### Definition

`Administrative Capacity` ist die Fähigkeit eines State und seiner zuständigen Institutionen, öffentliche Entscheidungen verlässlich, wirksam und innerhalb ihres Geltungsbereichs auszuführen.

##### Zweck

Der Begriff bezeichnet die tatsächliche organisatorische Leistungsfähigkeit öffentlicher Aufgabenerfüllung unabhängig von der formalen Zuweisung von Authority.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Authority`: bezeichnet die anerkannte Befugnis zu verbindlichen Entscheidungen.
- `Public Administration`: bezeichnet die Einrichtungen und Tätigkeiten, durch die öffentliche Aufgaben ausgeführt werden.

##### Verwandte Begriffe

- Public Administration
- State
- Institution
- Ministry
- Centralization
- Decentralization

##### Referenzen

- PB-002
- PB-003

#### Public Administration

##### Definition

Die `Public Administration` ist die Gesamtheit der dauerhaften öffentlichen Einrichtungen, Verfahren und Tätigkeiten, durch die Laws und verbindliche politische Entscheidungen ausgeführt sowie öffentliche Aufgaben wahrgenommen werden.

##### Zweck

Der Begriff bezeichnet den institutionellen Vollzug öffentlicher Aufgaben jenseits der politischen Richtungsentscheidung durch das Government.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: bestimmt die gegenwärtige politische Leitung.
- `Executive`: bezeichnet die leitende und ausführende Staatsfunktion insgesamt.
- `Administrative Capacity`: bezeichnet die Fähigkeit zur wirksamen Aufgabenerfüllung.

##### Verwandte Begriffe

- Administrative Capacity
- Executive
- Government
- Ministry
- Institution
- Law

##### Referenzen

- PB-002
- PB-003
## Kapitel 5 – Territoriale Terminologie

Territoriale Begriffe werden nach ihren fachlichen Beziehungen gruppiert, weil räumliche Ordnung nicht durch eine einzige Hierarchie vollständig beschrieben werden kann. Die Gruppen machen sichtbar, welche Begriffe vergleichbare Gegenstände bezeichnen und an welchen Stellen eine Abgrenzung zwischen ihnen erforderlich ist.

Räumliche Begriffe beschreiben unterschiedliche Ebenen und Perspektiven. Geographische Gliederungen, politische Zuordnungen und administrative Einteilungen werden deshalb bewusst getrennt, auch wenn sie sich auf denselben Ausschnitt der World beziehen können.

Spätere Dokumente MUST für diese Konzepte ausschließlich die hier festgelegte Terminologie verwenden. Sie MUST die geographische Lage eines Gebietes, seine politische Zuordnung und seine administrative Funktion als voneinander unterscheidbare Eigenschaften behandeln.

### 5.1 Welt- und Gebietseinheiten

#### World Region

##### Definition

Eine `World Region` ist eine großräumige geographische Gliederung der World, die mehrere Regions zu einem übergeordneten räumlichen Zusammenhang ordnet.

##### Zweck

Der Begriff bezeichnet die höchste projektweit festgelegte geographische Gruppierung unterhalb der World, ohne eine politische oder administrative Einheit vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: ist eine unterhalb einer World Region liegende geographische Gebietseinheit.
- `Strategic Region`: fasst Räume nach einer strategischen Betrachtung zusammen.

##### Verwandte Begriffe

- World
- Region
- Strategic Region
- Area

##### Referenzen

- PB-002
- PB-003

#### Region

##### Definition

Eine `Region` ist eine geographische Gebietseinheit innerhalb einer World Region, die mehrere Provinces zu einem räumlich zusammenhängenden Ausschnitt der World ordnet.

##### Zweck

Der Begriff bezeichnet eine mittlere, politisch und administrativ neutrale Ebene der geographischen Weltgliederung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Province`: ist die unmittelbar unterhalb einer Region liegende geographische Gebietseinheit.
- `Administrative Region`: ist eine durch Public Administration abgegrenzte Verwaltungseinheit.
- `Territory`: bezeichnet ein Gebiet aufgrund seiner politischen Zuordnung.
- `Strategic Region`: wird durch einen strategischen Zusammenhang bestimmt.

##### Verwandte Begriffe

- World Region
- Province
- Administrative Region
- Strategic Region

##### Referenzen

- PB-002
- PB-003

#### Province

##### Definition

Eine `Province` ist eine geographische Gebietseinheit innerhalb einer Region, die mehrere Districts zu einem zusammenhängenden Ausschnitt der World ordnet.

##### Zweck

Der Begriff bezeichnet die geographische Gliederungsebene zwischen Region und District unabhängig von politischer oder administrativer Zuordnung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: umfasst mehrere Provinces und liegt eine geographische Ebene höher.
- `District`: ist die unmittelbar unterhalb einer Province liegende geographische Gebietseinheit.
- `Administrative Region`: folgt einer administrativen statt einer geographischen Abgrenzung.

##### Verwandte Begriffe

- Region
- District
- Territory
- Administrative Region

##### Referenzen

- PB-002
- PB-003

#### District

##### Definition

Ein `District` ist die kleinste kanonische geographische Gebietseinheit der World und liegt innerhalb genau einer Province.

##### Zweck

Der Begriff bezeichnet die feinste projektweit festgelegte räumliche Gliederung, auf die größere geographische und politische Gebiete bezogen werden können.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Province`: umfasst mehrere Districts und liegt eine geographische Ebene höher.
- `Municipality`: ist eine örtliche Verwaltungseinheit und keine geographische Grundeinheit.
- `Area`: ist eine zweckgebundene räumliche Zusammenfassung ohne feste Hierarchiestufe.

##### Verwandte Begriffe

- Province
- Municipality
- Area
- Zone

##### Referenzen

- PB-002
- PB-003

### 5.2 Politische Gebiete

#### Territory

##### Definition

Ein `Territory` ist ein räumlich abgegrenzter Teil der World, der einem politischen Akteur aufgrund von Sovereignty, Anspruch, Kontrolle oder einem sonstigen politischen Verhältnis zugeordnet wird.

##### Zweck

Der Begriff bezeichnet die allgemeine politische Zuordnung eines Gebietes, ohne deren Rechtsgrund, tatsächliche Wirksamkeit oder administrativen Status vorwegzunehmen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: ist eine geographische Gebietseinheit ohne notwendige politische Zuordnung.
- `State`: ist eine dauerhafte politische und rechtliche Ordnung und kein Gebiet.
- `Country`: ist die im Spielzusammenhang handelnde politische Einheit und nicht ihr räumlicher Umfang.
- `Controlled Territory`: ist ein Territory unter tatsächlich durchgesetzter politischer Kontrolle.

##### Verwandte Begriffe

- State
- Country
- Controlled Territory
- Claim
- Core

##### Referenzen

- PB-002
- PB-003

#### Core

##### Definition

Ein `Core` ist ein Territory, das ein Country als dauerhaft zu seiner grundlegenden politischen und territorialen Ordnung gehörend anerkennt.

##### Zweck

Der Begriff bezeichnet die besondere dauerhafte Eigenzuordnung eines Gebietes durch ein Country unabhängig von gegenwärtiger Kontrolle oder fremden Ansprüchen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Claim`: ist ein geltend gemachter politischer Zuordnungsanspruch ohne notwendige Anerkennung als grundlegender Bestandteil.
- `Controlled Territory`: wird tatsächlich kontrolliert, muss aber kein Core des kontrollierenden Country sein.
- `Annexed Territory`: ist formell in die beanspruchte territoriale Ordnung eines Country eingegliedert.

##### Verwandte Begriffe

- Territory
- Country
- Claim
- Controlled Territory
- Annexed Territory

##### Referenzen

- PB-002
- PB-003

#### Claim

##### Definition

Ein `Claim` ist der ausdrücklich geltend gemachte Anspruch eines politischen Akteurs, dass ein Territory seiner politischen Authority oder territorialen Ordnung zugeordnet sein soll.

##### Zweck

Der Begriff bezeichnet eine beanspruchte politische Gebietszuordnung unabhängig davon, ob sie anerkannt, durchgesetzt oder als dauerhaft grundlegend betrachtet wird.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Core`: ist die dauerhafte Eigenzuordnung eines Territory durch ein Country.
- `Controlled Territory`: bezeichnet tatsächliche Kontrolle und keinen Anspruch.
- `Sovereignty`: ist der Anspruch eines State auf höchste politische Authority und äußere Unabhängigkeit.

##### Verwandte Begriffe

- Territory
- Core
- Sovereignty
- Controlled Territory

##### Referenzen

- PB-002
- PB-003

#### Controlled Territory

##### Definition

Ein `Controlled Territory` ist ein Territory, in dem ein politischer Akteur seine Entscheidungen gegenwärtig tatsächlich und dauerhaft wirksam durchsetzen kann.

##### Zweck

Der Begriff bezeichnet die faktische politische Kontrolle eines Gebietes unabhängig von Sovereignty, Core-Status, Claim oder administrativer Eingliederung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Occupied Territory`: ist ein besonderer Fall fremder Kontrolle ohne vollzogene territoriale Eingliederung.
- `Annexed Territory`: ist formell in die beanspruchte territoriale Ordnung eines Country eingegliedert.
- `Claim`: bezeichnet einen politischen Anspruch statt tatsächlicher Kontrolle.

##### Verwandte Begriffe

- Territory
- Occupied Territory
- Annexed Territory
- Authority
- Claim

##### Referenzen

- PB-002
- PB-003

#### Occupied Territory

##### Definition

Ein `Occupied Territory` ist ein Controlled Territory, das ein politischer Akteur außerhalb seiner eigenen territorialen Ordnung vorläufig beherrscht, ohne es in diese eingegliedert zu haben.

##### Zweck

Der Begriff bezeichnet fremde, nicht als territoriale Eingliederung behandelte Kontrolle und trennt sie von allgemeiner Kontrolle und Annexation.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Controlled Territory`: umfasst jede tatsächlich durchgesetzte politische Kontrolle und ist nicht notwendig fremd oder vorläufig.
- `Annexed Territory`: ist in die beanspruchte territoriale Ordnung des annektierenden Country eingegliedert.
- `Colony`: steht in einem dauerhaften Abhängigkeitsverhältnis zu einem anderen Country.

##### Verwandte Begriffe

- Controlled Territory
- Annexed Territory
- Territory
- Claim

##### Referenzen

- PB-002
- PB-003

#### Annexed Territory

##### Definition

Ein `Annexed Territory` ist ein Territory, das ein Country durch einen formellen Hoheitsakt in seine beanspruchte territoriale Ordnung eingegliedert hat.

##### Zweck

Der Begriff bezeichnet die vollzogene formelle Eingliederung eines Gebietes unabhängig von ihrer äußeren Anerkennung, tatsächlichen Kontrolle oder Einordnung als Core.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Occupied Territory`: bleibt außerhalb der eigenen territorialen Ordnung des kontrollierenden Akteurs.
- `Controlled Territory`: bezeichnet tatsächliche Kontrolle ohne notwendige formelle Eingliederung.
- `Core`: bezeichnet die dauerhafte grundlegende Eigenzuordnung durch ein Country.

##### Verwandte Begriffe

- Territory
- Occupied Territory
- Controlled Territory
- Core
- Claim

##### Referenzen

- PB-002
- PB-003

### 5.3 Verwaltungsgebiete

#### Administrative Region

##### Definition

Eine `Administrative Region` ist ein räumlich abgegrenzter Zuständigkeitsbereich der Public Administration, der mehrere örtliche Verwaltungseinheiten umfassen kann.

##### Zweck

Der Begriff bezeichnet eine allgemeine überörtliche Verwaltungseinheit unabhängig von ihrer geographischen Gliederung oder einer besonderen verfassungsrechtlichen Stellung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: ist eine geographische Gebietseinheit.
- `Federal State`: besitzt eine verfassungsrechtlich zugeordnete eigenständige politische Stellung innerhalb eines State.
- `Municipality`: ist eine örtliche Verwaltungseinheit.

##### Verwandte Begriffe

- Public Administration
- Region
- Federal State
- Municipality
- Administrative Capacity

##### Referenzen

- PB-002
- PB-003

#### Federal State

##### Definition

Ein `Federal State` ist eine territoriale politische Einheit innerhalb eines föderal gegliederten State, der durch dessen Constitution eigenständige Zuständigkeiten und Institutionen zugeordnet sind.

##### Zweck

Der Begriff bezeichnet eine verfassungsrechtlich abgesicherte Gliedeinheit und grenzt sie von rein administrativen Unterteilungen und dem übergeordneten State ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: ist die übergreifende dauerhafte politische und rechtliche Ordnung.
- `Administrative Region`: besitzt nicht notwendig eigenständige verfassungsrechtliche Zuständigkeiten.
- `Country`: ist eine im Spielzusammenhang eigenständig handelnde politische Einheit.

##### Verwandte Begriffe

- State
- Constitution
- Autonomy
- Administrative Region
- Municipality

##### Referenzen

- PB-002
- PB-003

#### Municipality

##### Definition

Eine `Municipality` ist eine örtliche territoriale Einheit der Public Administration mit einem abgegrenzten Zuständigkeitsbereich und institutionell zugeordneten öffentlichen Aufgaben.

##### Zweck

Der Begriff bezeichnet die lokale Ebene administrativer Gebietsorganisation unabhängig von ihrer konkreten Organform oder Bezeichnung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `District`: ist eine geographische Grundeinheit und keine notwendige Verwaltungseinheit.
- `Administrative Region`: ist eine überörtliche Verwaltungseinheit.
- `Capital`: ist ein politisch bestimmter zentraler Ort und keine Verwaltungsebene.

##### Verwandte Begriffe

- Public Administration
- Administrative Region
- District
- Capital
- Autonomy

##### Referenzen

- PB-002
- PB-003

#### Capital

##### Definition

Eine `Capital` ist der politisch bestimmte Ort, an dem die zentralen Institutionen eines politischen Akteurs ihren maßgeblichen Sitz haben.

##### Zweck

Der Begriff bezeichnet den institutionellen Hauptort einer politischen Einheit, ohne eine eigene geographische oder administrative Hierarchiestufe festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Municipality`: ist eine örtliche Verwaltungseinheit, die eine Capital enthalten kann.
- `Country`: ist die handelnde politische Einheit, deren zentrale Institutionen an einer Capital ansässig sein können.
- `Political Capital`: bezeichnet politisch mobilisierbare Handlungsmacht und keinen Ort.

##### Verwandte Begriffe

- Country
- State
- Government
- Institution
- Municipality

##### Referenzen

- PB-002
- PB-003

### 5.4 Internationale Gebietsbeziehungen

#### Colony

##### Definition

Eine `Colony` ist ein territorial abgegrenztes politisches Gemeinwesen, das dauerhaft einem anderen Country untergeordnet ist und nicht als gleichberechtigter Bestandteil von dessen staatlicher Ordnung gilt.

##### Zweck

Der Begriff bezeichnet territoriale Fremdherrschaft bei institutioneller Abgrenzung vom übergeordneten Country.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Occupied Territory`: steht unter vorläufiger fremder Kontrolle ohne Eingliederung.
- `Protectorate`: behält eine eigene politische Ordnung unter vertraglich oder rechtlich begrenzter äußerer Authority.
- `Subject`: ist der allgemeine Begriff für ein politisch untergeordnetes Country.

##### Verwandte Begriffe

- Country
- Subject
- Protectorate
- Territory
- Sovereignty

##### Referenzen

- PB-002
- PB-003

#### Protectorate

##### Definition

Ein `Protectorate` ist ein Country, das seine innere politische Ordnung grundsätzlich beibehält, während festgelegte Bereiche seiner äußeren Sovereignty der Authority eines anderen Country unterstehen.

##### Zweck

Der Begriff bezeichnet eine besondere Form politischer Unterordnung, bei der äußere Entscheidungsbefugnisse begrenzt übertragen sind und die innere Ordnung fortbesteht.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Colony`: ist ein territorial abgegrenztes, nicht gleichberechtigt eingegliedertes Gemeinwesen unter dauerhafter Fremdherrschaft.
- `Subject`: bezeichnet allgemein ein politisch untergeordnetes Country.
- `Puppet State`: besitzt nur begrenzte tatsächliche Eigenständigkeit gegenüber dem beherrschenden Country.

##### Verwandte Begriffe

- Country
- Subject
- Puppet State
- Sovereignty
- Autonomy

##### Referenzen

- PB-002
- PB-003

#### Subject

##### Definition

Ein `Subject` ist ein Country, dessen Sovereignty durch ein dauerhaftes politisches Unterordnungsverhältnis zugunsten eines anderen Country begrenzt ist.

##### Zweck

Der Begriff bezeichnet die allgemeine Kategorie politisch abhängiger Countries unabhängig von der besonderen Form oder Bezeichnung ihrer Abhängigkeit.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Protectorate`: ist eine besondere Form mit grundsätzlich fortbestehender innerer Ordnung und begrenzter äußerer Sovereignty.
- `Puppet State`: ist durch geringe tatsächliche politische Eigenständigkeit gekennzeichnet.
- `Colony`: ist ein territorial abgegrenztes Gemeinwesen unter dauerhafter Fremdherrschaft und nicht notwendig ein Country.

##### Verwandte Begriffe

- Country
- Protectorate
- Puppet State
- Colony
- Sovereignty
- Autonomy

##### Referenzen

- PB-002
- PB-003

#### Puppet State

##### Definition

Ein `Puppet State` ist ein formal als Country fortbestehender Subject, dessen maßgebliche politische Entscheidungen tatsächlich von einem anderen Country bestimmt werden.

##### Zweck

Der Begriff bezeichnet die Abweichung zwischen formaler Eigenständigkeit und tatsächlicher äußerer Bestimmung der politischen Führung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Subject`: ist der Oberbegriff für ein politisch untergeordnetes Country.
- `Protectorate`: überträgt festgelegte Bereiche äußerer Sovereignty, ohne notwendig eine tatsächliche Bestimmung maßgeblicher innerer Entscheidungen zu begründen.
- `Government`: ist die gegenwärtige politische Führung eines State.

##### Verwandte Begriffe

- Country
- Subject
- Protectorate
- Government
- Sovereignty

##### Referenzen

- PB-002
- PB-003

### 5.5 Räumliche Konzepte

#### Border

##### Definition

Eine `Border` ist die festgelegte Trennlinie zwischen zwei unmittelbar aneinandergrenzenden Gebieten mit unterschiedlicher politischer, administrativer oder geographischer Zuordnung.

##### Zweck

Der Begriff bezeichnet eine lineare räumliche Abgrenzung und macht die Art der getrennten Gebietszuordnung ausdrücklich bestimmbar.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Frontier`: ist ein räumlicher Übergangsbereich und keine festgelegte Trennlinie.
- `Area`: ist eine zweckgebundene räumliche Zusammenfassung.
- `Zone`: ist ein abgegrenzter Raum mit einem zugeordneten besonderen Status.

##### Verwandte Begriffe

- Frontier
- Territory
- Region
- Zone

##### Referenzen

- PB-002
- PB-003

#### Frontier

##### Definition

Eine `Frontier` ist ein räumlicher Übergangsbereich an der äußeren Reichweite dauerhaft wirksamer politischer oder administrativer Ordnung.

##### Zweck

Der Begriff bezeichnet einen Bereich abgestufter, überlagerter oder noch nicht eindeutig verfestigter Gebietszuordnung statt einer exakten Trennlinie.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Border`: ist eine festgelegte Trennlinie zwischen unterschiedlich zugeordneten Gebieten.
- `Controlled Territory`: ist ein Gebiet tatsächlich und dauerhaft wirksamer politischer Kontrolle.
- `Zone`: besitzt einen ausdrücklich zugeordneten besonderen Status.

##### Verwandte Begriffe

- Border
- Territory
- Controlled Territory
- Area

##### Referenzen

- PB-002
- PB-003

#### Area

##### Definition

Eine `Area` ist eine für einen bestimmten fachlichen Zweck zusammengefasste räumliche Menge ohne festgelegte Stellung in der geographischen, politischen oder administrativen Gebietshierarchie.

##### Zweck

Der Begriff bezeichnet eine neutrale, zweckbezogene räumliche Auswahl, wenn keine kanonische Gebietseinheit oder besondere Statuszuweisung gemeint ist.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: besitzt eine festgelegte Stellung in der geographischen Weltgliederung.
- `Zone`: ist ein abgegrenzter Raum mit einem besonderen Status oder einer besonderen Regelungszuordnung.
- `Strategic Region`: ist eine ausdrücklich strategisch bestimmte räumliche Gruppierung.

##### Verwandte Begriffe

- Zone
- Strategic Region
- Region
- District

##### Referenzen

- PB-002
- PB-003

#### Zone

##### Definition

Eine `Zone` ist ein abgegrenzter Raum, dem für einen festgelegten fachlichen Zusammenhang ein besonderer Status oder eine besondere Regelungszuordnung zugewiesen ist.

##### Zweck

Der Begriff bezeichnet eine statusbezogene räumliche Abgrenzung unabhängig von den Grenzen kanonischer geographischer, politischer oder administrativer Gebietseinheiten.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Area`: ist eine neutrale zweckbezogene räumliche Auswahl ohne notwendigen besonderen Status.
- `Region`: ist eine festgelegte geographische Gebietseinheit.
- `Border`: ist eine Trennlinie und kein räumlicher Bereich.

##### Verwandte Begriffe

- Area
- Border
- Strategic Region
- Territory

##### Referenzen

- PB-002
- PB-003

#### Strategic Region

##### Definition

Eine `Strategic Region` ist eine zusammenhängende räumliche Gruppierung, deren Abgrenzung durch einen gemeinsamen strategischen Betrachtungszusammenhang bestimmt ist.

##### Zweck

Der Begriff bezeichnet eine strategische Raumordnung ohne politische, administrative oder geographische Einheitlichkeit vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Region`: ist eine festgelegte geographische Gebietseinheit.
- `World Region`: ist die höchste geographische Gruppierung unterhalb der World.
- `Area`: ist eine allgemeine zweckbezogene räumliche Auswahl ohne notwendig strategische Bestimmung.
- `Zone`: erhält einen besonderen Status oder eine besondere Regelungszuordnung.

##### Verwandte Begriffe

- Region
- World Region
- Area
- Zone

##### Referenzen

- PB-002
- PB-003
## Kapitel 6 – Bevölkerung und Gesellschaft

Bevölkerung wird auf mehreren voneinander abzugrenzenden Ebenen beschrieben. Individuen, Haushalte und zusammengefasste Gruppen sind unterschiedliche Konzepte und dürfen nicht stellvertretend füreinander verwendet werden.

Kultur, gesellschaftliche Ordnung und demographische Entwicklung bilden eigenständige Begriffsbereiche. Ihre Beziehungen heben diese Trennung nicht auf.

Spätere Systeme und Dokumente MUST für diese Gegenstände die nachfolgend festgelegte Terminologie verwenden.

### 6.1 Bevölkerung

#### Population

##### Definition

Eine `Population` ist die Gesamtheit der Personen, die einem räumlichen, politischen oder sonst eindeutig bestimmten Bezugsbereich zu einem bestimmten Zeitpunkt zugeordnet sind.

##### Zweck

Der Begriff bezeichnet den vollständigen personenbezogenen Bestand eines Bezugsbereichs, ohne dessen innere Gliederung oder rechtliche Stellung vorwegzunehmen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Population Group`: fasst nur Personen mit festgelegten gemeinsamen Merkmalen zusammen.
- `Household`: verbindet Personen durch eine gemeinsame Lebens- und Versorgungsgemeinschaft.
- `Citizen`: bezeichnet eine Person mit rechtlicher Mitgliedschaft in einem State.

##### Verwandte Begriffe

- Population Group
- Household
- Citizen
- Resident
- Migration

##### Referenzen

- PB-002
- PB-003

#### Population Group

##### Definition

Eine `Population Group` ist eine innerhalb einer Population abgegrenzte Menge von Personen, die hinsichtlich ausdrücklich festgelegter gesellschaftlicher, kultureller, demographischer oder rechtlicher Merkmale übereinstimmen.

##### Zweck

Der Begriff ermöglicht die fachliche Zusammenfassung vergleichbarer Personen, ohne sie als Individuen oder Household zu behandeln und ohne zusätzliche Gemeinsamkeiten zu unterstellen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Population`: umfasst alle Personen des bestimmten Bezugsbereichs.
- `Household`: beruht auf einer gemeinsamen Lebens- und Versorgungsgemeinschaft.
- `Social Class`: ordnet Personen nach ihrer gesellschaftlichen Stellung.
- `Identity`: ist das Zugehörigkeitsverständnis einer Person oder Gruppe.

##### Verwandte Begriffe

- Population
- Household
- Social Class
- Culture
- Identity

##### Referenzen

- PB-002
- PB-003

#### Household

##### Definition

Ein `Household` ist eine auf Dauer angelegte Gemeinschaft einer oder mehrerer Personen, die ihre alltägliche Lebensführung und wesentliche Mittel ihrer Versorgung gemeinsam ordnen.

##### Zweck

Der Begriff bezeichnet die soziale Versorgungseinheit zwischen einzelner Person und größeren Bevölkerungszusammenfassungen, unabhängig von Verwandtschaft oder Rechtsform.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Population Group`: entsteht durch übereinstimmende festgelegte Merkmale.
- `Population`: ist der vollständige Personenbestand eines Bezugsbereichs.
- `Resident`: ist eine einzelne Person mit gewöhnlichem Aufenthalt.

##### Verwandte Begriffe

- Population
- Population Group
- Citizen
- Resident
- Income
- Wealth

##### Referenzen

- PB-002
- PB-003

#### Citizen

##### Definition

Ein `Citizen` ist eine natürliche Person, die kraft einer rechtlich anerkannten Zugehörigkeit dauerhaft Mitglied eines State ist.

##### Zweck

Der Begriff bezeichnet die formelle personenbezogene Mitgliedschaft in einer staatlichen Ordnung unabhängig von Aufenthaltsort, gesellschaftlicher Stellung oder politischer Haltung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Resident`: wird durch gewöhnlichen Aufenthalt statt staatlicher Mitgliedschaft bestimmt.
- `Population`: umfasst auch Personen ohne Citizenship.
- `Nation`: ist eine vorgestellte politische und gesellschaftliche Gemeinschaft und keine individuelle Rechtsstellung.

##### Verwandte Begriffe

- State
- Population
- Resident
- Identity

##### Referenzen

- PB-002
- PB-003

#### Resident

##### Definition

Ein `Resident` ist eine natürliche Person, deren gewöhnlicher und auf Dauer ausgerichteter Lebensmittelpunkt innerhalb eines bestimmten Gebietes liegt.

##### Zweck

Der Begriff bezeichnet die auf tatsächlichem Aufenthalt beruhende Zuordnung einer Person zu einem Gebiet unabhängig von Citizenship oder kultureller Zugehörigkeit.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Citizen`: besitzt eine rechtliche Mitgliedschaft in einem State unabhängig vom Aufenthalt.
- `Population`: ist die Gesamtheit der einem Bezugsbereich zugeordneten Personen.
- `Immigration`: bezeichnet die auf ein Zielgebiet bezogene Zuwanderung.

##### Verwandte Begriffe

- Citizen
- Population
- Territory
- Migration
- Immigration
- Emigration

##### Referenzen

- PB-002
- PB-003

### 6.2 Gesellschaft

#### Social Class

##### Definition

Eine `Social Class` ist eine gesellschaftliche Kategorie, deren Angehörige aufgrund dauerhaft vergleichbarer Stellung in der sozialen Ordnung zusammengefasst werden.

##### Zweck

Der Begriff bezeichnet eine strukturierte gesellschaftliche Lage, ohne eine bestimmte Profession, Occupation, Einkommenshöhe oder politische Organisation vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Profession`: bezeichnet ein abgegrenztes Feld qualifizierter Tätigkeit.
- `Occupation`: bezeichnet die tatsächlich ausgeübte regelmäßige Tätigkeit.
- `Wealth`: ist der Bestand wirtschaftlich nutzbarer Werte.
- `Interest Group`: ist ein organisierter politischer Akteur.

##### Verwandte Begriffe

- Population Group
- Profession
- Occupation
- Education
- Wealth
- Income
- Social Mobility

##### Referenzen

- PB-002
- PB-003

#### Profession

##### Definition

Eine `Profession` ist ein gesellschaftlich abgegrenztes Feld qualifizierter Tätigkeit, das durch einen gemeinsamen Bestand an Kenntnissen, Fähigkeiten und anerkannten Aufgaben bestimmt wird.

##### Zweck

Der Begriff bezeichnet eine dauerhafte fachliche Qualifikation und Tätigkeitszuordnung unabhängig davon, ob oder in welcher konkreten Occupation sie gegenwärtig ausgeübt wird.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Occupation`: ist die gegenwärtig regelmäßig ausgeübte Tätigkeit einer Person.
- `Education`: ist der Erwerb und die Vermittlung von Wissen und Fähigkeiten.
- `Social Class`: bezeichnet die Stellung in der gesellschaftlichen Ordnung.

##### Verwandte Begriffe

- Occupation
- Education
- Literacy
- Social Class
- Income

##### Referenzen

- PB-002
- PB-003

#### Occupation

##### Definition

Eine `Occupation` ist die von einer Person regelmäßig ausgeübte Tätigkeit, durch die sie eine bestimmte gesellschaftliche oder wirtschaftliche Aufgabe wahrnimmt.

##### Zweck

Der Begriff bezeichnet die tatsächliche gegenwärtige Tätigkeit unabhängig von fachlicher Qualifikation, gesellschaftlicher Stellung oder daraus erzieltem Income.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Profession`: ist ein qualifiziertes Tätigkeitsfeld und nicht dessen notwendige gegenwärtige Ausübung.
- `Income`: bezeichnet den innerhalb eines Zeitraums erfolgenden wirtschaftlichen Zufluss.
- `Social Class`: bezeichnet eine gesellschaftliche Stellung.

##### Verwandte Begriffe

- Profession
- Education
- Social Class
- Income

##### Referenzen

- PB-002
- PB-003

#### Education

##### Definition

`Education` ist der geordnete Erwerb und die geordnete Vermittlung von Wissen, Fähigkeiten und Urteilsvermögen durch Personen und gesellschaftliche Einrichtungen.

##### Zweck

Der Begriff bezeichnet Bildung als umfassenden Entwicklungszusammenhang, ohne sie auf Lesefähigkeit, einen formalen Abschluss oder eine bestimmte Profession zu reduzieren.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Literacy`: ist die Fähigkeit, schriftliche Informationen zu verstehen und auszudrücken.
- `Profession`: ist ein gesellschaftlich abgegrenztes qualifiziertes Tätigkeitsfeld.

##### Verwandte Begriffe

- Literacy
- Profession
- Occupation
- Social Mobility

##### Referenzen

- PB-002
- PB-003

#### Literacy

##### Definition

`Literacy` ist die Fähigkeit einer Person, schriftlich dargestellte Informationen in einer Language zu verstehen und sich in dieser schriftlich verständlich auszudrücken.

##### Zweck

Der Begriff bezeichnet schriftsprachliche Befähigung und grenzt sie von umfassender Education, fachlicher Qualifikation und bloßer Kenntnis einer Language ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Education`: umfasst weitergehenden Erwerb von Wissen, Fähigkeiten und Urteilsvermögen.
- `Language`: ist ein gemeinsames System sprachlicher Verständigung.
- `Profession`: bezeichnet ein qualifiziertes Tätigkeitsfeld.

##### Verwandte Begriffe

- Education
- Language
- Profession
- Social Mobility

##### Referenzen

- PB-002
- PB-003

#### Wealth

##### Definition

`Wealth` ist der zu einem bestimmten Zeitpunkt einer Person, einem Household oder einer Gruppe zugeordnete Bestand wirtschaftlich nutzbarer Werte abzüglich der ihr zugeordneten Verpflichtungen.

##### Zweck

Der Begriff bezeichnet eine Bestandsgröße wirtschaftlicher Verfügungsmöglichkeiten und trennt sie von zeitbezogenen Zuflüssen und gesellschaftlicher Stellung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Income`: ist ein wirtschaftlicher Zufluss innerhalb eines Zeitraums.
- `Social Class`: bezeichnet eine gesellschaftliche Stellung und nicht einen Wertbestand.
- `Political Capital`: bezeichnet politisch mobilisierbare Handlungsmacht.

##### Verwandte Begriffe

- Income
- Household
- Social Class
- Social Mobility

##### Referenzen

- PB-002
- PB-003

#### Income

##### Definition

`Income` ist die Gesamtheit wirtschaftlicher Werte, die einer Person, einem Household oder einer Gruppe innerhalb eines bestimmten Zeitraums zufließen.

##### Zweck

Der Begriff bezeichnet eine zeitraumbezogene Zuflussgröße unabhängig vom bereits vorhandenen Wealth oder der gesellschaftlichen Stellung der Empfänger.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Wealth`: ist ein zu einem Zeitpunkt bestehender Wertbestand.
- `Occupation`: ist eine tatsächlich ausgeübte Tätigkeit und nicht deren möglicher Ertrag.
- `Social Class`: bezeichnet die Stellung in der gesellschaftlichen Ordnung.

##### Verwandte Begriffe

- Wealth
- Household
- Occupation
- Profession
- Social Class

##### Referenzen

- PB-002
- PB-003

### 6.3 Kultur

#### Culture

##### Definition

Eine `Culture` ist ein von einer Gruppe getragener und weitergegebener Zusammenhang gemeinsamer Bedeutungen, Werte, Normen, Ausdrucksformen und sozialer Praktiken.

##### Zweck

Der Begriff bezeichnet einen erlernten gesellschaftlichen Orientierungszusammenhang, ohne ihn mit Religion, Language oder individuellem Zugehörigkeitsverständnis gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Religion`: ordnet Überzeugungen und Praktiken in Bezug auf Heiliges, Transzendentes oder letzte Sinnfragen.
- `Language`: ist ein gemeinsames System sprachlicher Verständigung.
- `Identity`: ist das Verständnis eigener Zugehörigkeit und Abgrenzung.
- `Nation`: ist eine vorgestellte politische und gesellschaftliche Gemeinschaft.

##### Verwandte Begriffe

- Religion
- Language
- Identity
- Population Group
- Assimilation
- Integration

##### Referenzen

- PB-002
- PB-003

#### Religion

##### Definition

Eine `Religion` ist ein geordneter Zusammenhang geteilter Überzeugungen, Deutungen, Normen und Praktiken, die sich auf Heiliges, Transzendentes oder letzte Sinnfragen beziehen.

##### Zweck

Der Begriff bezeichnet religiöse Zugehörigkeits- und Deutungsordnungen, ohne sie mit der gesamten Culture, einer Institution oder politischer Ideology gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Culture`: umfasst einen breiteren Zusammenhang geteilter Bedeutungen und Praktiken.
- `Ideology`: ist ein zusammenhängendes Modell politischer Ordnung und gesellschaftlicher Entwicklung.
- `Institution`: ist eine dauerhaft geordnete Einrichtung mit festgelegten Aufgaben.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit.

##### Verwandte Begriffe

- Culture
- Identity
- Population Group
- Institution
- Ideology

##### Referenzen

- PB-002
- PB-003

#### Language

##### Definition

Eine `Language` ist ein gemeinsames, regelhaftes System gesprochener, geschriebener oder gebärdeter Zeichen, durch das Personen Bedeutungen ausdrücken und miteinander verständigen.

##### Zweck

Der Begriff bezeichnet ein Mittel sprachlicher Verständigung unabhängig von Literacy, kultureller Zugehörigkeit oder persönlicher Identity.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Literacy`: bezeichnet schriftsprachliche Befähigung in einer Language.
- `Culture`: ist ein umfassender Zusammenhang gemeinsamer Bedeutungen und Praktiken.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit.

##### Verwandte Begriffe

- Literacy
- Culture
- Identity
- Population Group
- Assimilation
- Integration

##### Referenzen

- PB-002
- PB-003

#### Identity

##### Definition

Eine `Identity` ist das Verständnis einer Person oder Gruppe davon, welchen sozialen, kulturellen, politischen oder sonstigen Gemeinschaften sie sich zugehörig sieht und wodurch sie sich von anderen unterscheidet.

##### Zweck

Der Begriff bezeichnet wahrgenommene Zugehörigkeit und Abgrenzung, ohne daraus Culture, Religion, Language, Citizenship oder politische Haltung abzuleiten.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Culture`: ist ein geteilter Zusammenhang von Bedeutungen und Praktiken.
- `Religion`: ist eine religiöse Deutungs- und Praxisordnung.
- `Language`: ist ein System sprachlicher Verständigung.
- `Citizen`: bezeichnet eine rechtliche Mitgliedschaft in einem State.
- `Political Support`: ist Zustimmung zu einem politischen Akteur, Ziel oder Vorhaben.

##### Verwandte Begriffe

- Culture
- Religion
- Language
- Citizen
- Population Group
- Assimilation
- Integration

##### Referenzen

- PB-002
- PB-003

### 6.4 Gesellschaftliche Dynamik

#### Loyalty

##### Definition

`Loyalty` ist die dauerhafte Bindungsbereitschaft einer Person oder Gruppe gegenüber einem politischen oder gesellschaftlichen Bezugsobjekt, die auch bei einzelnen Meinungsunterschieden fortbestehen kann.

##### Zweck

Der Begriff bezeichnet beständige Verbundenheit und trennt sie von gegenstandsbezogener politischer Zustimmung, allgemeiner Legitimacy und persönlicher Identity.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Support`: ist Zustimmung zu einem bestimmten politischen Akteur, Ziel oder Vorhaben.
- `Legitimacy`: ist die anerkannte Rechtmäßigkeit politischer Ordnung oder Herrschaft.
- `Identity`: ist das Verständnis eigener Zugehörigkeit und Abgrenzung.

##### Verwandte Begriffe

- Political Support
- Legitimacy
- Identity
- Radicalization

##### Referenzen

- PB-002
- PB-003

#### Political Support

##### Definition

`Political Support` ist die zustimmende Haltung einer Person oder Gruppe gegenüber einem bestimmten politischen Akteur, Ziel, Vorhaben oder einer politischen Ordnung.

##### Zweck

Der Begriff bezeichnet gegenstandsbezogene politische Zustimmung unabhängig von dauerhafter Loyalty, institutioneller Legitimacy oder organisatorischer Mitgliedschaft.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Loyalty`: ist eine fortdauernde Bindungsbereitschaft gegenüber einem Bezugsobjekt.
- `Legitimacy`: bezeichnet anerkannte Rechtmäßigkeit.
- `Political Party`: ist ein organisierter politischer Akteur.
- `Interest Group`: vertritt dauerhaft gemeinsame politische Interessen.

##### Verwandte Begriffe

- Loyalty
- Legitimacy
- Political Party
- Interest Group
- Radicalization

##### Referenzen

- PB-002
- PB-003

#### Radicalization

##### Definition

`Radicalization` ist eine gesellschaftliche Entwicklung, in der Personen oder Gruppen zunehmend grundlegende und kompromissunwillige Veränderungen einer bestehenden politischen oder gesellschaftlichen Ordnung befürworten.

##### Zweck

Der Begriff bezeichnet die Veränderung politischer oder gesellschaftlicher Haltung hin zu fundamentaler Ordnungsablehnung, ohne eine bestimmte Ideology, Organisation oder Handlungsform vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Political Support`: bezeichnet Zustimmung und nicht die Richtung oder Intensivierung einer Haltungsentwicklung.
- `Opposition`: ist die Gesamtheit politischer Akteure, die der gegenwärtigen politischen Führung entgegenstehen.
- `Ideology`: ist ein zusammenhängendes Modell politischer Ordnung und gesellschaftlicher Entwicklung.

##### Verwandte Begriffe

- Political Support
- Loyalty
- Opposition
- Ideology
- Social Mobility

##### Referenzen

- PB-002
- PB-003

#### Social Mobility

##### Definition

`Social Mobility` ist die Veränderung der gesellschaftlichen Stellung einer Person, eines Household oder einer Gruppe innerhalb einer gesellschaftlichen Ordnung oder zwischen aufeinanderfolgenden Generationen.

##### Zweck

Der Begriff bezeichnet Positionswechsel in der sozialen Struktur unabhängig davon, ob sie mit Veränderungen von Profession, Occupation, Education, Income oder Wealth einhergehen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Migration`: ist die dauerhafte Verlagerung des gewöhnlichen Aufenthaltsortes.
- `Social Class`: ist eine Kategorie gesellschaftlicher Stellung.
- `Income`: bezeichnet wirtschaftliche Zuflüsse in einem Zeitraum.
- `Wealth`: bezeichnet einen wirtschaftlichen Wertbestand.

##### Verwandte Begriffe

- Social Class
- Education
- Profession
- Occupation
- Income
- Wealth

##### Referenzen

- PB-002
- PB-003

### 6.5 Bevölkerungsentwicklung

#### Birth Rate

##### Definition

Eine `Birth Rate` ist die Anzahl der Lebendgeburten innerhalb einer Population während eines bestimmten Zeitraums im Verhältnis zu einer festgelegten Bezugsgröße dieser Population.

##### Zweck

Der Begriff bezeichnet die relative Häufigkeit von Geburten und ermöglicht ihre Vergleichbarkeit über unterschiedlich große Populationen und Zeiträume hinweg.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Population`: ist der Personenbestand und keine Veränderungsrate.
- `Death Rate`: bezeichnet die relative Häufigkeit von Todesfällen.
- `Immigration`: verändert eine Population durch Zuwanderung statt durch Geburten.

##### Verwandte Begriffe

- Population
- Death Rate
- Migration
- Immigration
- Emigration

##### Referenzen

- PB-002
- PB-003

#### Death Rate

##### Definition

Eine `Death Rate` ist die Anzahl der Todesfälle innerhalb einer Population während eines bestimmten Zeitraums im Verhältnis zu einer festgelegten Bezugsgröße dieser Population.

##### Zweck

Der Begriff bezeichnet die relative Häufigkeit von Todesfällen und ermöglicht ihre Vergleichbarkeit über unterschiedlich große Populationen und Zeiträume hinweg.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Population`: ist der Personenbestand und keine Veränderungsrate.
- `Birth Rate`: bezeichnet die relative Häufigkeit von Lebendgeburten.
- `Emigration`: verändert eine Population durch Abwanderung statt durch Todesfälle.

##### Verwandte Begriffe

- Population
- Birth Rate
- Migration
- Immigration
- Emigration

##### Referenzen

- PB-002
- PB-003

#### Migration

##### Definition

`Migration` ist die auf Dauer ausgerichtete Verlagerung des gewöhnlichen Aufenthaltsortes einer Person oder Gruppe von einem Herkunftsgebiet in ein anderes Gebiet.

##### Zweck

Der Begriff bezeichnet den allgemeinen demographischen Ortswechsel, ohne die Perspektive des Herkunfts- oder Zielgebietes festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Immigration`: betrachtet Migration aus der Perspektive des Zielgebietes.
- `Emigration`: betrachtet Migration aus der Perspektive des Herkunftsgebietes.
- `Social Mobility`: ist eine Veränderung gesellschaftlicher Stellung.
- `Assimilation`: ist die Aufgabe prägender kultureller Unterscheidungsmerkmale zugunsten einer anderen Culture.

##### Verwandte Begriffe

- Population
- Resident
- Immigration
- Emigration
- Assimilation
- Integration

##### Referenzen

- PB-002
- PB-003

#### Immigration

##### Definition

`Immigration` ist Migration aus der Perspektive des Zielgebietes, in dem Personen oder Gruppen ihren gewöhnlichen Aufenthalt neu und auf Dauer begründen.

##### Zweck

Der Begriff bezeichnet ausschließlich die auf ein Zielgebiet bezogene Zuwanderung und grenzt sie vom allgemeinen Ortswechsel und seiner Herkunftsperspektive ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Migration`: ist der perspektivisch neutrale Oberbegriff.
- `Emigration`: betrachtet denselben Ortswechsel aus der Perspektive des Herkunftsgebietes.
- `Integration`: bezeichnet gesellschaftliche Einbindung bei fortbestehenden Unterschieden.

##### Verwandte Begriffe

- Migration
- Emigration
- Resident
- Population
- Integration
- Assimilation

##### Referenzen

- PB-002
- PB-003

#### Emigration

##### Definition

`Emigration` ist Migration aus der Perspektive des Herkunftsgebietes, aus dem Personen oder Gruppen ihren gewöhnlichen Aufenthalt auf Dauer verlagern.

##### Zweck

Der Begriff bezeichnet ausschließlich die auf ein Herkunftsgebiet bezogene Abwanderung und grenzt sie vom allgemeinen Ortswechsel und seiner Zielperspektive ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Migration`: ist der perspektivisch neutrale Oberbegriff.
- `Immigration`: betrachtet denselben Ortswechsel aus der Perspektive des Zielgebietes.
- `Assimilation`: bezeichnet kulturelle Angleichung und keinen Ortswechsel.

##### Verwandte Begriffe

- Migration
- Immigration
- Resident
- Population
- Integration
- Assimilation

##### Referenzen

- PB-002
- PB-003

#### Assimilation

##### Definition

`Assimilation` ist eine auf Dauer wirkende kulturelle Veränderung, durch die eine Person oder Gruppe prägende Unterscheidungsmerkmale ihrer bisherigen Culture zugunsten einer anderen Culture weitgehend aufgibt.

##### Zweck

Der Begriff bezeichnet kulturelle Angleichung durch den Verlust wesentlicher bisheriger Unterscheidungsmerkmale und grenzt sie von gesellschaftlicher Einbindung bei fortbestehenden Unterschieden ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Integration`: ermöglicht gesellschaftliche Einbindung bei fortbestehenden kulturellen oder sozialen Unterschieden.
- `Migration`: bezeichnet die Verlagerung des gewöhnlichen Aufenthaltsortes.
- `Identity`: bezeichnet das Verständnis eigener Zugehörigkeit und Abgrenzung.

##### Verwandte Begriffe

- Integration
- Culture
- Language
- Identity
- Migration
- Population Group

##### Referenzen

- PB-002
- PB-003

#### Integration

##### Definition

`Integration` ist ein wechselseitiger gesellschaftlicher Prozess, durch den Personen oder Gruppen gleichberechtigten Zugang zu sozialen Zusammenhängen und gemeinsame Teilhabe erlangen, während kulturelle oder soziale Unterschiede fortbestehen können.

##### Zweck

Der Begriff bezeichnet gesellschaftliche Einbindung ohne die Aufgabe prägender kultureller Unterscheidungsmerkmale vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Assimilation`: setzt die weitgehende Aufgabe prägender Merkmale der bisherigen Culture zugunsten einer anderen voraus.
- `Immigration`: bezeichnet die auf ein Zielgebiet bezogene Migration.
- `Political Support`: bezeichnet Zustimmung zu einem politischen Bezugsobjekt.

##### Verwandte Begriffe

- Assimilation
- Culture
- Language
- Identity
- Migration
- Immigration
- Population Group

##### Referenzen

- PB-002
- PB-003

## Kapitel 7 – Wirtschaft und Produktion

Wirtschaftliche Begriffe bilden eine zusammenhängende fachliche Domäne. Wirtschaftliche Prozesse entstehen aus dem Zusammenwirken von Akteuren, ihren Aktivitäten und ihren Beziehungen über Güter, Ressourcen, Märkte, Handel, Finanzen und Produktion.

Die Begriffsgruppen trennen wirtschaftliche Akteure, Aktivitäten und Gegenstände, ohne ihre fachlichen Beziehungen aufzuheben.

Dieses Kapitel definiert die kanonische Terminologie dieser Domäne. Gameplayregeln, Systemabläufe, Werte und technische Implementierungen verbleiben in den zuständigen Game-Design-, Balancing- und Technikdokumenten.

### 7.1 Wirtschaftliche Akteure

#### Economic Actor

##### Definition

Ein `Economic Actor` ist eine Person, Gruppe, Organisation oder ein State, die beziehungsweise der eigenständig wirtschaftliche Entscheidungen trifft, wirtschaftliche Aktivitäten ausübt oder wirtschaftliche Beziehungen eingeht.

##### Zweck

Der Begriff bezeichnet den allgemeinen Träger wirtschaftlichen Handelns, ohne eine bestimmte Rolle, Rechtsform oder politische Stellung vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Producer`: ist ein Economic Actor in der Rolle der Herstellung oder Bereitstellung von Goods.
- `Consumer`: ist ein Economic Actor in der Rolle der Nutzung oder des Verbrauchs von Goods.
- `State`: ist eine politische und rechtliche Ordnung, die als Economic Actor handeln kann.

##### Verwandte Begriffe

- Producer
- Consumer
- Employer
- Employee
- Investor
- State

##### Referenzen

- PB-002
- PB-003

#### Producer

##### Definition

Ein `Producer` ist ein Economic Actor, der Goods durch Production hervorbringt, bearbeitet oder zur wirtschaftlichen Nutzung bereitstellt.

##### Zweck

Der Begriff bezeichnet die produktive Rolle eines Economic Actor unabhängig von Art, Umfang oder Organisation der Production.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der Oberbegriff für Träger wirtschaftlichen Handelns.
- `Production`: ist die wirtschaftliche Aktivität und nicht ihr Akteur.
- `Production Facility`: ist eine räumlich und organisatorisch abgegrenzte Einrichtung der Production.

##### Verwandte Begriffe

- Economic Actor
- Production
- Good
- Production Facility
- Consumer

##### Referenzen

- PB-002
- PB-003

#### Consumer

##### Definition

Ein `Consumer` ist ein Economic Actor, der Goods zur Befriedigung eigener oder zugeordneter Bedürfnisse nutzt oder verbraucht.

##### Zweck

Der Begriff bezeichnet die nachfragende und nutzende Rolle eines Economic Actor, ohne eine bestimmte Art des Erwerbs oder der Verwendung vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der Oberbegriff für Träger wirtschaftlichen Handelns.
- `Consumption`: ist die wirtschaftliche Aktivität der Nutzung oder des Verbrauchs.
- `Demand`: ist die auf einen möglichen Erwerb gerichtete Bereitschaft und Fähigkeit.

##### Verwandte Begriffe

- Economic Actor
- Consumption
- Good
- Demand
- Producer

##### Referenzen

- PB-002
- PB-003

#### Employer

##### Definition

Ein `Employer` ist ein Economic Actor, der im Rahmen von Employment Arbeitsleistung anderer Economic Actors in Anspruch nimmt und dafür eine vereinbarte Gegenleistung schuldet.

##### Zweck

Der Begriff bezeichnet die arbeitsnachfragende Seite einer Employment-Beziehung unabhängig von ihrer organisatorischen oder rechtlichen Form.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Employee`: erbringt die vereinbarte Arbeitsleistung.
- `Producer`: bezeichnet eine produktive Rolle und setzt keine Employment-Beziehung voraus.

##### Verwandte Begriffe

- Employee
- Employment
- Economic Actor
- Production

##### Referenzen

- PB-002
- PB-003

#### Employee

##### Definition

Ein `Employee` ist ein Economic Actor, der einem Employer im Rahmen von Employment vereinbarte Arbeitsleistung gegen eine geschuldete Gegenleistung erbringt.

##### Zweck

Der Begriff bezeichnet die arbeitserbringende Seite einer Employment-Beziehung, ohne Profession, Occupation oder gesellschaftliche Stellung festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Employer`: nimmt die vereinbarte Arbeitsleistung in Anspruch.
- `Occupation`: ist eine regelmäßig ausgeübte Tätigkeit und nicht die Stellung in einer Employment-Beziehung.
- `Profession`: ist ein qualifiziertes Tätigkeitsfeld.

##### Verwandte Begriffe

- Employer
- Employment
- Economic Actor
- Occupation
- Profession
- Income

##### Referenzen

- PB-002
- PB-003

#### Investor

##### Definition

Ein `Investor` ist ein Economic Actor, der wirtschaftliche Werte für Investment bereitstellt und damit eine künftige wirtschaftliche Wirkung oder einen wirtschaftlichen Ertrag anstrebt.

##### Zweck

Der Begriff bezeichnet den Träger eines Investment, ohne dessen Gegenstand, Finanzierung oder Ergebnis festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Investment`: ist die wirtschaftliche Aktivität der zielgerichteten Bereitstellung von Werten.
- `Credit`: ist die zeitweilige Überlassung von Verfügungsmacht mit Rückzahlungsanspruch.

##### Verwandte Begriffe

- Economic Actor
- Investment
- Credit
- Production Facility

##### Referenzen

- PB-002
- PB-003

#### State

##### Definition

Der `State` ist das in Kapitel 4.1 definierte politische Gemeinwesen; innerhalb der wirtschaftlichen Domäne handelt er als Economic Actor, soweit er wirtschaftliche Entscheidungen trifft, Aktivitäten ausübt oder Beziehungen eingeht.

##### Zweck

Der Eintrag ordnet den bereits definierten State der wirtschaftlichen Domäne zu, ohne seine politische Definition zu ersetzen oder einen eigenständigen wirtschaftlichen Staatsbegriff einzuführen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Economic Actor`: ist der allgemeine Oberbegriff und keine politische Entität.
- `Treasury`: bezeichnet die einem State zugeordneten verfügbaren finanziellen Mittel.
- `National Market`: ist ein auf den Wirtschaftsraum eines Country bezogener Market.

##### Verwandte Begriffe

- Economic Actor
- Treasury
- Tax
- Subsidy
- Budget
- National Market

##### Referenzen

- PB-002
- PB-003

### 7.2 Wirtschaftliche Aktivitäten

#### Production

##### Definition

`Production` ist die wirtschaftliche Aktivität, durch die ein Producer Inputs einsetzt oder verändert, um Outputs hervorzubringen oder bereitzustellen.

##### Zweck

Der Begriff bezeichnet den Vorgang wirtschaftlicher Hervorbringung und grenzt ihn von seinem Akteur, seiner Einrichtung und der Folge verbundener Produktionsstufen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Producer`: ist der handelnde Economic Actor.
- `Production Facility`: ist eine Einrichtung, in der Production stattfinden kann.
- `Production Chain`: ist eine fachliche Folge voneinander abhängiger Produktionsstufen.

##### Verwandte Begriffe

- Producer
- Input
- Output
- Production Facility
- Production Chain
- Capacity
- Efficiency

##### Referenzen

- PB-002
- PB-003

#### Consumption

##### Definition

`Consumption` ist die wirtschaftliche Aktivität, durch die ein Consumer ein Good zur Befriedigung eines Bedürfnisses nutzt oder verbraucht.

##### Zweck

Der Begriff bezeichnet die bedürfnisbezogene Verwendung von Goods und trennt sie von deren Erwerb, Austausch oder produktivem Einsatz als Input.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Consumer`: ist der handelnde Economic Actor.
- `Exchange`: ist die wechselseitige Übertragung wirtschaftlicher Werte.
- `Input`: wird für eine wirtschaftliche Aktivität eingesetzt.

##### Verwandte Begriffe

- Consumer
- Good
- Demand
- Exchange

##### Referenzen

- PB-002
- PB-003

#### Distribution

##### Definition

`Distribution` ist die wirtschaftliche Aktivität, durch die Goods oder wirtschaftliche Werte zwischen Akteuren, Verwendungszwecken oder Orten zugeordnet und weitergegeben werden.

##### Zweck

Der Begriff bezeichnet die Verteilung und Weiterleitung wirtschaftlicher Gegenstände, ohne einen Eigentumswechsel, einen Market oder grenzüberschreitenden Trade vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Exchange`: beruht auf wechselseitiger Übertragung.
- `Trade`: ist auf Austausch gerichtetes wirtschaftliches Handeln zwischen Akteuren.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

##### Verwandte Begriffe

- Good
- Exchange
- Trade
- Market
- Supply

##### Referenzen

- PB-002
- PB-003

#### Exchange

##### Definition

`Exchange` ist die wirtschaftliche Aktivität, bei der Economic Actors einander wirtschaftliche Werte wechselseitig übertragen.

##### Zweck

Der Begriff bezeichnet den einzelnen wechselseitigen Übertragungsvorgang unabhängig davon, ob er über einen Market, als Trade oder unter Verwendung von Currency erfolgt.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trade`: bezeichnet auf Exchange gerichtetes wirtschaftliches Handeln und die daraus entstehenden Handelsbeziehungen.
- `Distribution`: setzt keine wechselseitige Übertragung voraus.
- `Market`: ist der Zusammenhang, in dem Supply und Demand aufeinandertreffen.

##### Verwandte Begriffe

- Economic Actor
- Trade
- Market
- Currency
- Good

##### Referenzen

- PB-002
- PB-003

#### Investment

##### Definition

`Investment` ist die wirtschaftliche Aktivität, bei der wirtschaftliche Werte gegenwärtig für den Aufbau, Erhalt oder die Verbesserung künftiger wirtschaftlicher Möglichkeiten bereitgestellt werden.

##### Zweck

Der Begriff bezeichnet eine zukunftsgerichtete Verwendung wirtschaftlicher Werte unabhängig von Gegenstand, Finanzierung und tatsächlich eintretendem Ertrag.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Investor`: ist der handelnde Economic Actor.
- `Credit`: überlässt Verfügungsmacht nur zeitweilig und begründet einen Rückzahlungsanspruch.
- `Subsidy`: ist eine staatliche wirtschaftliche Zuwendung für einen bestimmten Zweck.

##### Verwandte Begriffe

- Investor
- Credit
- Production Facility
- Capacity
- Efficiency

##### Referenzen

- PB-002
- PB-003

#### Employment

##### Definition

`Employment` ist eine wirtschaftliche Beziehung, in der ein Employee einem Employer vereinbarte Arbeitsleistung gegen eine geschuldete Gegenleistung erbringt.

##### Zweck

Der Begriff bezeichnet das Verhältnis zwischen arbeitserbringendem und arbeitsnachfragendem Economic Actor, ohne konkrete Tätigkeit, Qualifikation oder Vergütungsform festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Occupation`: bezeichnet eine regelmäßig ausgeübte Tätigkeit.
- `Profession`: bezeichnet ein qualifiziertes Tätigkeitsfeld.
- `Production`: ist wirtschaftliche Hervorbringung und setzt Employment nicht voraus.

##### Verwandte Begriffe

- Employer
- Employee
- Economic Actor
- Occupation
- Profession
- Income

##### Referenzen

- PB-002
- PB-003

### 7.3 Güter und Ressourcen

#### Good

##### Definition

Ein `Good` ist ein materieller oder immaterieller Gegenstand wirtschaftlicher Verfügung, der ein Bedürfnis befriedigen, in wirtschaftlichen Aktivitäten eingesetzt oder zwischen Economic Actors übertragen werden kann.

##### Zweck

Der Begriff bezeichnet den allgemeinen wirtschaftlichen Gegenstand von Production, Consumption, Distribution und Exchange, ohne Herkunft oder Produktionsstufe festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Resource`: ist ein verfügbarer oder erschließbarer Bestand mit möglicher wirtschaftlicher Verwendbarkeit.
- `Raw Material`: ist ein unmittelbar gewonnener und noch nicht weiterverarbeiteter Input.
- `Intermediate Good`: ist für weitere Production bestimmt.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.

##### Verwandte Begriffe

- Resource
- Raw Material
- Intermediate Good
- Finished Good
- Production
- Consumption

##### Referenzen

- PB-002
- PB-003

#### Resource

##### Definition

Eine `Resource` ist ein verfügbarer oder erschließbarer materieller oder immaterieller Bestand, der für wirtschaftliche Aktivitäten genutzt werden kann.

##### Zweck

Der Begriff bezeichnet wirtschaftlich verwendbares Potenzial, ohne vorauszusetzen, dass es bereits gewonnen, verarbeitet, als Good bereitgestellt oder tatsächlich eingesetzt wurde.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Good`: ist ein Gegenstand wirtschaftlicher Verfügung.
- `Raw Material`: ist ein gewonnener, noch nicht weiterverarbeiteter Input.
- `Strategic Resource`: besitzt besondere Bedeutung für übergeordnete wirtschaftliche oder staatliche Handlungsfähigkeit.

##### Verwandte Begriffe

- Good
- Raw Material
- Strategic Resource
- Input
- Production

##### Referenzen

- PB-002
- PB-003

#### Raw Material

##### Definition

Ein `Raw Material` ist ein unmittelbar aus einer Resource gewonnener und noch nicht weiterverarbeiteter materieller Input für Production.

##### Zweck

Der Begriff bezeichnet die erste stoffliche Form nach der Gewinnung und grenzt sie von der zugrunde liegenden Resource sowie bereits verarbeiteten Goods ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Resource`: kann noch unerschlossen oder ungewonnen sein.
- `Intermediate Good`: ist bereits durch Production hervorgebracht und für weitere Production bestimmt.
- `Input`: ist die funktionale Rolle eines eingesetzten Gegenstands und keine Produktionsstufe.

##### Verwandte Begriffe

- Resource
- Good
- Intermediate Good
- Input
- Production

##### Referenzen

- PB-002
- PB-003

#### Intermediate Good

##### Definition

Ein `Intermediate Good` ist ein durch Production hervorgebrachtes Good, das für den Einsatz als Input in weiterer Production bestimmt ist.

##### Zweck

Der Begriff bezeichnet eine zwischen Gewinnung und vorgesehener Endverwendung liegende Produktionsstufe, ohne eine bestimmte Zahl weiterer Stufen vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Raw Material`: ist unmittelbar gewonnen und noch nicht weiterverarbeitet.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.
- `Input`: ist eine Rolle innerhalb einer Aktivität und nicht notwendig eine Güterklasse.

##### Verwandte Begriffe

- Good
- Raw Material
- Finished Good
- Input
- Output
- Production Chain

##### Referenzen

- PB-002
- PB-003

#### Finished Good

##### Definition

Ein `Finished Good` ist ein Good, dessen Production für seine vorgesehene Endverwendung abgeschlossen ist.

##### Zweck

Der Begriff bezeichnet den Abschluss der für einen bestimmten Verwendungszweck vorgesehenen Production, ohne auszuschließen, dass das Good in einem anderen Zusammenhang als Input dienen kann.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Intermediate Good`: ist für weitere Production bestimmt.
- `Output`: ist jedes Ergebnis einer wirtschaftlichen Aktivität unabhängig von seiner Produktionsstufe.

##### Verwandte Begriffe

- Good
- Intermediate Good
- Output
- Consumption
- Production Chain

##### Referenzen

- PB-002
- PB-003

#### Strategic Resource

##### Definition

Eine `Strategic Resource` ist eine Resource, deren Verfügbarkeit besondere Bedeutung für die übergeordnete wirtschaftliche oder staatliche Handlungsfähigkeit besitzt.

##### Zweck

Der Begriff kennzeichnet die besondere Bedeutung einer Resource, ohne eine konkrete Verwendung, Knappheit oder politische Maßnahme festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Resource`: ist der allgemeine Oberbegriff ohne notwendige strategische Bedeutung.
- `Raw Material`: bezeichnet eine gewonnene und unverarbeitete Form unabhängig von ihrer Bedeutung.

##### Verwandte Begriffe

- Resource
- Raw Material
- Supply
- Trade
- Embargo

##### Referenzen

- PB-002
- PB-003

### 7.4 Märkte

#### Market

##### Definition

Ein `Market` ist ein wirtschaftlicher Beziehungszusammenhang, in dem Supply und Demand für bestimmte Goods aufeinandertreffen und Exchange-Bedingungen entstehen.

##### Zweck

Der Begriff bezeichnet den Ordnungs- und Beziehungsrahmen wirtschaftlichen Austauschs, ohne einen bestimmten Ort, räumlichen Umfang oder einzelne Transaktion vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trade`: ist das auf Exchange gerichtete wirtschaftliche Handeln zwischen Akteuren.
- `Exchange`: ist ein wechselseitiger Übertragungsvorgang.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

##### Verwandte Begriffe

- Supply
- Demand
- Price
- Competition
- Exchange
- Trade

##### Referenzen

- PB-002
- PB-003

#### Local Market

##### Definition

Ein `Local Market` ist ein Market, dessen maßgeblicher wirtschaftlicher Beziehungszusammenhang auf ein örtlich begrenztes Gebiet bezogen ist.

##### Zweck

Der Begriff unterscheidet räumlich begrenzte Marktbeziehungen von Markets mit landesweitem oder grenzüberschreitendem Bezugsraum.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `National Market`: bezieht sich auf den Wirtschaftsraum eines Country.
- `International Market`: verbindet Economic Actors über Grenzen von Countries hinweg.

##### Verwandte Begriffe

- Market
- National Market
- International Market
- Supply
- Demand

##### Referenzen

- PB-002
- PB-003

#### National Market

##### Definition

Ein `National Market` ist ein Market, dessen maßgeblicher wirtschaftlicher Beziehungszusammenhang auf den Wirtschaftsraum eines Country bezogen ist.

##### Zweck

Der Begriff bezeichnet landesweit zusammenhängende Marktbeziehungen, ohne vollständige Abgeschlossenheit gegenüber lokalen oder internationalen Markets vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Local Market`: ist auf ein örtlich begrenztes Gebiet bezogen.
- `International Market`: verbindet Economic Actors über Grenzen von Countries hinweg.
- `State`: ist ein politisches Gemeinwesen und kein Market.

##### Verwandte Begriffe

- Market
- Local Market
- International Market
- Country
- Import
- Export

##### Referenzen

- PB-002
- PB-003

#### International Market

##### Definition

Ein `International Market` ist ein Market, dessen wirtschaftlicher Beziehungszusammenhang Economic Actors über die Grenzen von Countries hinweg verbindet.

##### Zweck

Der Begriff bezeichnet grenzüberschreitende Marktbeziehungen unabhängig von ihrer räumlichen Reichweite, institutionellen Ordnung oder den beteiligten Goods.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `National Market`: ist auf den Wirtschaftsraum eines Country bezogen.
- `Trade`: ist wirtschaftliches Handeln und nicht der Marktbeziehungszusammenhang.

##### Verwandte Begriffe

- Market
- National Market
- Trade
- Import
- Export
- Tariff
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Supply

##### Definition

`Supply` ist die Gesamtheit der Mengen von Goods, die Economic Actors unter bestimmten Bedingungen in einem Market zur Übertragung bereitstellen.

##### Zweck

Der Begriff bezeichnet die Angebotsseite eines Market und trennt die Bereitstellungsbereitschaft von vorhandenen Beständen, Production und tatsächlich erfolgtem Exchange.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Demand`: bezeichnet die auf Erwerb gerichtete Bereitschaft und Fähigkeit.
- `Production`: bringt Outputs hervor, stellt sie aber nicht notwendig in einem Market bereit.
- `Output`: ist das Ergebnis einer wirtschaftlichen Aktivität.

##### Verwandte Begriffe

- Market
- Demand
- Price
- Producer
- Good
- Competition

##### Referenzen

- PB-002
- PB-003

#### Demand

##### Definition

`Demand` ist die Gesamtheit der Mengen von Goods, die Economic Actors unter bestimmten Bedingungen in einem Market zu erwerben bereit und fähig sind.

##### Zweck

Der Begriff bezeichnet die Nachfrageseite eines Market und trennt Erwerbsbereitschaft und Erwerbsfähigkeit von Bedürfnis, Consumption und tatsächlich erfolgtem Exchange.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Supply`: bezeichnet zur Übertragung bereitgestellte Goods.
- `Consumption`: ist die Nutzung oder der Verbrauch eines Good.
- `Consumer`: ist ein Economic Actor in einer nutzenden oder verbrauchenden Rolle.

##### Verwandte Begriffe

- Market
- Supply
- Price
- Consumer
- Good
- Competition

##### Referenzen

- PB-002
- PB-003

#### Price

##### Definition

Ein `Price` ist der in einer wirtschaftlichen Beziehung einem Good oder einer Leistung zugeordnete Gegenwert, zu dem eine Übertragung angeboten, nachgefragt oder vollzogen wird.

##### Zweck

Der Begriff bezeichnet den wirtschaftlichen Gegenwert einer möglichen oder tatsächlichen Übertragung, ohne seine Bildung, Einheit oder Angemessenheit festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Currency`: ist ein allgemein anerkanntes Mittel zur Angabe und Übertragung wirtschaftlicher Werte.
- `Tax`: ist eine verpflichtende Abgabe an einen State.

##### Verwandte Begriffe

- Market
- Supply
- Demand
- Currency
- Exchange
- Inflation

##### Referenzen

- PB-002
- PB-003

#### Competition

##### Definition

`Competition` ist eine wirtschaftliche Beziehung, in der mehrere Economic Actors unabhängig voneinander um begrenzte Möglichkeiten des Angebots, Erwerbs oder wirtschaftlichen Erfolgs streben.

##### Zweck

Der Begriff bezeichnet konkurrierendes wirtschaftliches Handeln, ohne eine bestimmte Marktstruktur, Strategie oder Wirkung vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Market`: ist der Beziehungszusammenhang, in dem Competition auftreten kann.
- `Exchange`: ist eine wechselseitige Übertragung und kein Konkurrenzverhältnis.

##### Verwandte Begriffe

- Economic Actor
- Market
- Supply
- Demand
- Price

##### Referenzen

- PB-002
- PB-003

### 7.5 Handel

#### Trade

##### Definition

`Trade` ist das auf Exchange von Goods oder wirtschaftlichen Werten gerichtete wirtschaftliche Handeln zwischen Economic Actors und die daraus entstehende Handelsbeziehung.

##### Zweck

Der Begriff bezeichnet wirtschaftliches Austauschhandeln unabhängig davon, ob es innerhalb eines Gebietes, über Grenzen hinweg, über einen Market oder entlang einer Trade Route erfolgt.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Market`: ist der Beziehungszusammenhang von Supply und Demand.
- `Exchange`: ist der einzelne wechselseitige Übertragungsvorgang.
- `Trade Route`: ist eine beständige räumliche Verbindung für Trade.

##### Verwandte Begriffe

- Exchange
- Market
- Trade Route
- Import
- Export
- Tariff
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Trade Route

##### Definition

Eine `Trade Route` ist eine beständige räumliche Verbindung zwischen Herkunfts-, Durchgangs- und Zielorten, über die Trade regelmäßig erfolgt oder erfolgen kann.

##### Zweck

Der Begriff bezeichnet den räumlichen Zusammenhang wiederkehrenden Trade und grenzt ihn vom Trade selbst sowie von einzelnen Transport- oder Austauschvorgängen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trade`: ist das wirtschaftliche Austauschhandeln.
- `Distribution`: ist die Zuordnung und Weitergabe von Goods oder Werten.
- `Import`: betrachtet grenzüberschreitenden Trade aus der Perspektive des Ziel-Country.

##### Verwandte Begriffe

- Trade
- Distribution
- Import
- Export
- Market
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Import

##### Definition

`Import` ist grenzüberschreitender Trade aus der Perspektive des Country, in dessen Wirtschaftsraum Goods oder wirtschaftliche Werte eingebracht werden.

##### Zweck

Der Begriff bezeichnet ausschließlich die Zielperspektive grenzüberschreitenden Trade und grenzt sie von dessen Herkunftsperspektive ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Export`: betrachtet denselben grenzüberschreitenden Trade aus der Perspektive des Herkunfts-Country.
- `Trade`: ist der perspektivisch allgemeine Begriff.
- `Immigration`: bezeichnet die dauerhafte Zuwanderung von Personen.

##### Verwandte Begriffe

- Trade
- Export
- National Market
- International Market
- Tariff
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Export

##### Definition

`Export` ist grenzüberschreitender Trade aus der Perspektive des Country, aus dessen Wirtschaftsraum Goods oder wirtschaftliche Werte ausgeführt werden.

##### Zweck

Der Begriff bezeichnet ausschließlich die Herkunftsperspektive grenzüberschreitenden Trade und grenzt sie von dessen Zielperspektive ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Import`: betrachtet denselben grenzüberschreitenden Trade aus der Perspektive des Ziel-Country.
- `Trade`: ist der perspektivisch allgemeine Begriff.
- `Emigration`: bezeichnet die dauerhafte Abwanderung von Personen.

##### Verwandte Begriffe

- Trade
- Import
- National Market
- International Market
- Tariff
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Tariff

##### Definition

Ein `Tariff` ist eine von einem State aufgrund grenzüberschreitenden Trade erhobene verpflichtende Abgabe auf bestimmte Goods oder wirtschaftliche Übertragungen.

##### Zweck

Der Begriff bezeichnet eine handelsbezogene Abgabe und grenzt sie von der allgemeinen Kategorie der Tax sowie von einem Verbot des Trade ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Tax`: ist der Oberbegriff für verpflichtende staatliche Abgaben.
- `Embargo`: beschränkt oder untersagt bestimmte Handelsbeziehungen.

##### Verwandte Begriffe

- Trade
- Import
- Export
- Tax
- State
- Embargo

##### Referenzen

- PB-002
- PB-003

#### Embargo

##### Definition

Ein `Embargo` ist eine von einem State angeordnete Beschränkung oder Untersagung bestimmter Handelsbeziehungen mit festgelegten Economic Actors, Countries oder für festgelegte Goods.

##### Zweck

Der Begriff bezeichnet eine staatliche Begrenzung von Trade, ohne ihre Gründe, Reichweite, Durchsetzung oder Wirkung festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Tariff`: erhebt eine Abgabe, ohne Trade notwendig zu untersagen.
- `Trade Route`: ist eine räumliche Verbindung und keine staatliche Maßnahme.

##### Verwandte Begriffe

- State
- Trade
- Import
- Export
- Tariff
- Strategic Resource

##### Referenzen

- PB-002
- PB-003

### 7.6 Finanzen

#### Currency

##### Definition

Eine `Currency` ist ein innerhalb eines wirtschaftlichen Zusammenhangs allgemein anerkanntes Mittel zur Angabe, Aufbewahrung und Übertragung wirtschaftlicher Werte.

##### Zweck

Der Begriff bezeichnet die gemeinsame wirtschaftliche Rechnungs- und Übertragungsgrundlage, ohne eine konkrete Form, Herausgabeordnung oder technische Repräsentation festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Treasury`: ist der Bestand verfügbarer finanzieller Mittel eines State.
- `Credit`: ist die zeitweilige Überlassung wirtschaftlicher Verfügungsmacht.
- `Price`: ist der einem Good oder einer Leistung zugeordnete Gegenwert.

##### Verwandte Begriffe

- Price
- Exchange
- Treasury
- Credit
- Inflation

##### Referenzen

- PB-002
- PB-003

#### Treasury

##### Definition

Ein `Treasury` ist die Gesamtheit der einem State zu einem bestimmten Zeitpunkt zur Erfüllung seiner finanziellen Verpflichtungen und Vorhaben verfügbaren finanziellen Mittel.

##### Zweck

Der Begriff bezeichnet einen staatlichen Bestand verfügbarer Mittel und trennt ihn von der zeitraumbezogenen Planung eines Budget sowie von Forderungen und Verpflichtungen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Budget`: ist eine Planung erwarteter Einnahmen und vorgesehener Ausgaben für einen Zeitraum.
- `Debt`: ist die Gesamtheit bestehender Rückzahlungsverpflichtungen.
- `Credit`: bezeichnet die Überlassungsbeziehung, nicht den Bestand verfügbarer Staatsmittel.

##### Verwandte Begriffe

- State
- Budget
- Tax
- Subsidy
- Debt
- Currency

##### Referenzen

- PB-002
- PB-003

#### Tax

##### Definition

Eine `Tax` ist eine von einem State aufgrund seiner Rechtsordnung verpflichtend erhobene wirtschaftliche Abgabe ohne Anspruch des Abgabepflichtigen auf eine unmittelbar entsprechende individuelle Gegenleistung.

##### Zweck

Der Begriff bezeichnet die allgemeine Kategorie verpflichtender staatlicher Abgaben und grenzt sie von freiwilligen Übertragungen, Credit und staatlichen Zuwendungen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Tariff`: ist eine Tax aufgrund grenzüberschreitenden Trade.
- `Credit`: begründet einen Rückzahlungsanspruch.
- `Subsidy`: ist eine staatliche Zuwendung.

##### Verwandte Begriffe

- State
- Tariff
- Treasury
- Budget
- Subsidy

##### Referenzen

- PB-002
- PB-003

#### Subsidy

##### Definition

Eine `Subsidy` ist eine von einem State gewährte wirtschaftliche Zuwendung zur Unterstützung eines festgelegten wirtschaftlichen Zwecks oder Empfängers.

##### Zweck

Der Begriff bezeichnet zweckbezogene staatliche Unterstützung, ohne ihre Form, Bedingungen, Finanzierung oder Wirkung festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Investment`: ist eine zukunftsgerichtete Bereitstellung wirtschaftlicher Werte und nicht notwendig staatlich.
- `Credit`: begründet einen Rückzahlungsanspruch.
- `Tax`: ist eine verpflichtende Abgabe an einen State.

##### Verwandte Begriffe

- State
- Treasury
- Budget
- Tax
- Investment
- Credit

##### Referenzen

- PB-002
- PB-003

#### Budget

##### Definition

Ein `Budget` ist die für einen bestimmten Zeitraum geordnete Gegenüberstellung erwarteter Einnahmen und vorgesehener Ausgaben eines Economic Actor.

##### Zweck

Der Begriff bezeichnet eine zeitraumbezogene finanzielle Planung und trennt sie von verfügbaren Beständen, tatsächlich eingetretenen Zahlungsströmen und bestehenden Verpflichtungen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Treasury`: ist der zu einem Zeitpunkt verfügbare Bestand finanzieller Mittel eines State.
- `Debt`: ist die Gesamtheit bestehender Rückzahlungsverpflichtungen.
- `Income`: bezeichnet tatsächlich zufließende wirtschaftliche Werte.

##### Verwandte Begriffe

- Economic Actor
- Treasury
- Tax
- Subsidy
- Debt
- Credit
- Income

##### Referenzen

- PB-002
- PB-003

#### Debt

##### Definition

`Debt` ist die Gesamtheit der zu einem bestimmten Zeitpunkt bestehenden Verpflichtungen eines Economic Actor, überlassene wirtschaftliche Werte nach vereinbarten Bedingungen zurückzugewähren.

##### Zweck

Der Begriff bezeichnet den Bestand von Rückzahlungsverpflichtungen aus der Perspektive des Schuldners und trennt ihn von der zugrunde liegenden Credit-Beziehung und finanzieller Planung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Credit`: ist die Beziehung der zeitweiligen Überlassung wirtschaftlicher Verfügungsmacht.
- `Budget`: ist eine Planung für einen Zeitraum.
- `Treasury`: bezeichnet verfügbare staatliche finanzielle Mittel.

##### Verwandte Begriffe

- Economic Actor
- Credit
- Budget
- Treasury
- Currency

##### Referenzen

- PB-002
- PB-003

#### Credit

##### Definition

`Credit` ist eine wirtschaftliche Beziehung, in der ein Economic Actor einem anderen wirtschaftliche Verfügungsmacht zeitweilig überlässt und einen Anspruch auf Rückgewähr nach vereinbarten Bedingungen erhält.

##### Zweck

Der Begriff bezeichnet die Überlassungs- und Rückgewährbeziehung und grenzt sie vom Bestand der daraus entstandenen Debt sowie von Investment und Subsidy ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Debt`: bezeichnet bestehende Rückzahlungsverpflichtungen aus der Perspektive des Schuldners.
- `Investment`: setzt keinen Anspruch auf Rückgewähr überlassener Werte voraus.
- `Subsidy`: ist eine staatliche Zuwendung für einen bestimmten Zweck oder Empfänger.

##### Verwandte Begriffe

- Economic Actor
- Debt
- Investor
- Investment
- Currency
- Budget

##### Referenzen

- PB-002
- PB-003

#### Inflation

##### Definition

`Inflation` ist eine über einen Zeitraum anhaltende allgemeine Erhöhung von Prices innerhalb eines Currency- und Wirtschaftsraums, durch die die wirtschaftliche Verfügungskraft derselben Currency-Einheit abnimmt.

##### Zweck

Der Begriff bezeichnet eine allgemeine Preisentwicklung und grenzt sie von einzelnen Price-Änderungen sowie von Veränderungen einzelner Goods oder Markets ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Price`: ist der Gegenwert eines bestimmten Good oder einer Leistung.
- `Currency`: ist das Mittel zur Angabe, Aufbewahrung und Übertragung wirtschaftlicher Werte.

##### Verwandte Begriffe

- Price
- Currency
- Market
- Supply
- Demand

##### Referenzen

- PB-002
- PB-003

### 7.7 Produktion

#### Production Facility

##### Definition

Eine `Production Facility` ist eine räumlich und organisatorisch abgegrenzte Einrichtung, in der ein Producer Production ausüben kann.

##### Zweck

Der Begriff bezeichnet den institutionell-räumlichen Träger von Production und trennt ihn von der Aktivität, dem handelnden Producer und der Folge von Produktionsstufen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Production`: ist die wirtschaftliche Aktivität.
- `Producer`: ist der handelnde Economic Actor.
- `Production Chain`: ist eine fachliche Folge abhängiger Produktionsstufen.

##### Verwandte Begriffe

- Producer
- Production
- Production Chain
- Input
- Output
- Capacity
- Efficiency

##### Referenzen

- PB-002
- PB-003

#### Production Chain

##### Definition

Eine `Production Chain` ist eine fachlich zusammenhängende Folge voneinander abhängiger Produktionsstufen, in der Outputs früherer Stufen als Inputs späterer Stufen dienen.

##### Zweck

Der Begriff bezeichnet die Abhängigkeit mehrerer Produktionsstufen und grenzt sie von einer einzelnen Production, einer Production Facility und der bloßen Klassifikation von Goods ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Production`: ist eine wirtschaftliche Aktivität und kann nur eine Stufe umfassen.
- `Production Facility`: ist eine räumlich und organisatorisch abgegrenzte Einrichtung.
- `Intermediate Good`: ist ein Good zwischen Produktionsstufen und nicht deren gesamte Folge.

##### Verwandte Begriffe

- Production
- Production Facility
- Raw Material
- Intermediate Good
- Finished Good
- Input
- Output

##### Referenzen

- PB-002
- PB-003

#### Input

##### Definition

Ein `Input` ist eine Resource, ein Good, eine Arbeitsleistung oder ein anderer wirtschaftlicher Wert, der in einer wirtschaftlichen Aktivität eingesetzt oder verändert wird.

##### Zweck

Der Begriff bezeichnet die funktionale Rolle eines eingesetzten wirtschaftlichen Gegenstands und trennt sie von dessen Güterklasse, Herkunft und dem Ergebnis der Aktivität.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Output`: ist das Ergebnis einer wirtschaftlichen Aktivität.
- `Raw Material`: ist eine bestimmte, unmittelbar gewonnene Güterklasse.
- `Intermediate Good`: ist ein für weitere Production bestimmtes Good.

##### Verwandte Begriffe

- Output
- Production
- Resource
- Good
- Raw Material
- Intermediate Good
- Production Chain

##### Referenzen

- PB-002
- PB-003

#### Output

##### Definition

Ein `Output` ist ein Good, eine Leistung oder ein anderer wirtschaftlicher Wert, der als Ergebnis einer wirtschaftlichen Aktivität hervorgebracht oder bereitgestellt wird.

##### Zweck

Der Begriff bezeichnet die funktionale Rolle eines wirtschaftlichen Ergebnisses und trennt sie von dessen Güterklasse, weiterer Verwendung und dem dafür eingesetzten Input.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Input`: wird in einer wirtschaftlichen Aktivität eingesetzt oder verändert.
- `Finished Good`: ist für seine vorgesehene Endverwendung bereit.
- `Intermediate Good`: ist für weitere Production bestimmt.

##### Verwandte Begriffe

- Input
- Production
- Good
- Intermediate Good
- Finished Good
- Production Chain

##### Referenzen

- PB-002
- PB-003

#### Capacity

##### Definition

`Capacity` ist der unter festgelegten Bedingungen innerhalb eines bestimmten Zeitraums erreichbare Umfang einer wirtschaftlichen Aktivität.

##### Zweck

Der Begriff bezeichnet eine Grenze des möglichen Aktivitätsumfangs und trennt sie vom tatsächlich erreichten Output sowie vom Verhältnis zwischen Einsatz und Ergebnis.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Output`: ist ein tatsächlich hervorgebrachtes oder bereitgestelltes Ergebnis.
- `Efficiency`: beschreibt das Verhältnis zwischen eingesetzten Mitteln und erreichtem Ergebnis.
- `Production Facility`: ist eine Einrichtung und keine Umfangsgrenze.

##### Verwandte Begriffe

- Production
- Production Facility
- Input
- Output
- Efficiency
- Investment

##### Referenzen

- PB-002
- PB-003

#### Efficiency

##### Definition

`Efficiency` ist das Verhältnis zwischen den für eine wirtschaftliche Aktivität eingesetzten Mitteln und dem damit erreichten Ergebnis unter festgelegten Bedingungen.

##### Zweck

Der Begriff bezeichnet die wirtschaftliche Ergiebigkeit eines Mitteleinsatzes und trennt sie vom maximal möglichen Umfang einer Aktivität und von der bloßen Menge ihres Output.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Capacity`: bezeichnet den erreichbaren Umfang einer Aktivität.
- `Output`: ist das hervorgebrachte oder bereitgestellte Ergebnis.
- `Price`: ist der wirtschaftliche Gegenwert einer Übertragung.

##### Verwandte Begriffe

- Production
- Production Facility
- Input
- Output
- Capacity
- Investment

##### Referenzen

- PB-002
- PB-003

## Kapitel 8 – Militärische Terminologie

Militärische Begriffe bezeichnen unterschiedliche Ebenen militärischer Organisation und müssen entsprechend ihrer jeweiligen fachlichen Reichweite verwendet werden. Die Gesamtorganisation, ihre Teilorganisationen und ihre konkreten Verbände bilden voneinander abgegrenzte Begriffsbereiche.

Organisation, Verbände, Kommandostrukturen, Operationen und Logistik werden bewusst getrennt, damit institutionelle Ordnung, Führung, räumlich und zeitlich begrenztes Handeln sowie materielle Unterstützung nicht miteinander vermischt werden. Militärische Konzepte beschreiben davon getrennt übergreifende Eigenschaften und Ordnungsgrundsätze.

Dieses Kapitel definiert die kanonische militärische Terminologie. Spielmechaniken, Regeln und technische Umsetzungen verbleiben in den zuständigen Dokumenten.

### 8.1 Militärische Organisation

#### Armed Forces

##### Definition

`Armed Forces` ist die Gesamtheit aller dauerhaft einer einheitlichen obersten militärischen Autorität zugeordneten militärischen Branches eines politischen Gemeinwesens.

##### Zweck

Der Begriff bezeichnet die militärische Gesamtorganisation und grenzt sie von einzelnen Branches, Armies und Military Formations ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Army`: ist die landmilitärische Branch der Armed Forces.
- `Branch`: ist ein funktional abgegrenzter Teil der Armed Forces.
- `Military Formation`: ist ein gegliederter militärischer Verband und keine militärische Gesamtorganisation.

##### Verwandte Begriffe

- Army
- Navy
- Air Force
- Branch
- Military Formation

##### Referenzen

- PB-002
- PB-003

#### Army

##### Definition

`Army` ist die für landgebundene Kriegführung zuständige Branch der Armed Forces.

##### Zweck

Der Begriff legt die landmilitärische Teilorganisation fest und verhindert eine Verwendung als Bezeichnung sämtlicher Armed Forces oder einer Military Formation.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Armed Forces`: umfassen alle militärischen Branches.
- `Military Formation`: ist der Oberbegriff für gegliederte militärische Verbände.
- `Division`: ist eine bestimmte Größen- und Führungsebene eines Verbandes.

##### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Division

##### Referenzen

- PB-002
- PB-003

#### Navy

##### Definition

`Navy` ist die für maritime Kriegführung zuständige Branch der Armed Forces.

##### Zweck

Der Begriff bezeichnet ausschließlich die maritime Teilorganisation und trennt sie von der militärischen Gesamtorganisation und einzelnen maritimen Verbänden.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Armed Forces`: bilden die militärische Gesamtorganisation.
- `Branch`: bezeichnet allgemein einen funktional abgegrenzten Teil der Armed Forces.

##### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Command

##### Referenzen

- PB-002
- PB-003

#### Air Force

##### Definition

`Air Force` ist die für Kriegführung im Luftraum zuständige Branch der Armed Forces.

##### Zweck

Der Begriff bezeichnet ausschließlich die luftmilitärische Teilorganisation und trennt sie von der militärischen Gesamtorganisation und einzelnen luftmilitärischen Verbänden.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Armed Forces`: bilden die militärische Gesamtorganisation.
- `Branch`: bezeichnet allgemein einen funktional abgegrenzten Teil der Armed Forces.

##### Verwandte Begriffe

- Armed Forces
- Branch
- Military Formation
- Command

##### Referenzen

- PB-002
- PB-003

#### Branch

##### Definition

`Branch` ist ein nach einem primären militärischen Aufgaben- oder Wirkungsbereich abgegrenzter institutioneller Teil der Armed Forces.

##### Zweck

Der Begriff bezeichnet die erste funktionale Gliederung der militärischen Gesamtorganisation, ohne eine bestimmte innere Verbandsstruktur vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Military Formation`: ist ein gegliederter Verband, keine institutionelle Teilorganisation.
- `Army`: bezeichnet eine bestimmte Branch oder eine ausdrücklich so bezeichnete landmilitärische Großorganisation.

##### Verwandte Begriffe

- Armed Forces
- Army
- Navy
- Air Force
- Military Formation

##### Referenzen

- PB-002
- PB-003

#### Military Formation

##### Definition

`Military Formation` ist ein militärisch gegliederter, einer gemeinsamen Führung unterstellter Verband aus Personal und zugeordneten Mitteln.

##### Zweck

Der Begriff dient als Oberbegriff für militärische Verbände aller ausdrücklich festgelegten Ebenen und grenzt diese von Branches und der Gesamtheit der Armed Forces ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Formation`: bezeichnet die konkrete organisatorische Zusammenfassung militärischer Elemente.
- `Unit`: ist die kleinste im jeweiligen fachlichen Zusammenhang selbständig betrachtete Military Formation.
- `Branch`: ist ein institutioneller Teil der Armed Forces.

##### Verwandte Begriffe

- Armed Forces
- Branch
- Unit
- Formation
- Command

##### Referenzen

- PB-002
- PB-003

### 8.2 Verbände

#### Unit

##### Definition

`Unit` ist die kleinste in einem festgelegten fachlichen Zusammenhang als selbständig geführtes Ganzes betrachtete Military Formation.

##### Zweck

Der Begriff bezeichnet eine relative organisatorische Grundeinheit; ihre konkrete Größe oder Zusammensetzung folgt nicht aus dem Begriff allein.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Military Formation`: ist der ebenenübergreifende Oberbegriff.
- `Formation`: bezeichnet eine konkrete organisatorische Zusammenfassung und ist nicht notwendig die kleinste selbständig betrachtete Ebene.

##### Verwandte Begriffe

- Military Formation
- Formation
- Company
- Command

##### Referenzen

- PB-002
- PB-003

#### Formation

##### Definition

`Formation` ist eine konkrete, nach einer festgelegten Gliederung zusammengefasste und gemeinsam geführte Military Formation.

##### Zweck

Der Begriff bezeichnet die organisatorische Gestalt eines Verbandes, ohne eine bestimmte Größenstufe festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Military Formation`: ist der allgemeine begriffliche Oberbegriff.
- `Unit`: ist die im jeweiligen Zusammenhang kleinste selbständig betrachtete Formation.

##### Verwandte Begriffe

- Military Formation
- Unit
- Division
- Brigade
- Regiment
- Battalion
- Company

##### Referenzen

- PB-002
- PB-003

#### Division

##### Definition

`Division` ist eine über einer Brigade oder einem Regiment und unter einer übergeordneten Großformation eingeordnete Formation.

##### Zweck

Der Begriff bezeichnet eine bestimmte relative Verbandsstufe, ohne Personalstärke, Gliederung oder Einsatzweise festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Brigade`: ist eine nachgeordnete Verbandsstufe.
- `Military Formation`: umfasst Verbände aller Ebenen.

##### Verwandte Begriffe

- Formation
- Brigade
- Regiment
- Battalion
- Headquarters

##### Referenzen

- PB-002
- PB-003

#### Brigade

##### Definition

`Brigade` ist eine unter einer Division und über einem Battalion eingeordnete Formation, die Regimenter umfassen kann.

##### Zweck

Der Begriff bezeichnet eine mittlere Verbandsstufe und grenzt sie von benachbarten Stufen ab, ohne eine feste Zusammensetzung vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Division`: ist die übergeordnete Verbandsstufe.
- `Regiment`: ist eine eigenständige, häufig derselben relativen Ebene zugeordnete Organisationsform.
- `Battalion`: ist die nachgeordnete Verbandsstufe.

##### Verwandte Begriffe

- Formation
- Division
- Regiment
- Battalion
- Headquarters

##### Referenzen

- PB-002
- PB-003

#### Regiment

##### Definition

`Regiment` ist eine militärische Formation mit eigener institutioneller Identität, die zwischen Brigade- und Battalionsebene eingeordnet ist oder an die Stelle einer Brigadegliederung treten kann.

##### Zweck

Der Begriff bezeichnet eine eigenständige Organisationsform, ohne sie mit der funktional anders abgegrenzten Brigade gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Brigade`: ist eine eigene Verbandsstufe und kein alternativer Name für Regiment.
- `Battalion`: ist eine nachgeordnete Verbandsstufe.

##### Verwandte Begriffe

- Formation
- Division
- Brigade
- Battalion
- Company

##### Referenzen

- PB-002
- PB-003

#### Battalion

##### Definition

`Battalion` ist eine unter einer Brigade oder einem Regiment und über einer Company eingeordnete Formation.

##### Zweck

Der Begriff bezeichnet eine untere Verbandsstufe und grenzt sie von ihrer über- und nachgeordneten organisatorischen Umgebung ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Company`: ist die nachgeordnete Verbandsstufe.
- `Regiment`: ist eine übergeordnete Formation.

##### Verwandte Begriffe

- Formation
- Brigade
- Regiment
- Company
- Headquarters

##### Referenzen

- PB-002
- PB-003

#### Company

##### Definition

`Company` ist eine unter einem Battalion eingeordnete Formation aus mehreren nachgeordneten militärischen Elementen.

##### Zweck

Der Begriff bezeichnet eine grundlegende untere Verbandsstufe, ohne ihre Stärke, Ausstattung oder Untergliederung festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Battalion`: ist die übergeordnete Verbandsstufe.
- `Unit`: bezeichnet relativ zum jeweiligen Zusammenhang die kleinste selbständig betrachtete Formation.

##### Verwandte Begriffe

- Formation
- Battalion
- Unit
- Commander

##### Referenzen

- PB-002
- PB-003

### 8.3 Kommandostruktur

#### Commander

##### Definition

`Commander` ist eine Person, der die formale militärische Führungsverantwortung für einen festgelegten Command übertragen ist.

##### Zweck

Der Begriff bezeichnet die verantwortliche Führungsrolle und nicht den geführten Zuständigkeitsbereich oder dessen Einrichtung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Command`: ist der übertragene Führungs- und Zuständigkeitsbereich.
- `Headquarters`: ist die organisatorische Einrichtung zur Unterstützung eines Command.

##### Verwandte Begriffe

- Command
- Chain of Command
- Headquarters
- Military Formation

##### Referenzen

- PB-002
- PB-003

#### Command

##### Definition

`Command` ist ein formal abgegrenzter militärischer Führungs- und Zuständigkeitsbereich unter einem Commander.

##### Zweck

Der Begriff bezeichnet die Einheit übertragener Autorität, Verantwortung und Zuständigkeit, ohne eine bestimmte Formation oder räumliche Ebene vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Commander`: ist die verantwortliche Person.
- `Military Formation`: ist ein militärischer Verband.
- `Headquarters`: unterstützt die Ausübung eines Command.

##### Verwandte Begriffe

- Commander
- Chain of Command
- Headquarters
- Theater

##### Referenzen

- PB-002
- PB-003

#### Chain of Command

##### Definition

`Chain of Command` ist die geordnete Folge formaler militärischer Über- und Unterordnungsverhältnisse, durch die Commands miteinander verbunden sind.

##### Zweck

Der Begriff bezeichnet den verbindlichen Verlauf militärischer Autorität und Verantwortung über mehrere Führungsebenen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Command`: ist ein einzelner Führungs- und Zuständigkeitsbereich.
- `Formation`: ist ein Verband und keine Autoritätsfolge.

##### Verwandte Begriffe

- Commander
- Command
- Headquarters
- Armed Forces

##### Referenzen

- PB-002
- PB-003

#### Headquarters

##### Definition

`Headquarters` ist die organisatorische Einrichtung, die einen Commander bei der Ausübung eines Command unterstützt.

##### Zweck

Der Begriff bezeichnet die Führungs- und Koordinierungseinrichtung und trennt sie von der verantwortlichen Person, dem Command und der geführten Formation.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Commander`: trägt die formale Führungsverantwortung.
- `Command`: ist der Zuständigkeitsbereich.
- `Military Formation`: ist der geführte Verband.

##### Verwandte Begriffe

- Commander
- Command
- Chain of Command
- Theater

##### Referenzen

- PB-002
- PB-003

#### Theater

##### Definition

`Theater` ist ein für übergreifende militärische Führung abgegrenzter geographischer Raum zusammenhängender möglicher oder tatsächlicher Operationen.

##### Zweck

Der Begriff bezeichnet den großräumigen Bezugsbereich militärischer Führung, ohne eine konkrete Operation, einen Frontverlauf oder politische Grenzen vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Front`: ist ein räumlicher Kontakt- und Wirkungszusammenhang gegnerischer Kräfte.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.
- `Campaign`: ist eine zusammenhängende Folge militärischer Operationen.

##### Verwandte Begriffe

- Command
- Headquarters
- Operation
- Campaign
- Front

##### Referenzen

- PB-002
- PB-003

### 8.4 Operationen

#### Operation

##### Definition

`Operation` ist ein nach Ziel, Verantwortung, Raum und zeitlichem Zusammenhang abgegrenztes militärisches Vorhaben.

##### Zweck

Der Begriff bezeichnet eine koordinierte militärische Handlungseinheit zwischen einer übergeordneten Campaign und einzelnen Battles oder Engagements.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Campaign`: verbindet mehrere Operations zu einem längerfristigen militärischen Zusammenhang.
- `Battle`: ist eine größere unmittelbare bewaffnete Auseinandersetzung.
- `Engagement`: ist eine begrenzte unmittelbare bewaffnete Auseinandersetzung.

##### Verwandte Begriffe

- Campaign
- Battle
- Engagement
- Theater
- Offensive
- Defensive Operation

##### Referenzen

- PB-002
- PB-003

#### Campaign

##### Definition

`Campaign` ist eine strategisch zusammenhängende Folge militärischer Operations, die auf ein übergeordnetes militärisches Ziel in einem größeren räumlichen und zeitlichen Zusammenhang ausgerichtet ist.

##### Zweck

Der Begriff bezeichnet die übergeordnete Verbindung mehrerer Operations und grenzt sie von einzelnen Vorhaben und unmittelbaren Auseinandersetzungen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Operation`: ist ein einzelnes abgegrenztes militärisches Vorhaben.
- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.
- `Theater`: ist ein geographischer Führungsraum und kein Vorhaben.

##### Verwandte Begriffe

- Operation
- Battle
- Engagement
- Theater
- Front

##### Referenzen

- PB-002
- PB-003

#### Battle

##### Definition

`Battle` ist eine größere, räumlich und zeitlich zusammenhängende unmittelbare bewaffnete Auseinandersetzung gegnerischer militärischer Kräfte.

##### Zweck

Der Begriff bezeichnet eine umfangreiche konkrete Auseinandersetzung innerhalb oder außerhalb einer Operation, ohne deren Ergebnis oder Bedeutung vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Engagement`: ist eine begrenztere unmittelbare Auseinandersetzung.
- `Operation`: ist ein zielgerichtetes militärisches Vorhaben und kann mehrere Battles umfassen.
- `Campaign`: verbindet mehrere Operations.

##### Verwandte Begriffe

- Engagement
- Operation
- Campaign
- Front

##### Referenzen

- PB-002
- PB-003

#### Engagement

##### Definition

`Engagement` ist eine begrenzte, unmittelbare bewaffnete Auseinandersetzung zwischen gegnerischen militärischen Kräften.

##### Zweck

Der Begriff bezeichnet die kleinste hier eigenständig benannte Ebene unmittelbarer bewaffneter Auseinandersetzung und grenzt sie von größeren Battles ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Battle`: ist eine größere zusammenhängende Auseinandersetzung.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.

##### Verwandte Begriffe

- Battle
- Operation
- Military Formation
- Front

##### Referenzen

- PB-002
- PB-003

#### Front

##### Definition

`Front` ist der räumliche Zusammenhang, in dem gegnerische militärische Kräfte einander gegenüberstehen und unmittelbar aufeinander einwirken können.

##### Zweck

Der Begriff bezeichnet eine veränderliche militärische Kontakt- und Wirkungszone, ohne sie mit einem Theater, einer politischen Grenze oder einem einzelnen Vorhaben gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Theater`: ist ein großräumiger geographischer Führungsbereich.
- `Operation`: ist ein militärisches Vorhaben.
- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.

##### Verwandte Begriffe

- Theater
- Operation
- Battle
- Offensive
- Defensive Operation

##### Referenzen

- PB-002
- PB-003

#### Offensive

##### Definition

`Offensive` ist eine Operation, deren bestimmender Zweck darin besteht, durch eigenes militärisches Handeln die Initiative zu ergreifen und eine angestrebte Veränderung der militärischen Lage herbeizuführen.

##### Zweck

Der Begriff bezeichnet die vorstoßende Zielrichtung einer Operation, ohne konkrete Mittel, Verfahren oder Erfolg festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Defensive Operation`: richtet sich bestimmend auf die Abwehr gegnerischen Handelns oder die Bewahrung einer militärischen Lage.
- `Battle`: ist eine Auseinandersetzung und keine operative Zielrichtung.

##### Verwandte Begriffe

- Operation
- Defensive Operation
- Front
- Campaign

##### Referenzen

- PB-002
- PB-003

#### Defensive Operation

##### Definition

`Defensive Operation` ist eine Operation, deren bestimmender Zweck darin besteht, gegnerischem militärischem Handeln entgegenzuwirken oder eine angestrebte militärische Lage zu bewahren.

##### Zweck

Der Begriff bezeichnet die abwehrende oder bewahrende Zielrichtung einer Operation, ohne Passivität, konkrete Mittel oder Erfolg vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Offensive`: ist auf das Ergreifen der Initiative und eine Veränderung der militärischen Lage gerichtet.
- `Battle`: ist eine Auseinandersetzung und keine operative Zielrichtung.

##### Verwandte Begriffe

- Operation
- Offensive
- Front
- Campaign

##### Referenzen

- PB-002
- PB-003

### 8.5 Logistik

#### Supply

##### Definition

`Supply` ist die Gesamtheit der für die fortgesetzte Handlungsfähigkeit militärischer Kräfte bestimmten materiellen Mittel und Leistungen.

##### Zweck

Der Begriff bezeichnet den Gegenstand militärischer Versorgung und trennt ihn von deren Planung, Organisation und Verbindungssystemen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Logistics`: umfasst Planung, Bereitstellung, Bewegung und Erhaltung militärisch benötigter Mittel und Leistungen.
- `Supply Line`: ist eine beständige Versorgungsverbindung.
- `Reinforcement`: ergänzt militärische Kräfte personell oder materiell.

##### Verwandte Begriffe

- Logistics
- Supply Line
- Reinforcement
- Readiness

##### Referenzen

- PB-002
- PB-003

#### Supply Line

##### Definition

`Supply Line` ist eine beständige räumliche und organisatorische Verbindung, über die Supply zu militärischen Kräften gelangen kann.

##### Zweck

Der Begriff bezeichnet die Versorgungsverbindung und grenzt sie von den Versorgungsgütern sowie vom gesamten Aufgabenbereich der Logistics ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Supply`: bezeichnet die bestimmten Mittel und Leistungen.
- `Logistics`: ist der übergreifende Aufgabenbereich.

##### Verwandte Begriffe

- Supply
- Logistics
- Front
- Theater

##### Referenzen

- PB-002
- PB-003

#### Logistics

##### Definition

`Logistics` ist der militärische Aufgabenbereich der Planung, Bereitstellung, Bewegung, Verteilung und Erhaltung der für militärische Kräfte benötigten personellen, materiellen und unterstützenden Mittel.

##### Zweck

Der Begriff bezeichnet den umfassenden Unterstützungszusammenhang und trennt ihn von einzelnen Supply-Beständen oder Supply Lines.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Supply`: ist der Gegenstand militärischer Versorgung.
- `Supply Line`: ist eine konkrete Versorgungsverbindung.
- `Mobilization`: überführt verfügbare Potenziale in militärische Verwendbarkeit.

##### Verwandte Begriffe

- Supply
- Supply Line
- Reinforcement
- Mobilization
- Reserve

##### Referenzen

- PB-002
- PB-003

#### Reinforcement

##### Definition

`Reinforcement` ist die personelle oder materielle Ergänzung bestehender militärischer Kräfte.

##### Zweck

Der Begriff bezeichnet das Zuführen zusätzlicher Kräfte oder Mittel zu einer bestehenden militärischen Organisation und grenzt dies von ihrer erstmaligen Mobilization ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Mobilization`: stellt militärische Verwendbarkeit aus verfügbaren Potenzialen her.
- `Reserve`: ist zurückgehaltenes oder nicht dauerhaft aktives militärisches Potenzial.
- `Supply`: dient der fortgesetzten Handlungsfähigkeit.

##### Verwandte Begriffe

- Military Formation
- Supply
- Mobilization
- Reserve
- Attrition

##### Referenzen

- PB-002
- PB-003

#### Mobilization

##### Definition

`Mobilization` ist der geordnete Übergang verfügbarer personeller, materieller und organisatorischer Potenziale in einen für militärische Aufgaben verwendbaren Zustand.

##### Zweck

Der Begriff bezeichnet die Herstellung militärischer Verwendbarkeit und grenzt sie von fortlaufender Versorgung, Ergänzung und dem bloßen Vorhandensein einer Reserve ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Reserve`: bezeichnet verfügbares, zurückgehaltenes oder nicht dauerhaft aktives militärisches Potenzial.
- `Reinforcement`: ergänzt bereits bestehende militärische Kräfte.
- `Readiness`: ist der Grad gegenwärtiger Fähigkeit zur Aufgabenerfüllung.

##### Verwandte Begriffe

- Reserve
- Reinforcement
- Readiness
- Logistics
- Armed Forces

##### Referenzen

- PB-002
- PB-003

#### Reserve

##### Definition

`Reserve` ist personelles, materielles oder organisatorisches militärisches Potenzial, das verfügbar gehalten wird, ohne dauerhaft für laufende Aufgaben eingesetzt zu sein.

##### Zweck

Der Begriff bezeichnet zurückgehaltenes oder nicht dauerhaft aktives Potenzial und grenzt dieses vom Vorgang seiner Mobilization und von aktiven Reinforcements ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Mobilization`: ist der Übergang in militärische Verwendbarkeit.
- `Reinforcement`: ist die Ergänzung bestehender Kräfte.
- `Readiness`: bezeichnet einen Fähigkeitsgrad und keinen Bestand.

##### Verwandte Begriffe

- Mobilization
- Reinforcement
- Readiness
- Logistics

##### Referenzen

- PB-002
- PB-003

### 8.6 Militärische Konzepte

#### Doctrine

##### Definition

`Doctrine` ist ein verbindlicher Zusammenhang grundlegender militärischer Vorstellungen und Leitgrundsätze für Vorbereitung, Führung und Unterstützung militärischen Handelns.

##### Zweck

Der Begriff bezeichnet den normativen Orientierungsrahmen militärischen Handelns, ohne einzelne Befehle, konkrete Operations oder technische Verfahren festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Command`: ist ein konkreter Führungs- und Zuständigkeitsbereich.
- `Operation`: ist ein abgegrenztes militärisches Vorhaben.
- `Organization`: ist die geordnete innere Beschaffenheit militärischer Kräfte.

##### Verwandte Begriffe

- Armed Forces
- Command
- Operation
- Organization
- Readiness

##### Referenzen

- PB-002
- PB-003

#### Readiness

##### Definition

`Readiness` ist der Grad, in dem militärische Kräfte zu einem bestimmten Zeitpunkt für festgelegte Aufgaben unmittelbar verwendungsfähig sind.

##### Zweck

Der Begriff bezeichnet gegenwärtige Aufgabenerfüllungsfähigkeit und grenzt sie von struktureller Organization, angesammelter Experience und dem Vorgang der Mobilization ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Organization`: bezeichnet die innere Ordnung und Funktionsfähigkeit.
- `Experience`: ist durch militärische Tätigkeit erworbene und bewahrte praktische Befähigung.
- `Mobilization`: ist ein Übergang in militärische Verwendbarkeit.

##### Verwandte Begriffe

- Organization
- Experience
- Morale
- Mobilization
- Supply

##### Referenzen

- PB-002
- PB-003

#### Morale

##### Definition

`Morale` ist der gemeinsame psychische Zustand militärischer Kräfte hinsichtlich Zuversicht, Zusammenhalt und Bereitschaft, militärische Aufgaben fortzuführen.

##### Zweck

Der Begriff bezeichnet die mentale und soziale Handlungsbereitschaft, ohne Ausbildung, strukturelle Ordnung oder gegenwärtige materielle Verwendbarkeit gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Readiness`: ist der Grad unmittelbarer Verwendungsfähigkeit.
- `Organization`: bezeichnet innere Ordnung und Funktionsfähigkeit.
- `Experience`: bezeichnet erworbene praktische Befähigung.

##### Verwandte Begriffe

- Readiness
- Organization
- Experience
- Commander
- Attrition

##### Referenzen

- PB-002
- PB-003

#### Organization

##### Definition

`Organization` ist der Grad geordneter innerer Gliederung, Koordination und fortbestehender Funktionsfähigkeit militärischer Kräfte.

##### Zweck

Der Begriff bezeichnet die strukturelle und koordinative Geschlossenheit militärischer Kräfte und nicht die militärische Institution, ihre Kampferfahrung oder ihre unmittelbare Einsatzbereitschaft.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Military Formation`: ist ein militärisch gegliederter Verband.
- `Readiness`: bezeichnet gegenwärtige Aufgabenerfüllungsfähigkeit.
- `Experience`: ist erworbene praktische Befähigung.
- `Morale`: ist ein psychischer und sozialer Zustand.

##### Verwandte Begriffe

- Military Formation
- Readiness
- Morale
- Experience
- Attrition

##### Referenzen

- PB-002
- PB-003

#### Experience

##### Definition

`Experience` ist die durch militärische Tätigkeit erworbene und innerhalb militärischer Kräfte bewahrte praktische Befähigung.

##### Zweck

Der Begriff bezeichnet angesammelte handlungsbezogene Vertrautheit und grenzt sie von gegenwärtiger Readiness, struktureller Organization und psychischer Morale ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Readiness`: ist gegenwärtige Aufgabenerfüllungsfähigkeit.
- `Organization`: ist innere Ordnung und Funktionsfähigkeit.
- `Morale`: ist ein psychischer und sozialer Zustand.

##### Verwandte Begriffe

- Readiness
- Organization
- Morale
- Doctrine
- Attrition

##### Referenzen

- PB-002
- PB-003

#### Attrition

##### Definition

`Attrition` ist der fortschreitende Verlust personeller, materieller oder organisatorischer militärischer Leistungsfähigkeit durch fortdauernde Beanspruchung.

##### Zweck

Der Begriff bezeichnet kumulativen militärischen Substanz- oder Fähigkeitsverlust unabhängig von einem einzelnen Battle oder Engagement und ohne eine bestimmte Ursache vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Battle`: ist eine unmittelbare bewaffnete Auseinandersetzung.
- `Engagement`: ist eine begrenzte unmittelbare bewaffnete Auseinandersetzung.
- `Reinforcement`: ergänzt bestehende militärische Kräfte.
- `Organization`: bezeichnet innere Ordnung und Funktionsfähigkeit.

##### Verwandte Begriffe

- Battle
- Engagement
- Reinforcement
- Supply
- Organization
- Readiness
- Morale

##### Referenzen

- PB-002
- PB-003

## Kapitel 9 – Diplomatie und Internationale Beziehungen

Diplomatie umfasst die Beziehungen zwischen politischen Akteuren und das auf diese Beziehungen gerichtete Handeln. Beziehungen, diplomatische Handlungen und daraus hervorgehende Abkommen sind eigenständige Konzepte und dürfen nicht gleichgesetzt werden. Verträge sind mögliche Ergebnisse diplomatischer Prozesse, nicht deren Ausgangspunkt.

Die Begriffsgruppen trennen Akteure, Beziehungen, Handlungen und Abkommen, ohne ihre fachlichen Zusammenhänge aufzuheben.

Dieses Kapitel definiert die kanonische diplomatische Terminologie. Spielmechaniken, Regeln und technische Umsetzungen verbleiben in den zuständigen Dokumenten.

### 9.1 Diplomatische Akteure

#### Country

##### Definition

Für `Country` gilt ausschließlich die kanonische Definition aus Abschnitt 4.1.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet ein Country als möglichen diplomatischen Akteur ein, ohne den politischen Begriff erneut zu definieren.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- APIs
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Government`: ist die gegenwärtige politische Führung und kann ein Country diplomatisch vertreten.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

##### Verwandte Begriffe

- State
- Government
- Diplomatic Relation
- Diplomatic Mission

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Government

##### Definition

Für `Government` gilt ausschließlich die kanonische Definition aus Abschnitt 4.1.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet ein Government als mögliche diplomatisch handelnde politische Führung ein, ohne den politischen Begriff erneut zu definieren.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Country`: ist die territorial-politische Einheit als Ganzes.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

##### Verwandte Begriffe

- State
- Country
- Diplomat
- Diplomatic Mission

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Diplomatic Mission

##### Definition

Eine `Diplomatic Mission` ist eine dauerhafte oder zeitlich begrenzte offizielle Vertretung eines diplomatischen Akteurs gegenüber einem anderen diplomatischen Akteur oder einem internationalen Zusammenhang.

##### Zweck

Der Begriff bezeichnet die institutionalisierte diplomatische Vertretung und grenzt sie von den vertretenen Akteuren und den für sie handelnden Personen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Diplomat`: ist eine mit diplomatischer Vertretung betraute Person.
- `Government`: ist die gegenwärtige politische Führung eines State.

##### Verwandte Begriffe

- Country
- Government
- Diplomat
- Diplomatic Relation
- International Organization

##### Referenzen

- PB-002
- PB-003

#### Diplomat

##### Definition

Ein `Diplomat` ist eine Person, die zur offiziellen Vertretung eines diplomatischen Akteurs in diplomatischen Beziehungen und Handlungen bevollmächtigt ist.

##### Zweck

Der Begriff bezeichnet die bevollmächtigte handelnde Person und nicht den vertretenen Akteur, dessen Beziehung oder dessen Vertretungseinrichtung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Diplomatic Mission`: ist eine offizielle Vertretung und keine Person.
- `Government`: ist eine politische Führung und nicht deren einzelner Vertreter.

##### Verwandte Begriffe

- Country
- Government
- Diplomatic Mission
- Negotiation

##### Referenzen

- PB-002
- PB-003

### 9.2 Diplomatische Beziehungen

#### Diplomatic Relation

##### Definition

Eine `Diplomatic Relation` ist der bestehende diplomatische Zusammenhang zwischen zwei diplomatischen Akteuren, innerhalb dessen sie einander politisch begegnen und aufeinander Bezug nehmen.

##### Zweck

Der Begriff bezeichnet die Beziehung selbst und trennt sie von einzelnen Einschätzungen, Handlungen und Abkommen innerhalb dieser Beziehung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Negotiation`: ist eine diplomatische Handlung.
- `Treaty`: ist ein formales internationales Abkommen.

##### Verwandte Begriffe

- Country
- Government
- Recognition
- Trust
- Influence
- Reputation

##### Referenzen

- PB-002
- PB-003

#### Recognition

##### Definition

`Recognition` ist die formale Anerkennung eines politischen Akteurs oder eines von ihm beanspruchten internationalen Status durch einen anderen diplomatischen Akteur.

##### Zweck

Der Begriff bezeichnet einen bestehenden Anerkennungsstatus und grenzt ihn vom Vorschlag seiner Begründung sowie von allgemeiner Zustimmung oder Vertrauen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Recognition Proposal`: ist ein Vorschlag zur Begründung oder Änderung von Recognition.
- `Reputation`: ist eine akteursübergreifende zugeschriebene Bewertung.

##### Verwandte Begriffe

- Country
- Diplomatic Relation
- Recognition Proposal
- Sovereignty

##### Referenzen

- PB-002
- PB-003

#### Trust

##### Definition

`Trust` ist die innerhalb einer Diplomatic Relation bestehende Erwartung eines Akteurs, dass der andere Akteur als verlässlich und in seinen Absichten hinreichend berechenbar handelt.

##### Zweck

Der Begriff bezeichnet eine beziehungsgebundene Erwartung und grenzt sie von Einfluss, formaler Anerkennung und allgemeiner Reputation ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Reputation`: ist nicht auf eine einzelne Diplomatic Relation beschränkt.
- `Influence`: bezeichnet die Fähigkeit, auf andere Akteure einzuwirken.

##### Verwandte Begriffe

- Diplomatic Relation
- Reputation
- Influence
- Agreement

##### Referenzen

- PB-002
- PB-003

#### Influence

##### Definition

`Influence` ist die Fähigkeit eines politischen Akteurs, die Auffassungen, Entscheidungen oder Handlungsbedingungen anderer politischer Akteure zu prägen, ohne deren formale Entscheidungszuständigkeit zu übernehmen.

##### Zweck

Der Begriff bezeichnet politische Einwirkungsfähigkeit und grenzt sie von Herrschaft, Vertrauen und zugeschriebener Reputation ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trust`: ist eine beziehungsgebundene Erwartung von Verlässlichkeit.
- `Sphere of Influence`: ist ein internationaler Beziehungszusammenhang verdichteter Influence.

##### Verwandte Begriffe

- Diplomatic Relation
- Trust
- Reputation
- Sphere of Influence
- Balance of Power

##### Referenzen

- PB-002
- PB-003

#### Reputation

##### Definition

`Reputation` ist die über einzelne Diplomatic Relations hinausreichende, einem politischen Akteur zugeschriebene Bewertung seines bisherigen und erwartbaren internationalen Verhaltens.

##### Zweck

Der Begriff bezeichnet eine akteursübergreifende Zuschreibung und trennt sie von beziehungsgebundenem Trust, formaler Recognition und tatsächlicher Influence.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trust`: besteht innerhalb einer bestimmten Diplomatic Relation.
- `Recognition`: ist ein formaler Anerkennungsstatus.

##### Verwandte Begriffe

- Diplomatic Relation
- Trust
- Influence
- Recognition

##### Referenzen

- PB-002
- PB-003

### 9.3 Diplomatische Handlungen

#### Negotiation

##### Definition

Eine `Negotiation` ist ein geordneter diplomatischer Austausch zwischen Akteuren mit dem Ziel, unterschiedliche Positionen zu klären und eine gemeinsame Regelung zu ermöglichen.

##### Zweck

Der Begriff bezeichnet den diplomatischen Verständigungsprozess und grenzt ihn von darin eingebrachten Proposals und daraus hervorgehenden Agreements ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Proposal`: ist ein formaler Vorschlag oder ein diplomatisches Angebot.
- `Agreement`: ist eine übereinstimmende Willensfestlegung.

##### Verwandte Begriffe

- Diplomat
- Proposal
- Agreement
- Treaty

##### Referenzen

- PB-002
- PB-003

#### Proposal

##### Definition

Für `Proposal` gilt ausschließlich die domänenübergreifende kanonische Definition aus Abschnitt 10.2; ein diplomatischer Proposal ist deren Anwendung in der Diplomatie.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Proposal der Diplomatie zu, ohne eine konkurrierende diplomatische Grunddefinition einzuführen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Negotiation`: ist der diplomatische Austausch, in dem Proposals behandelt werden können.
- `Agreement`: setzt eine übereinstimmende Willensfestlegung voraus.
- `Treaty`: ist ein formales internationales Abkommen.

##### Verwandte Begriffe

- Negotiation
- Agreement
- Recognition Proposal
- Ultimatum

##### Referenzen

- PB-002
- PB-003

#### Agreement

##### Definition

Ein `Agreement` ist die übereinstimmende Willensfestlegung von mindestens zwei Akteuren hinsichtlich eines gemeinsamen diplomatischen Gegenstands.

##### Zweck

Der Begriff bezeichnet das allgemeine Ergebnis diplomatischer Verständigung, ohne zwingend die Form oder Verbindlichkeit eines Treaty vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Proposal`: ist noch keine übereinstimmende Willensfestlegung.
- `Treaty`: ist eine besondere formale Art internationalen Abkommens.

##### Verwandte Begriffe

- Negotiation
- Proposal
- Treaty
- Guarantee

##### Referenzen

- PB-002
- PB-003

#### Guarantee

##### Definition

Eine `Guarantee` ist die formale einseitige Zusage eines diplomatischen Akteurs, für den Fortbestand eines bezeichneten internationalen Zustands oder Anspruchs einzustehen.

##### Zweck

Der Begriff bezeichnet eine einseitig übernommene diplomatische Verpflichtung und grenzt sie von gegenseitigen Agreements und bloßen politischen Erklärungen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Alliance`: begründet eine wechselseitige organisierte Zusammenarbeit.
- `Defensive Pact`: ist ein gegenseitiges Abkommen über defensive Unterstützung.

##### Verwandte Begriffe

- Agreement
- Alliance
- Defensive Pact
- Neutrality

##### Referenzen

- PB-002
- PB-003

#### Recognition Proposal

##### Definition

Ein `Recognition Proposal` ist ein Proposal, dessen Gegenstand die Begründung, Änderung oder Beendigung formaler Recognition ist.

##### Zweck

Der Begriff bezeichnet den zur Entscheidung gestellten Anerkennungsgegenstand und nicht den daraus möglicherweise hervorgehenden Anerkennungsstatus.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Recognition`: ist der bestehende formale Anerkennungsstatus.
- `Proposal`: bezeichnet die allgemeine Form eines formalen Vorschlags oder Angebots.

##### Verwandte Begriffe

- Proposal
- Recognition
- Negotiation
- Country

##### Referenzen

- PB-002
- PB-003

#### Sanction

##### Definition

Eine `Sanction` ist eine von einem diplomatischen Akteur formal auferlegte beschränkende Maßnahme gegenüber einem anderen Akteur mit dem Zweck, dessen Verhalten zu beanstanden oder zu beeinflussen.

##### Zweck

Der Begriff bezeichnet diplomatischen Zwang durch eine Beschränkung und grenzt ihn von einer Forderung, einem Abkommen und bewaffnetem Konflikt ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Ultimatum`: ist eine befristete Forderung mit angekündigter Folge.
- `War`: ist ein Zustand organisierter bewaffneter Auseinandersetzung.

##### Verwandte Begriffe

- Diplomatic Relation
- Ultimatum
- Agreement
- War

##### Referenzen

- PB-002
- PB-003

#### Ultimatum

##### Definition

Ein `Ultimatum` ist eine formale, abschließende und befristete diplomatische Forderung, die für den Fall ihrer Nichterfüllung eine bestimmte nachteilige Folge ankündigt.

##### Zweck

Der Begriff bezeichnet eine Forderung unter ausdrücklich angekündigtem Entscheidungsdruck und grenzt sie von einem ergebnisoffenen Proposal und einer bereits vollzogenen Sanction ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Proposal`: lässt Annahme, Ablehnung oder Veränderung ohne begriffsnotwendige Drohfolge offen.
- `Sanction`: ist eine auferlegte beschränkende Maßnahme.

##### Verwandte Begriffe

- Proposal
- Negotiation
- Sanction
- War

##### Referenzen

- PB-002
- PB-003

### 9.4 Internationale Abkommen

#### Treaty

##### Definition

Ein `Treaty` ist ein formal begründetes internationales Abkommen zwischen mindestens zwei diplomatischen Akteuren, das ihre gegenseitigen Rechte, Pflichten oder Beziehungen verbindlich ordnet.

##### Zweck

Der Begriff bezeichnet eine formalisierte Art von Agreement als Ergebnis diplomatischer Verständigung, ohne einen bestimmten Regelungsgegenstand vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Agreement`: ist der allgemeinere Begriff für eine übereinstimmende Willensfestlegung.
- `Proposal`: ist ein noch nicht übereinstimmend festgelegter Vorschlag.

##### Verwandte Begriffe

- Negotiation
- Proposal
- Agreement
- Alliance
- Peace Treaty

##### Referenzen

- PB-002
- PB-003

#### Alliance

##### Definition

Eine `Alliance` ist ein formales internationales Abkommen zur dauerhaften organisierten Zusammenarbeit ihrer Mitglieder bei gemeinsamen internationalen Interessen.

##### Zweck

Der Begriff bezeichnet einen umfassenden Kooperationszusammenhang und grenzt ihn von Abkommen mit einem einzelnen begrenzten Gegenstand ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Defensive Pact`: beschränkt sich auf gegenseitige defensive Unterstützung.
- `International Organization`: ist eine eigenständige internationale Einrichtung.

##### Verwandte Begriffe

- Treaty
- Defensive Pact
- Guarantee
- International Organization
- Balance of Power

##### Referenzen

- PB-002
- PB-003

#### Trade Agreement

##### Definition

Ein `Trade Agreement` ist ein Treaty, das den wirtschaftlichen Austausch zwischen seinen Parteien ordnet.

##### Zweck

Der Begriff bezeichnet ein internationales Abkommen mit handelsbezogenem Gegenstand, ohne konkrete Waren, Bedingungen oder wirtschaftliche Verfahren festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trade`: ist die wirtschaftliche Übertragung von Goods oder Services.
- `Treaty`: kann andere internationale Gegenstände regeln.

##### Verwandte Begriffe

- Treaty
- Agreement
- Trade
- Market

##### Referenzen

- PB-002
- PB-003

#### Non-Aggression Pact

##### Definition

Ein `Non-Aggression Pact` ist ein Treaty, durch das sich seine Parteien gegenseitig verpflichten, keinen War gegeneinander zu beginnen.

##### Zweck

Der Begriff bezeichnet den vereinbarten Verzicht auf gegenseitige Kriegseröffnung und grenzt ihn von Neutrality und gegenseitiger Unterstützungsverpflichtung ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Defensive Pact`: verpflichtet zu gegenseitiger defensiver Unterstützung.
- `Neutrality`: ist eine internationale Haltung und kein notwendigerweise gegenseitiges Abkommen.

##### Verwandte Begriffe

- Treaty
- War
- Neutrality
- Defensive Pact

##### Referenzen

- PB-002
- PB-003

#### Defensive Pact

##### Definition

Ein `Defensive Pact` ist ein Treaty, durch das sich seine Parteien zu gegenseitiger Unterstützung gegen von außen gegen eine Partei gerichtete Aggression verpflichten.

##### Zweck

Der Begriff bezeichnet eine begrenzte gegenseitige defensive Verpflichtung und grenzt sie von umfassender Alliance und einseitiger Guarantee ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Alliance`: bezeichnet einen umfassenderen organisierten Kooperationszusammenhang.
- `Guarantee`: ist eine einseitige Zusage.

##### Verwandte Begriffe

- Treaty
- Alliance
- Guarantee
- Non-Aggression Pact

##### Referenzen

- PB-002
- PB-003

#### Military Access

##### Definition

`Military Access` ist ein internationales Abkommen, durch das ein politischer Akteur militärischen Kräften eines anderen Akteurs die Anwesenheit oder Bewegung in einem abgegrenzten Gebiet gestattet.

##### Zweck

Der Begriff bezeichnet die diplomatische Erlaubnis und nicht deren konkrete militärische Nutzung, Führung oder logistische Ausgestaltung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Territorial Control`: bezeichnet tatsächliche politische oder administrative Verfügungsgewalt über ein Gebiet.
- `Occupation`: bezeichnet gemäß Abschnitt 6.2 die regelmäßig ausgeübte Tätigkeit einer Person und besitzt keine militärische Bedeutung.

##### Verwandte Begriffe

- Agreement
- Treaty
- Territory
- Armed Forces

##### Referenzen

- PB-002
- PB-003

### 9.5 Konflikte

#### War

##### Definition

`War` ist ein zwischen politischen Akteuren bestehender Zustand organisierter bewaffneter Auseinandersetzung zur Durchsetzung widerstreitender politischer Ziele.

##### Zweck

Der Begriff bezeichnet den übergreifenden Konfliktzustand und nicht einzelne Operations, Battles oder die diplomatische Begründung des Konflikts.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Casus Belli`: ist ein geltend gemachter Rechtfertigungsgrund.
- `Battle`: ist eine konkrete bewaffnete Auseinandersetzung.

##### Verwandte Begriffe

- Casus Belli
- Ceasefire
- Armistice
- Peace Treaty
- Battle

##### Referenzen

- PB-002
- PB-003

#### Casus Belli

##### Definition

Ein `Casus Belli` ist ein formal geltend gemachter politischer Rechtfertigungsgrund für die Einleitung eines War gegen einen bezeichneten politischen Akteur.

##### Zweck

Der Begriff bezeichnet die beanspruchte Rechtfertigung und grenzt sie vom War selbst, seinen Zielen und seinem Ergebnis ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Ultimatum`: ist eine befristete diplomatische Forderung.
- `War`: ist der Zustand bewaffneter Auseinandersetzung.

##### Verwandte Begriffe

- War
- Ultimatum
- Diplomatic Relation
- Peace Treaty

##### Referenzen

- PB-002
- PB-003

#### Ceasefire

##### Definition

Ein `Ceasefire` ist eine begrenzte Vereinbarung der Konfliktparteien, bewaffnete Handlungen vorübergehend oder unter festgelegten Bedingungen auszusetzen.

##### Zweck

Der Begriff bezeichnet eine Unterbrechung bewaffneter Handlungen, ohne den War oder dessen Streitgegenstände notwendig zu beenden.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Armistice`: beendet die allgemeinen bewaffneten Handlungen eines War auf Grundlage eines formalen Abkommens.
- `Peace Treaty`: beendet den War und ordnet seine politischen Folgen.

##### Verwandte Begriffe

- War
- Armistice
- Peace Treaty
- Agreement

##### Referenzen

- PB-002
- PB-003

#### Armistice

##### Definition

Ein `Armistice` ist ein formales internationales Abkommen, das die allgemeinen bewaffneten Handlungen zwischen Parteien eines War beendet, ohne den War und seine politischen Streitgegenstände notwendig abschließend zu regeln.

##### Zweck

Der Begriff bezeichnet die umfassende Beendigung der Kampfhandlungen und grenzt sie von begrenztem Ceasefire und abschließendem Peace Treaty ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Ceasefire`: ist eine begrenzte Aussetzung bewaffneter Handlungen.
- `Peace Treaty`: beendet den War und regelt seine politischen Folgen.

##### Verwandte Begriffe

- War
- Ceasefire
- Peace Treaty
- Treaty

##### Referenzen

- PB-002
- PB-003

#### Peace Treaty

##### Definition

Ein `Peace Treaty` ist ein Treaty, das einen War zwischen seinen Parteien beendet und die daraus hervorgehenden internationalen Rechte, Pflichten oder Beziehungen ordnet.

##### Zweck

Der Begriff bezeichnet die formale Beendigung des Konfliktzustands und dessen politische Regelung, nicht lediglich das Ende bewaffneter Handlungen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Armistice`: beendet allgemeine Kampfhandlungen, aber nicht notwendig den War.
- `Ceasefire`: setzt bewaffnete Handlungen begrenzt aus.

##### Verwandte Begriffe

- Treaty
- War
- Ceasefire
- Armistice
- Agreement

##### Referenzen

- PB-002
- PB-003

#### Occupation

##### Definition

Für `Occupation` gilt ausschließlich die kanonische Definition aus Abschnitt 6.2 als regelmäßig ausgeübte Tätigkeit einer Person.

##### Zweck

Die Aufnahme in diese Begriffsgruppe dokumentiert die notwendige Abgrenzung: Der Begriff erhält keine zweite militärische oder territoriale Bedeutung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Territorial Control`: bezeichnet tatsächliche politische oder administrative Verfügungsgewalt über ein Gebiet.
- `Military Access`: ist eine internationale Erlaubnis zur Anwesenheit oder Bewegung militärischer Kräfte.

##### Verwandte Begriffe

- Profession
- Territorial Control
- Military Access
- War

##### Referenzen

- PB-002
- PB-003

### 9.6 Internationale Konzepte

#### Neutrality

##### Definition

`Neutrality` ist die internationale Haltung eines politischen Akteurs, sich gegenüber einem War anderer Akteure keiner Konfliktpartei als kriegführende Partei anzuschließen.

##### Zweck

Der Begriff bezeichnet eine Haltung gegenüber einem fremden Konflikt und grenzt sie von Bündnisfreiheit, gegenseitigem Gewaltverzicht und Passivität ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Non-Aggression Pact`: ist ein gegenseitiges Treaty über den Verzicht auf Kriegseröffnung.
- `Alliance`: ist ein organisierter internationaler Kooperationszusammenhang.

##### Verwandte Begriffe

- War
- Non-Aggression Pact
- Alliance
- Guarantee

##### Referenzen

- PB-002
- PB-003

#### Sphere of Influence

##### Definition

Eine `Sphere of Influence` ist ein internationaler Beziehungszusammenhang, in dem die politischen Handlungsmöglichkeiten mehrerer Akteure in besonderem Maß durch die Influence eines bestimmten politischen Akteurs geprägt sind.

##### Zweck

Der Begriff bezeichnet eine verdichtete Struktur politischer Einwirkung, ohne formale Herrschaft, Alliance oder Protectorate Relationship vorauszusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Influence`: ist die Fähigkeit eines Akteurs zur politischen Einwirkung.
- `Protectorate Relationship`: ist eine formalisierte asymmetrische internationale Beziehung.

##### Verwandte Begriffe

- Influence
- Diplomatic Relation
- Balance of Power
- Protectorate Relationship

##### Referenzen

- PB-002
- PB-003

#### Balance of Power

##### Definition

`Balance of Power` ist die internationale Konstellation, in der die Handlungsmöglichkeiten politischer Akteure durch die Verteilung und wechselseitige Begrenzung ihrer Macht geprägt sind.

##### Zweck

Der Begriff bezeichnet einen übergreifenden Beziehungszustand und nicht ein einzelnes Abkommen, eine Alliance oder die Influence eines einzelnen Akteurs.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Sphere of Influence`: bezeichnet die verdichtete Influence eines bestimmten Akteurs.
- `Alliance`: ist ein formales internationales Abkommen.

##### Verwandte Begriffe

- Influence
- Sphere of Influence
- Alliance
- Diplomatic Relation

##### Referenzen

- PB-002
- PB-003

#### International Organization

##### Definition

Eine `International Organization` ist eine durch internationale Übereinkunft begründete dauerhafte Einrichtung, in der mehrere diplomatische Akteure gemeinsame internationale Angelegenheiten geordnet behandeln.

##### Zweck

Der Begriff bezeichnet eine eigenständige institutionelle Form internationaler Zusammenarbeit und grenzt sie von einzelnen Agreements und Alliances ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Alliance`: ist ein Abkommen zur organisierten Zusammenarbeit seiner Mitglieder.
- `Diplomatic Mission`: ist eine offizielle Vertretung eines diplomatischen Akteurs.

##### Verwandte Begriffe

- Country
- Government
- Diplomatic Mission
- Agreement
- Treaty
- Alliance

##### Referenzen

- PB-002
- PB-003

#### Protectorate Relationship

##### Definition

Eine `Protectorate Relationship` ist eine formalisierte asymmetrische internationale Beziehung, in der ein politischer Akteur die äußere Schutzverantwortung für einen anderen übernimmt und dadurch dessen internationale Handlungsfreiheit begrenzt ist.

##### Zweck

Der Begriff bezeichnet die Beziehung zwischen den beteiligten Akteuren und trennt sie von den Akteuren selbst, territorialer Herrschaft und bloßer Influence.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Protectorate`: ist gemäß Abschnitt 5.4 ein Political Territory innerhalb einer Protectorate Relationship.
- `Sphere of Influence`: setzt keine formalisierte Schutzverantwortung voraus.

##### Verwandte Begriffe

- Protectorate
- Diplomatic Relation
- Influence
- Sphere of Influence
- Sovereignty

##### Referenzen

- PB-002
- PB-003

## Kapitel 10 – Gameplay- und Designbegriffe

Dieses Kapitel definiert die domänenübergreifende Sprache für Gameplay-Interaktionen, Prozesse und Spielzustände. Die Begriffe bezeichnen allgemeine Konzepte, ohne die Mechaniken einzelner Systeme festzulegen.

Dieselben Begriffe werden in sämtlichen Spielsystemen einheitlich verwendet. Politik, Wirtschaft, Militär, Diplomatie, Technik und weitere Domänen dürfen sie fachlich konkretisieren, aber weder umdeuten noch durch domänenspezifische Synonyme ersetzen.

Spätere Dokumente MUST für diese Konzepte die hier festgelegte Terminologie verwenden. Regeln, Abläufe, Werte und technische Repräsentationen verbleiben in den zuständigen Dokumenten.

### 10.1 Spielerinteraktion

#### Player

##### Definition

Ein `Player` ist eine Person, die innerhalb einer Campaign Entscheidungen trifft und durch Interaktionen Einfluss auf deren Verlauf nimmt.

##### Zweck

Der Begriff bezeichnet den menschlichen Ursprung von Spielabsichten und grenzt ihn von den innerhalb der World handelnden Akteuren ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Actor`: ist ein innerhalb der World handlungsfähiges Subjekt.
- `Player Intent`: ist die von einem Player verfolgte Absicht.

##### Verwandte Begriffe

- Player Intent
- Input
- Selection
- Actor
- Campaign

##### Referenzen

- PB-002
- PB-003

#### Player Intent

##### Definition

`Player Intent` ist die von einem Player mit einer Interaktion verfolgte, noch nicht notwendig als gültige Handlung bestimmte Absicht.

##### Zweck

Der Begriff trennt das angestrebte Ergebnis einer Spielerinteraktion von ihrem Input, ihrer formalen Ausgestaltung und einer späteren Execution.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Input`: ist eine vom Spiel entgegengenommene Eingabe.
- `Action`: ist eine zur Ausführung bestimmte Gameplay-Handlung.

##### Verwandte Begriffe

- Player
- Input
- Selection
- Target
- Action

##### Referenzen

- PB-002
- PB-003

#### Input

##### Definition

Ein `Input` ist eine vom Spiel entgegengenommene Eingabe eines Player, durch die eine Interaktion begonnen, fortgeführt oder beeinflusst wird.

##### Zweck

Der Begriff bezeichnet die Eingabe selbst, ohne daraus eine bestimmte Absicht, Gültigkeit oder Zustandsänderung abzuleiten.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Player Intent`: bezeichnet die mit einer Interaktion verfolgte Absicht.
- `Selection`: bestimmt etwas als aktuellen Gegenstand einer Interaktion.

##### Verwandte Begriffe

- Player
- Player Intent
- Selection
- Confirmation

##### Referenzen

- PB-002
- PB-003

#### Selection

##### Definition

Eine `Selection` ist die Bestimmung eines verfügbaren Gegenstands als aktuellen Bezugspunkt einer Spielerinteraktion.

##### Zweck

Der Begriff bezeichnet die interaktive Auswahl, ohne den ausgewählten Gegenstand notwendig zum Target einer Action zu machen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Target`: ist der bezeichnete Bezugspunkt einer Handlung oder eines Prozesses.
- `Decision`: legt eine Alternative verbindlich fest.

##### Verwandte Begriffe

- Player
- Input
- Target
- Action

##### Referenzen

- PB-002
- PB-003

#### Target

##### Definition

Ein `Target` ist der eindeutig bezeichnete Gegenstand, auf den eine Action, ein Proposal, ein Effect oder ein anderer Gameplay-Prozess gerichtet ist.

##### Zweck

Der Begriff stellt einen domänenübergreifenden Bezugspunkt bereit, ohne dessen Art oder die auf ihn anwendbaren Regeln festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Selection`: ist die aktuelle interaktive Auswahl und begründet nicht notwendig einen Handlungsbezug.
- `Objective`: ist ein angestrebter Zustand oder ein angestrebtes Ergebnis.

##### Verwandte Begriffe

- Selection
- Action
- Proposal
- Effect
- Objective

##### Referenzen

- PB-002
- PB-003

### 10.2 Gameplay-Handlungen

#### Action

##### Definition

Eine `Action` ist eine tatsächlich ausgeführte Gameplay-Handlung, durch die ein Player oder Actor innerhalb eines Spielsystems handelt.

##### Zweck

Der Begriff bezeichnet die tatsächliche Handlung und grenzt sie insbesondere von einer noch veränderbaren Proposal, einer Decision, ihrem Vollzug als Execution und dem Ergebnis der Handlung ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Proposal`: wird vor einer möglichen Ausführung zur Prüfung oder Entscheidung gestellt.
- `Execution`: ist der Vollzug einer Action.
- `Effect`: ist eine durch einen Vorgang bewirkte Zustandsänderung.

##### Verwandte Begriffe

- Player Intent
- Proposal
- Decision
- Execution
- Effect

##### Referenzen

- PB-002
- PB-003

#### Proposal

##### Definition

Ein `Proposal` ist domänenübergreifend ein formaler Vorschlag oder eine beabsichtigte Handlung, die vor ihrer möglichen Ausführung validiert, verändert, angenommen oder abgelehnt werden kann.

##### Zweck

Der Begriff bezeichnet einen noch nicht ausgeführten, zur weiteren Behandlung gestellten Inhalt. Er gilt in sämtlichen Spielsystemen; Diplomatie ist lediglich eines seiner möglichen Anwendungsgebiete.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Action`: ist die zur tatsächlichen Ausführung bestimmte Gameplay-Handlung.
- `Decision`: legt fest, wie über eine Proposal oder einen anderen auslösenden Sachverhalt entschieden wird.
- `Execution`: vollzieht eine bestimmte Action.

##### Verwandte Begriffe

- Action
- Decision
- Confirmation
- Execution
- Cancellation

##### Referenzen

- PB-002
- PB-003

#### Decision

##### Definition

Eine `Decision` ist die verbindliche Festlegung einer verfügbaren Alternative als Antwort auf eine Proposal oder einen anderen auslösenden Sachverhalt.

##### Zweck

Der Begriff bezeichnet die Entscheidung selbst, ohne ihre Bestätigung, Ausführung oder daraus hervorgehenden Effects vorwegzunehmen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Proposal`: ist ein zur Behandlung gestellter Inhalt.
- `Confirmation`: bestätigt eine zuvor bestimmte Eingabe, Auswahl oder Entscheidung.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.

##### Verwandte Begriffe

- Proposal
- Confirmation
- Execution
- Cancellation
- Outcome

##### Referenzen

- PB-002
- PB-003

#### Confirmation

##### Definition

Eine `Confirmation` ist die ausdrückliche Bestätigung, dass eine zuvor bestimmte Eingabe, Auswahl, Proposal oder Decision in ihrer vorliegenden Form fortgeführt werden soll.

##### Zweck

Der Begriff bezeichnet einen bestätigenden Interaktionsschritt und nicht die bestätigte Festlegung oder deren Execution.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Decision`: ist die verbindliche Festlegung einer Alternative.
- `Execution`: ist der Vollzug einer Action.

##### Verwandte Begriffe

- Input
- Selection
- Proposal
- Decision
- Execution

##### Referenzen

- PB-002
- PB-003

#### Execution

##### Definition

Eine `Execution` ist der Vollzug, durch den eine dafür bestimmte Action tatsächlich ausgeführt wird.

##### Zweck

Der Begriff trennt den Vollzug von der vorherigen Absicht, Proposal, Decision oder Confirmation sowie von den daraus hervorgehenden Effects.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Action`: ist die Handlung, die vollzogen wird.
- `Effect`: ist eine durch den Vollzug bewirkte Zustandsänderung.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.

##### Verwandte Begriffe

- Action
- Proposal
- Decision
- Confirmation
- Effect

##### Referenzen

- PB-002
- PB-003

#### Cancellation

##### Definition

Eine `Cancellation` ist die Beendigung einer noch nicht abgeschlossenen Proposal, Action oder eines laufenden Prozesses, ohne dessen vorgesehenen Abschluss herbeizuführen.

##### Zweck

Der Begriff bezeichnet den Abbruch vor Completion und legt weder seine Zulässigkeit noch seine möglichen Consequences fest.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Completion`: ist der vorgesehene Abschluss eines fortschreitenden Vorgangs.
- `Execution`: ist der Vollzug einer Action.

##### Verwandte Begriffe

- Proposal
- Action
- Project
- Completion
- Consequence

##### Referenzen

- PB-002
- PB-003

### 10.3 Laufende Prozesse

#### Project

##### Definition

Ein `Project` ist ein über einen längeren Zeitraum laufender, auf einen bestimmten angestrebten Zustand oder ein Ergebnis ausgerichteter Gameplay-Prozess.

##### Zweck

Der Begriff bezeichnet einen fortdauernden Prozess und grenzt ihn von einzelnen Actions, untergeordneten Tasks und bloßen Zielbeschreibungen ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Task`: ist eine abgegrenzte zu erledigende Einheit.
- `Objective`: beschreibt einen angestrebten Zustand oder ein angestrebtes Ergebnis.
- `Action`: ist eine zur Ausführung bestimmte einzelne Gameplay-Handlung.

##### Verwandte Begriffe

- Task
- Objective
- Progress
- Completion
- Cancellation

##### Referenzen

- PB-002
- PB-003

#### Task

##### Definition

Ein `Task` ist eine abgegrenzte, zu erledigende Einheit innerhalb eines Gameplay-Zusammenhangs.

##### Zweck

Der Begriff bezeichnet einen bestimmten Erledigungsgegenstand, ohne einen länger laufenden Gesamtprozess oder dessen Ziel festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Project`: ist ein länger laufender Gameplay-Prozess.
- `Objective`: bezeichnet den angestrebten Zustand oder das angestrebte Ergebnis.
- `Action`: ist eine zur Ausführung bestimmte Gameplay-Handlung.

##### Verwandte Begriffe

- Project
- Objective
- Mission
- Progress
- Completion

##### Referenzen

- PB-002
- PB-003

#### Objective

##### Definition

Ein `Objective` ist ein ausdrücklich bezeichneter Zustand oder ein ausdrücklich bezeichnetes Ergebnis, dessen Erreichen angestrebt wird.

##### Zweck

Der Begriff bezeichnet das Ziel eines Handelns oder Prozesses und nicht den Weg, die Handlung oder den Prozess zu seiner Erreichung.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Target`: ist der Gegenstand, auf den ein Vorgang gerichtet ist.
- `Task`: ist eine zu erledigende Einheit.
- `Outcome`: ist das tatsächlich eingetretene unmittelbare Ergebnis.

##### Verwandte Begriffe

- Target
- Project
- Task
- Mission
- Outcome

##### Referenzen

- PB-002
- PB-003

#### Mission

##### Definition

Eine `Mission` ist ein abgegrenzter Gameplay-Auftrag, der mindestens ein Objective als zu erreichenden Gegenstand festlegt.

##### Zweck

Der Begriff bezeichnet einen zielgebundenen Auftrag und grenzt ihn von einem eigenständig laufenden Project, einer einzelnen Task und einer priorisierenden Agenda ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Objective`: ist der angestrebte Zustand oder das angestrebte Ergebnis.
- `Task`: ist eine abgegrenzte zu erledigende Einheit.
- `Agenda`: ordnet mehrere Anliegen oder Vorhaben nach einer verfolgten Ausrichtung.

##### Verwandte Begriffe

- Objective
- Task
- Project
- Agenda
- Completion

##### Referenzen

- PB-002
- PB-003

#### Agenda

##### Definition

Eine `Agenda` ist eine geordnete Zusammenstellung von Anliegen, Objectives oder Vorhaben, die ein Akteur verfolgt oder priorisiert.

##### Zweck

Der Begriff bezeichnet eine übergreifende Ausrichtung mehrerer Gegenstände, ohne daraus einzelne Missions, Projects oder Actions abzuleiten.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Mission`: ist ein abgegrenzter zielgebundener Auftrag.
- `Objective`: ist ein einzelner angestrebter Zustand oder ein einzelnes angestrebtes Ergebnis.

##### Verwandte Begriffe

- Objective
- Mission
- Project
- Decision
- Actor

##### Referenzen

- PB-002
- PB-003

### 10.4 Spielereignisse

#### Trigger

##### Definition

Ein `Trigger` ist die festgelegte Voraussetzung, deren Erfüllung die Möglichkeit oder das Eintreten eines Event auslöst.

##### Zweck

Der Begriff bezeichnet den auslösenden Bezug eines Ereignisses und grenzt ihn von einer allgemein geprüften Condition sowie vom Event selbst ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Condition`: ist ein prüfbarer Sachverhalt, ohne notwendig ein Event auszulösen.
- `Event`: ist das eingetretene Ereignis.

##### Verwandte Begriffe

- Condition
- Event
- State
- Outcome

##### Referenzen

- PB-002
- PB-003

#### Condition

##### Definition

Eine `Condition` ist ein eindeutig prüfbarer Sachverhalt, der zu einem bestimmten Zeitpunkt erfüllt oder nicht erfüllt ist.

##### Zweck

Der Begriff stellt eine allgemeine Sprache für Voraussetzungen und Prüfungen bereit, ohne festzulegen, was aus ihrem Ergebnis folgt.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trigger`: ist eine als Auslöser für ein Event festgelegte Voraussetzung.
- `Requirement`: bezeichnet etwas, das für einen bestimmten Gegenstand erfüllt sein muss.
- `State`: ist die Gesamtheit maßgeblicher Eigenschaften eines Gegenstands zu einem Zeitpunkt.

##### Verwandte Begriffe

- Trigger
- Requirement
- Rule
- State
- Event

##### Referenzen

- PB-002
- PB-003

#### Event

##### Definition

Ein `Event` ist ein innerhalb des Spielverlaufs eingetretenes und als zusammengehörig betrachtetes Ereignis.

##### Zweck

Der Begriff bezeichnet das eingetretene Ereignis und grenzt es von seiner auslösenden Voraussetzung, seinem unmittelbaren Outcome und seinen weiteren Consequences ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Trigger`: ist die Voraussetzung für ein Event.
- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.
- `Effect`: ist eine Zustandsänderung.

##### Verwandte Begriffe

- Trigger
- Condition
- Outcome
- Consequence
- Effect

##### Referenzen

- PB-002
- PB-003

#### Outcome

##### Definition

Ein `Outcome` ist das unmittelbar aus einem Event, einer Action, einer Decision oder einem anderen abgeschlossenen Vorgang hervorgegangene Ergebnis.

##### Zweck

Der Begriff bezeichnet, was ein Vorgang unmittelbar ergeben hat, ohne längerfristige Consequences oder einzelne Zustandsänderungen damit gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Effect`: ist eine bestimmte Zustandsänderung.
- `Consequence`: ist eine aus einem Vorgang oder Outcome hervorgehende weitere Folge.
- `Objective`: ist ein angestrebtes und nicht notwendig tatsächlich erreichtes Ergebnis.

##### Verwandte Begriffe

- Event
- Action
- Decision
- Effect
- Consequence

##### Referenzen

- PB-002
- PB-003

#### Consequence

##### Definition

Eine `Consequence` ist eine aus einem Vorgang, Event oder Outcome hervorgehende weitere Folge.

##### Zweck

Der Begriff bezeichnet einen Folgebezug über das unmittelbare Outcome hinaus, ohne dessen Zeitpunkt, Umfang oder konkrete Ausgestaltung festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Outcome`: ist das unmittelbare Ergebnis eines Vorgangs.
- `Effect`: ist eine bestimmte Zustandsänderung.

##### Verwandte Begriffe

- Event
- Outcome
- Effect
- State
- Modifier

##### Referenzen

- PB-002
- PB-003

### 10.5 Regeln

#### Requirement

##### Definition

Ein `Requirement` ist eine Voraussetzung, die für die Verfügbarkeit, Gültigkeit, Fortführung oder den Abschluss eines bestimmten Gameplay-Gegenstands erfüllt sein muss.

##### Zweck

Der Begriff bezeichnet eine notwendige Voraussetzung, ohne die prüfende Condition oder die übergreifende Rule damit gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Condition`: ist ein allgemein prüfbarer Sachverhalt.
- `Restriction`: begrenzt eine ansonsten bestehende Möglichkeit.
- `Rule`: ist eine verbindliche allgemeine Festlegung.

##### Verwandte Begriffe

- Condition
- Restriction
- Rule
- Completion

##### Referenzen

- PB-002
- PB-003

#### Restriction

##### Definition

Eine `Restriction` ist eine verbindliche Begrenzung einer ansonsten bestehenden Gameplay-Möglichkeit.

##### Zweck

Der Begriff bezeichnet eine Einschränkung, ohne sie mit einer notwendigen Requirement oder der Gesamtheit einer Rule gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Requirement`: muss für einen bestimmten Gegenstand erfüllt sein.
- `Rule`: ist eine allgemeine verbindliche Festlegung.
- `Cooldown`: begrenzt erneute Verfügbarkeit anhand eines fortschreitenden Zeitraums.

##### Verwandte Begriffe

- Requirement
- Rule
- Condition
- Cooldown

##### Referenzen

- PB-002
- PB-003

#### Rule

##### Definition

Eine `Rule` ist eine verbindliche allgemeine Festlegung darüber, wie ein Gameplay-Sachverhalt behandelt wird.

##### Zweck

Der Begriff bezeichnet die normative Grundlage eines Spielzusammenhangs, ohne eine konkrete Mechanik, Requirement, Restriction oder Wirkung zu bestimmen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Requirement`: ist eine notwendige Voraussetzung für einen bestimmten Gegenstand.
- `Restriction`: begrenzt eine bestehende Möglichkeit.
- `Effect`: ist eine Zustandsänderung.

##### Verwandte Begriffe

- Requirement
- Restriction
- Condition
- Effect
- Modifier

##### Referenzen

- PB-002
- PB-003

#### Effect

##### Definition

Ein `Effect` ist eine durch eine Action, ein Event, eine Rule oder einen anderen Gameplay-Vorgang bewirkte Zustandsänderung.

##### Zweck

Der Begriff bezeichnet die Zustandsänderung selbst und grenzt sie vom auslösenden Vorgang, dessen gesamtem Outcome und einer wert- oder verhaltensbezogenen Veränderung durch einen Modifier ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Outcome`: ist das unmittelbare Gesamtergebnis eines Vorgangs.
- `Consequence`: ist eine weitere Folge eines Vorgangs oder Outcome.
- `Modifier`: verändert einen Wert oder ein Verhalten dauerhaft oder temporär.

##### Verwandte Begriffe

- Action
- Event
- Outcome
- Consequence
- Modifier
- State

##### Referenzen

- PB-002
- PB-003

#### Modifier

##### Definition

Ein `Modifier` ist eine dauerhafte oder temporäre Veränderung eines Wertes oder Verhaltens gegenüber dessen ansonsten maßgeblicher Ausprägung.

##### Zweck

Der Begriff bezeichnet die verändernde Einflussgröße und grenzt sie von einer beliebigen Zustandsänderung, ihrer Ursache und dem betroffenen Wert oder Verhalten ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Effect`: ist eine Zustandsänderung und kann einen Modifier begründen, verändern oder beenden.
- `Rule`: legt verbindlich fest, wie ein Gameplay-Sachverhalt behandelt wird.
- `Status`: ist eine benannte Einordnung eines gegenwärtigen State.

##### Verwandte Begriffe

- Effect
- Rule
- State
- Status
- Cooldown

##### Referenzen

- PB-002
- PB-003

### 10.6 Fortschritt

#### State

##### Definition

Ein `State` ist die Gesamtheit der zu einem bestimmten Zeitpunkt maßgeblichen Eigenschaften eines abgegrenzten Gameplay-Gegenstands.

##### Zweck

Der Begriff bezeichnet dessen gegenwärtige Beschaffenheit und grenzt sie von einer benannten Einordnung, zeitlicher Entwicklung und einzelnen Zustandsänderung ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Game State`: beschreibt den Zustand der gesamten World zu einem bestimmten Zeitpunkt.
- `Status`: ist eine benannte Einordnung eines State.
- `Progress`: beschreibt die Entwicklung hin zu einem Bezugspunkt.

##### Verwandte Begriffe

- Game State
- Status
- Progress
- Effect
- Condition

##### Referenzen

- PB-002
- PB-003

#### Status

##### Definition

Ein `Status` ist eine benannte Einordnung des gegenwärtigen State eines Gameplay-Gegenstands hinsichtlich eines bestimmten Betrachtungszwecks.

##### Zweck

Der Begriff stellt eine verständliche Zustandsklassifikation bereit, ohne den vollständigen State oder dessen zeitliche Entwicklung abzubilden.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: umfasst sämtliche maßgeblichen Eigenschaften des betrachteten Gegenstands.
- `Progress`: beschreibt eine Entwicklung hin zu einem Bezugspunkt.
- `Condition`: ist ein prüfbarer Sachverhalt.

##### Verwandte Begriffe

- State
- Progress
- Completion
- Condition
- Modifier

##### Referenzen

- PB-002
- PB-003

#### Progress

##### Definition

`Progress` ist der erreichte Stand der Entwicklung eines fortschreitenden Vorgangs im Verhältnis zu einem bestimmten Bezugspunkt.

##### Zweck

Der Begriff bezeichnet den Entwicklungsstand, ohne den vollständigen State, einen Status oder den vorgesehenen Abschluss des Vorgangs damit gleichzusetzen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Status`: ist eine benannte Einordnung eines State.
- `Completion`: ist der vorgesehene Abschluss eines Vorgangs.
- `Outcome`: ist das unmittelbare Ergebnis eines abgeschlossenen Vorgangs.

##### Verwandte Begriffe

- State
- Status
- Project
- Task
- Completion

##### Referenzen

- PB-002
- PB-003

#### Completion

##### Definition

`Completion` ist der vorgesehene Abschluss eines fortschreitenden Vorgangs nach Erfüllung der dafür maßgeblichen Requirements.

##### Zweck

Der Begriff bezeichnet den regulären Abschluss und grenzt ihn von laufendem Progress, vorzeitiger Cancellation und dem daraus hervorgehenden Outcome ab.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Progress`: bezeichnet den erreichten Entwicklungsstand.
- `Cancellation`: beendet einen Vorgang ohne seinen vorgesehenen Abschluss.
- `Outcome`: ist das unmittelbare Ergebnis eines abgeschlossenen Vorgangs.

##### Verwandte Begriffe

- Progress
- Requirement
- Cancellation
- Outcome
- Project

##### Referenzen

- PB-002
- PB-003

#### Cooldown

##### Definition

Ein `Cooldown` ist ein fortschreitender Zeitraum, während dessen die erneute Verfügbarkeit eines bestimmten Gameplay-Gegenstands begrenzt ist.

##### Zweck

Der Begriff bezeichnet einen zeitbezogenen Verfügbarkeitszustand, ohne dessen Dauer, Beginn, Ende oder zugrunde liegende Rule festzulegen.

##### Verwendung

- Game Design
- Engine
- Savegames
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Restriction`: ist der allgemeinere Begriff für eine verbindliche Begrenzung.
- `Progress`: bezeichnet einen Entwicklungsstand im Verhältnis zu einem Bezugspunkt.
- `Modifier`: verändert einen Wert oder ein Verhalten.

##### Verwandte Begriffe

- Restriction
- Rule
- State
- Status
- Progress

##### Referenzen

- PB-002
- PB-003

## Kapitel 11 – Technische Terminologie

Technische Begriffe bilden die gemeinsame Sprache zwischen Design und Engine. Sie benennen technische Verantwortungen eindeutig, ohne fachliche Aussagen aus den zuständigen Design-Dokumenten neu zu definieren.

Dieses Kapitel ist bewusst implementierungsneutral formuliert. Es legt weder eine konkrete Softwarearchitektur noch interne Hierarchien oder bestimmte technische Mittel fest.

Spätere TECH-Dokumente MUST für die hier beschriebenen Verantwortungen diese Begriffe verwenden und ihre kanonischen Definitionen referenzieren. Sie MUST NOT konkurrierende technische Terminologie einführen.

### 11.1 Datenmodell

#### Entity

##### Definition

Für `Entity` gilt ausschließlich die kanonische Definition aus Kapitel 3; die technische Repräsentation begründet keine zweite Bedeutung.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Entity dem technischen Modell zu, ohne die fachliche Definition auf eine technische Repräsentation zu verengen.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Simulation
- Persistenz
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Component`: bündelt einen abgegrenzten Anteil der einer Entity zugeordneten Daten oder Fähigkeiten.
- `Attribute`: ist eine einzelne benannte Eigenschaft.
- `Identifier`: bezeichnet einen Gegenstand innerhalb eines festgelegten Namensraums eindeutig.
- `Reference`: stellt eine gerichtete Zuordnung zu einem anderen Gegenstand her.

##### Verwandte Begriffe

- Component
- Attribute
- Identifier
- Reference
- Simulation State

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Component

##### Definition

Eine `Component` ist eine abgegrenzte Zusammenfassung zusammengehöriger Daten oder Fähigkeiten, die einem technischen Gegenstand zugeordnet ist.

##### Zweck

Der Begriff bezeichnet eine fachlich zusammenhängende Einheit innerhalb eines technischen Modells, ohne eine bestimmte Zusammensetzungsform oder ein bestimmtes Architekturmodell vorzuschreiben.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Simulation
- Persistenz
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Entity`: ist der eindeutig unterscheidbare modellierte Gegenstand.
- `Attribute`: bezeichnet eine einzelne Eigenschaft und nicht deren abgegrenzte Zusammenfassung.
- `Module`: grenzt einen auslieferbaren oder verwaltbaren technischen Funktionsumfang ab.
- `Subsystem`: ist ein abgegrenzter Teil eines übergeordneten Systemzusammenhangs.

##### Verwandte Begriffe

- Entity
- Attribute
- System
- Module

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Attribute

##### Definition

Ein `Attribute` ist eine einzeln benannte Eigenschaft eines technischen Gegenstands mit einer für sie maßgeblichen Bedeutung.

##### Zweck

Der Begriff bezeichnet die kleinste fachlich eigenständig benannte Eigenschaft innerhalb eines Modells, ohne ihre Repräsentation oder zulässigen Werte festzulegen.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Simulation
- Persistenz
- Configuration
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Component`: fasst mehrere zusammengehörige Daten oder Fähigkeiten abgrenzbar zusammen.
- `Identifier`: dient der eindeutigen Bezeichnung eines Gegenstands.
- `Metadata`: beschreibt andere Daten oder technische Artefakte für einen bestimmten Kontext.
- `Reference`: verweist auf einen anderen Gegenstand.

##### Verwandte Begriffe

- Entity
- Component
- Identifier
- Metadata

##### Referenzen

- PB-002
- PB-003

#### Identifier

##### Definition

Ein `Identifier` ist eine innerhalb eines festgelegten Namensraums eindeutige und stabile Bezeichnung eines bestimmten Gegenstands.

##### Zweck

Der Begriff ermöglicht die eindeutige Wiedererkennung und Referenzierung, ohne Eigenschaften oder Speicherort des bezeichneten Gegenstands auszudrücken.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Persistenz
- Configuration
- API
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Reference`: stellt eine konkrete gerichtete Zuordnung zu einem bezeichneten Gegenstand her.
- `Attribute`: beschreibt eine Eigenschaft eines Gegenstands.
- `Metadata`: liefert beschreibende Angaben für einen Kontext.

##### Verwandte Begriffe

- Entity
- Reference
- Metadata
- API

##### Referenzen

- PB-000
- PB-003

#### Reference

##### Definition

Eine `Reference` ist eine gerichtete Zuordnung von einem technischen Gegenstand zu einem anderen eindeutig bezeichneten Gegenstand.

##### Zweck

Der Begriff bildet Beziehungen ab, ohne den referenzierten Gegenstand zu duplizieren oder dessen Lebenszyklus und Repräsentation festzulegen.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Simulation
- Persistenz
- Configuration
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Identifier`: ist die eindeutige Bezeichnung, anhand derer ein Gegenstand erkannt werden kann.
- `Attribute`: ist eine einzelne Eigenschaft eines Gegenstands.
- `Component`: bündelt zusammengehörige Daten oder Fähigkeiten.

##### Verwandte Begriffe

- Entity
- Identifier
- Attribute
- Component

##### Referenzen

- PB-000
- PB-003

### 11.2 Simulation

#### Simulation

##### Definition

Für `Simulation` gilt ausschließlich die kanonische Definition aus Kapitel 3.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Simulation der technischen Verantwortung zu, ohne eine konkurrierende technische Definition einzuführen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Savegames
- Tests
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Simulation Step`: ist ein abgegrenzter Fortschrittsabschnitt innerhalb der Simulation.
- `Simulation State`: umfasst die zu einem Zeitpunkt autoritativ maßgeblichen Simulationsdaten.
- `Processor`: verarbeitet abgegrenzte Eingaben nach festgelegten Regeln.

##### Verwandte Begriffe

- Simulation Step
- Simulation State
- State Change
- Snapshot
- System

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Simulation Step

##### Definition

Ein `Simulation Step` ist ein abgegrenzter Fortschrittsabschnitt, in dem die Simulation die dafür maßgeblichen Eingaben und Regeln auf einen Ausgangszustand anwendet.

##### Zweck

Der Begriff schafft einen eindeutigen Bezugsrahmen für einen Teil der Zustandsentwicklung, ohne dessen Dauer, Umfang oder Ausführungsreihenfolge festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Tests
- Diagnose
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Simulation`: bezeichnet die gesamte Verantwortung für regelgebundene Zustandsentwicklung.
- `State Change`: ist eine einzelne feststellbare Veränderung des Zustands.
- `Snapshot`: bildet einen Zustand zu einem bestimmten Bezugspunkt ab.

##### Verwandte Begriffe

- Simulation
- Simulation State
- State Change
- Snapshot
- Processor

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Simulation State

##### Definition

Der `Simulation State` ist die Gesamtheit der zu einem bestimmten Zeitpunkt für die Simulation autoritativ maßgeblichen Daten und Beziehungen.

##### Zweck

Der Begriff grenzt den vollständigen technischen Simulationszustand von einzelnen Eigenschaften, Veränderungen und gespeicherten Abbildungen ab.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Savegames
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `State`: bezeichnet den Zustand eines abgegrenzten Gameplay-Gegenstands.
- `State Change`: ist eine feststellbare Veränderung zwischen Zuständen.
- `Snapshot`: ist eine abgegrenzte Abbildung eines Zustands.
- `Savegame`: ist ein für die spätere Fortsetzung bestimmter persistenter Bestand.

##### Verwandte Begriffe

- Simulation
- Simulation Step
- State Change
- Snapshot
- Savegame

##### Referenzen

- PB-001
- PB-002
- PB-003

#### State Change

##### Definition

Ein `State Change` ist eine feststellbare Veränderung mindestens eines Bestandteils des Simulation State gegenüber seinem maßgeblichen Ausgangszustand.

##### Zweck

Der Begriff bezeichnet die Veränderung selbst, unabhängig von ihrem Auslöser, ihrer Verarbeitung, ihrer Darstellung oder ihrer Speicherung.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Persistenz
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Event`: ist eine festgestellte und benannte Begebenheit.
- `Command`: fordert die Ausführung einer bestimmten Absicht an.
- `Message`: übermittelt abgegrenzte Information.
- `Snapshot`: bildet einen Zustand an einem Bezugspunkt ab.

##### Verwandte Begriffe

- Simulation State
- Simulation Step
- Event
- Command
- Snapshot

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Snapshot

##### Definition

Ein `Snapshot` ist eine abgegrenzte, einem bestimmten Bezugspunkt zugeordnete Abbildung eines Zustands.

##### Zweck

Der Begriff ermöglicht Vergleich, Übergabe, Prüfung oder Wiederherstellung auf Grundlage eines festgehaltenen Zustandsbildes, ohne dessen Umfang oder Aufbewahrung festzulegen.

##### Verwendung

- Technische Spezifikationen
- Simulation
- Persistenz
- Savegames
- Tests
- Diagnose

##### Darf nicht verwechselt werden mit

- `Simulation State`: ist der vollständige autoritative Zustand der Simulation zu einem Zeitpunkt.
- `Savegame`: ist ein persistenter Bestand zur späteren Fortsetzung.
- `Serialization`: überführt Daten zwischen einer internen und einer übertragbaren Repräsentation.
- `Metadata`: beschreibt Daten oder technische Artefakte.

##### Verwandte Begriffe

- Simulation State
- State Change
- Savegame
- Serialization
- Metadata

##### Referenzen

- PB-001
- PB-002
- PB-003

### 11.3 Systeme

#### System

##### Definition

Für `System` gilt ausschließlich die kanonische Definition aus Kapitel 3; seine technische Umsetzung begründet keine zweite Bedeutung.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet System der technischen Architektur zu, ohne seine fachliche Grenze durch eine Implementierungsgrenze zu ersetzen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Tests
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Subsystem`: übernimmt einen abgegrenzten Teil der Verantwortung eines übergeordneten Systemzusammenhangs.
- `Service`: stellt eine klar bestimmte technische Fähigkeit zur Nutzung bereit.
- `Processor`: verarbeitet eine abgegrenzte Menge von Eingaben nach festgelegten Regeln.
- `Manager`: koordiniert Verantwortungen über deren Grenzen hinweg.

##### Verwandte Begriffe

- Subsystem
- Service
- Processor
- Manager
- Module

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Subsystem

##### Definition

Ein `Subsystem` ist ein abgegrenzter Teil eines übergeordneten Systemzusammenhangs, der einen Teil von dessen technischer Verantwortung übernimmt.

##### Zweck

Der Begriff erlaubt die fachliche Unterteilung eines Systemzusammenhangs, ohne eine feste Hierarchietiefe oder konkrete innere Struktur festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Tests
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `System`: trägt die abgegrenzte Verantwortung für einen Ergebnisbereich.
- `Service`: stellt eine bestimmte Fähigkeit für andere technische Beteiligte bereit.
- `Module`: ist eine abgrenzbare Einheit zur Organisation und Bereitstellung technischen Funktionsumfangs.

##### Verwandte Begriffe

- System
- Service
- Processor
- Module

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Service

##### Definition

Ein `Service` ist eine abgegrenzte technische Fähigkeit, die anderen technischen Beteiligten über einen definierten Nutzungszugang bereitgestellt wird.

##### Zweck

Der Begriff bezeichnet eine nutzbare Fähigkeit und ihren Verantwortungsumfang, ohne ihre interne Verarbeitung, Lebensdauer oder Bereitstellungsform festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Persistenz
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `System`: verantwortet einen technischen Ergebnisbereich und dessen zusammengehörige Regeln.
- `Processor`: verarbeitet abgegrenzte Eingaben nach festgelegten Regeln.
- `Manager`: koordiniert mehrere Verantwortungen oder technische Beteiligte.
- `API`: definiert den Vertrag für zulässige Interaktionen.

##### Verwandte Begriffe

- System
- Subsystem
- Processor
- Manager
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Processor

##### Definition

Ein `Processor` ist eine technische Verantwortung, die eine abgegrenzte Menge von Eingaben nach festgelegten Regeln verarbeitet und daraus bestimmte Ausgaben oder State Changes ableitet.

##### Zweck

Der Begriff bezeichnet regelgebundene Verarbeitung, ohne einen gesamten Systembereich, einen dauerhaft bereitgestellten Nutzungszugang oder übergreifende Koordination zu benennen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Tests
- Diagnose
- Dokumentation

##### Darf nicht verwechselt werden mit

- `System`: umfasst die Verantwortung für einen gesamten technischen Ergebnisbereich.
- `Service`: stellt eine klar bestimmte technische Fähigkeit zur Nutzung bereit.
- `Manager`: koordiniert mehrere Verantwortungen oder technische Beteiligte.

##### Verwandte Begriffe

- System
- Subsystem
- Service
- Manager
- Simulation Step

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Manager

##### Definition

Ein `Manager` ist eine technische Verantwortung für die Koordination mehrerer abgegrenzter Verantwortungen, Gegenstände oder Abläufe über deren jeweilige Grenzen hinweg.

##### Zweck

Der Begriff bezeichnet übergreifende Koordination, wenn diese selbst eine klar benennbare Verantwortung bildet, ohne allgemeine Zuständigkeit für beliebige Verarbeitung auszudrücken.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- Persistenz
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `System`: verantwortet einen fachlich abgegrenzten technischen Ergebnisbereich.
- `Service`: stellt eine bestimmte technische Fähigkeit zur Nutzung bereit.
- `Processor`: verarbeitet abgegrenzte Eingaben nach festgelegten Regeln.

##### Verwandte Begriffe

- System
- Subsystem
- Service
- Processor

##### Referenzen

- PB-001
- PB-002
- PB-003

### 11.4 Kommunikation

#### Event

##### Definition

Für `Event` gilt ausschließlich die kanonische Definition aus Abschnitt 10.4; seine technische Kommunikation oder Verarbeitung begründet keine zweite Bedeutung.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Event der technischen Kommunikation zu, ohne das eingetretene Ereignis mit seiner Mitteilung gleichzusetzen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Command`: fordert die Ausführung einer bestimmten Absicht an.
- `Message`: ist der allgemeine Übermittlungsgegenstand für abgegrenzte Information.
- `Request`: bittet einen bestimmten Empfänger um Bearbeitung und erwartet eine Response.
- `State Change`: ist die Veränderung des Zustands und nicht deren Mitteilung.

##### Verwandte Begriffe

- Message
- Command
- State Change
- Request
- Response

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Command

##### Definition

Ein `Command` ist eine an einen zuständigen technischen Empfänger gerichtete Aufforderung, eine bestimmte Absicht zu prüfen und bei Zulässigkeit auszuführen.

##### Zweck

Der Begriff übermittelt eine beabsichtigte Handlung, ohne deren Annahme, erfolgreiche Ausführung oder daraus entstehende Zustandsänderung vorwegzunehmen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- UI
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Event`: teilt eine bereits eingetretene Begebenheit mit.
- `Request`: bittet um eine Bearbeitung, deren Ergebnis als Response zurückgegeben wird.
- `Message`: ist der allgemeinere Übermittlungsgegenstand.
- `Action`: ist eine autorisierte Gameplay-Handlung.

##### Verwandte Begriffe

- Message
- Event
- Request
- Response
- Action

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Message

##### Definition

Eine `Message` ist ein abgegrenzter Übermittlungsgegenstand, der Information zwischen technischen Beteiligten transportiert.

##### Zweck

Der Begriff bezeichnet die übermittelte Information unabhängig davon, ob sie eine Tatsache, Aufforderung, Anfrage oder Antwort ausdrückt.

##### Verwendung

- Technische Spezifikationen
- Engine
- Simulation
- UI
- Tests
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Event`: kommuniziert eine bereits eingetretene Begebenheit.
- `Command`: fordert die Prüfung und mögliche Ausführung einer Absicht an.
- `Request`: erwartet eine zugeordnete Response.
- `Response`: beantwortet eine bestimmte Request.

##### Verwandte Begriffe

- Event
- Command
- Request
- Response
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Request

##### Definition

Eine `Request` ist eine an einen bestimmten technischen Empfänger gerichtete Bitte um Bearbeitung, für die eine zugeordnete `Response` erwartet wird.

##### Zweck

Der Begriff kennzeichnet eine korrelierte Interaktion mit erwartetem Ergebnis, ohne eine Zustandsänderung oder erfolgreiche Bearbeitung zu garantieren.

##### Verwendung

- Technische Spezifikationen
- Engine
- UI
- Tests
- API
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Command`: fordert die Prüfung und mögliche Ausführung einer Absicht an, ohne durch den Begriff eine Response zu verlangen.
- `Message`: ist der allgemeine Übermittlungsgegenstand.
- `Response`: enthält das der Request zugeordnete Ergebnis ihrer Bearbeitung.

##### Verwandte Begriffe

- Response
- Message
- Command
- Service
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Response

##### Definition

Eine `Response` ist das einer bestimmten Request zugeordnete technische Ergebnis ihrer Bearbeitung.

##### Zweck

Der Begriff schließt eine angeforderte Interaktion eindeutig ab, ohne Erfolg, Dateninhalt oder Zustandsänderung des Ergebnisses vorauszusetzen.

##### Verwendung

- Technische Spezifikationen
- Engine
- UI
- Tests
- API
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Request`: ist die vorausgehende Bitte um Bearbeitung.
- `Event`: teilt eine bereits eingetretene Begebenheit mit und beantwortet nicht notwendigerweise eine Request.
- `Message`: ist der allgemeine Übermittlungsgegenstand.

##### Verwandte Begriffe

- Request
- Message
- Event
- Service
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

### 11.5 Persistenz

#### Savegame

##### Definition

Ein `Savegame` ist ein persistenter, in sich zuordenbarer Bestand der für eine spätere Fortsetzung eines Spielzusammenhangs erforderlichen Daten.

##### Zweck

Der Begriff bezeichnet das fortsetzbare gespeicherte Ergebnis, ohne Speicherform, Umfang, Erstellung oder Wiederherstellungsverfahren festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Persistenz
- UI
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Snapshot`: ist eine Abbildung eines Zustands für einen bestimmten Bezugspunkt und nicht zwingend fortsetzbar.
- `Persistence`: ist die Verantwortung für den Erhalt von Daten über ihre unmittelbare Verarbeitung hinaus.
- `Serialization`: überführt Daten zwischen Repräsentationen.
- `Configuration`: bestimmt anpassbare Vorgaben für Verhalten oder Aufbau.

##### Verwandte Begriffe

- Persistence
- Serialization
- Snapshot
- Metadata
- Configuration

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Serialization

##### Definition

`Serialization` ist die regelgebundene Überführung von Daten zwischen ihrer für die laufende Verarbeitung maßgeblichen Repräsentation und einer übertragbaren oder aufbewahrbaren Repräsentation.

##### Zweck

Der Begriff bezeichnet die Repräsentationsumwandlung, ohne Speicherung, Übertragung, Format oder langfristigen Erhalt vorauszusetzen.

##### Verwendung

- Technische Spezifikationen
- Persistenz
- Savegames
- API
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Persistence`: erhält Daten über ihre unmittelbare Verarbeitung hinaus.
- `Savegame`: ist ein fortsetzbarer persistenter Datenbestand.
- `Snapshot`: ist eine einem Bezugspunkt zugeordnete Zustandsabbildung.
- `Configuration`: enthält anpassbare Vorgaben.

##### Verwandte Begriffe

- Persistence
- Savegame
- Snapshot
- Metadata
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Persistence

##### Definition

`Persistence` ist die technische Verantwortung, Daten über den Zeitraum ihrer unmittelbaren Verarbeitung hinaus zu erhalten und für eine spätere Nutzung bereitzustellen.

##### Zweck

Der Begriff bezeichnet den dauerhaften Datenerhalt als Verantwortung, ohne Repräsentationsumwandlung, konkreten Speicherort oder bestimmten Nutzungszweck festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Savegames
- Configuration
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Serialization`: überführt Daten zwischen Repräsentationen.
- `Savegame`: ist ein bestimmter persistenter Bestand zur Fortsetzung eines Spielzusammenhangs.
- `Configuration`: umfasst anpassbare Vorgaben für Verhalten oder Aufbau.
- `Metadata`: beschreibt Daten oder technische Artefakte.

##### Verwandte Begriffe

- Serialization
- Savegame
- Configuration
- Metadata
- Snapshot

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Configuration

##### Definition

Für `Configuration` gilt ausschließlich die kanonische Definition aus Kapitel 3.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Configuration der technischen Architektur zu, ohne eine konkurrierende technische Definition einzuführen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Persistenz
- UI
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Simulation State`: enthält die autoritativ maßgeblichen Daten der laufenden Simulation.
- `Metadata`: beschreibt andere Daten oder technische Artefakte für einen bestimmten Kontext.
- `Persistence`: ist die Verantwortung für langfristigen Datenerhalt.
- `Savegame`: dient der späteren Fortsetzung eines Spielzusammenhangs.

##### Verwandte Begriffe

- Metadata
- Persistence
- Module
- Plugin
- Mod

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Metadata

##### Definition

`Metadata` sind einem bestimmten Kontext zugeordnete Angaben, die andere Daten oder technische Artefakte beschreiben, einordnen oder auffindbar machen.

##### Zweck

Der Begriff bezeichnet beschreibende Zusatzangaben, ohne sie mit den beschriebenen Nutzdaten, anpassbaren Vorgaben oder deren dauerhaftem Erhalt gleichzusetzen.

##### Verwendung

- Technische Spezifikationen
- Datenmodelle
- Persistenz
- Savegames
- Modding
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Attribute`: ist eine einzelne fachlich maßgebliche Eigenschaft eines technischen Gegenstands.
- `Configuration`: bestimmt anpassbare Vorgaben für Verhalten oder Aufbau.
- `Persistence`: bezeichnet die Verantwortung für Datenerhalt.
- `Identifier`: bezeichnet einen Gegenstand eindeutig.

##### Verwandte Begriffe

- Attribute
- Identifier
- Configuration
- Persistence
- Savegame

##### Referenzen

- PB-000
- PB-002
- PB-003

### 11.6 Erweiterbarkeit

#### Module

##### Definition

Für `Module` gilt ausschließlich die kanonische Definition aus Kapitel 3.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Module der technischen Erweiterbarkeit zu, ohne eine konkurrierende technische Definition einzuführen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Tests
- Modding
- Dokumentation
- Projektstruktur

##### Darf nicht verwechselt werden mit

- `Subsystem`: übernimmt einen Teil der Verantwortung eines übergeordneten Systemzusammenhangs.
- `Plugin`: ergänzt einen vorgesehenen technischen Anschluss als eigenständig zuordenbare Einheit.
- `Extension`: ist jede ausdrücklich vorgesehene Ergänzung eines bestehenden Funktionsumfangs.
- `Mod`: ist eine nicht zum unveränderten Kernbestand gehörende Anpassungs- oder Inhaltseinheit.

##### Verwandte Begriffe

- System
- Subsystem
- Plugin
- Extension
- Mod

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Plugin

##### Definition

Ein `Plugin` ist eine eigenständig zuordenbare technische Einheit, die einen dafür vorgesehenen Anschluss nutzt, um einen bestehenden Funktionsumfang zu ergänzen.

##### Zweck

Der Begriff bezeichnet eine anschlussgebundene Erweiterungseinheit, ohne ihre Herkunft, Bereitstellung, Aktivierung oder internen Mittel festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Modding
- Tests
- Configuration
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Extension`: ist der allgemeine Begriff für eine vorgesehene Ergänzung und muss keine eigenständige Anschlusseinheit sein.
- `Module`: organisiert einen zusammengehörigen technischen Funktionsumfang unabhängig von einer Erweiterungsrolle.
- `Mod`: passt das Projekt oder seine Inhalte außerhalb des unveränderten Kernbestands an.
- `API`: definiert einen Vertrag für zulässige Interaktionen.

##### Verwandte Begriffe

- Extension
- Module
- Mod
- API
- Configuration

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Extension

##### Definition

Eine `Extension` ist eine ausdrücklich vorgesehene Ergänzung eines bestehenden technischen Funktionsumfangs, die dessen Grundverantwortung nicht ersetzt.

##### Zweck

Der Begriff bezeichnet die Erweiterung als Rolle oder Ergebnis, unabhängig davon, ob sie durch ein Plugin, ein Module, einen Mod oder einen anderen vorgesehenen Mechanismus bereitgestellt wird.

##### Verwendung

- Technische Spezifikationen
- Engine
- Modding
- Tests
- API
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Plugin`: ist eine eigenständig zuordenbare Einheit an einem vorgesehenen Anschluss.
- `Module`: grenzt zusammengehörigen technischen Funktionsumfang organisatorisch ab.
- `Mod`: ist eine Anpassungs- oder Inhaltseinheit außerhalb des unveränderten Kernbestands.
- `API`: ist der Interaktionsvertrag und nicht die Ergänzung selbst.

##### Verwandte Begriffe

- Plugin
- Module
- Mod
- API

##### Referenzen

- PB-001
- PB-002
- PB-003

#### Mod

##### Definition

Ein `Mod` ist eine als Einheit zuordenbare Anpassung oder Ergänzung des Projekts oder seiner Inhalte, die nicht zum unveränderten Kernbestand gehört.

##### Zweck

Der Begriff grenzt nutzer- oder projekterweiternde Änderungen vom unveränderten Kernbestand ab, ohne ihren Umfang, ihre Herkunft oder ihre technischen Mittel festzulegen.

##### Verwendung

- Technische Spezifikationen
- Engine
- Modding
- UI
- Configuration
- Dokumentation

##### Darf nicht verwechselt werden mit

- `Plugin`: nutzt als technische Einheit einen vorgesehenen Anschluss zur Ergänzung von Funktionsumfang.
- `Extension`: bezeichnet allgemein eine vorgesehene Ergänzung eines bestehenden Funktionsumfangs.
- `Module`: organisiert technischen Funktionsumfang und ist nicht durch seine Herkunft vom Kernbestand bestimmt.
- `Scenario`: definiert Ausgangsbedingungen und Inhalte eines Spielzusammenhangs.

##### Verwandte Begriffe

- Plugin
- Extension
- Module
- API
- Configuration

##### Referenzen

- PB-001
- PB-002
- PB-003

#### API

##### Definition

Eine `API` ist ein ausdrücklich definierter Vertrag für zulässige Interaktionen zwischen voneinander abgegrenzten technischen Beteiligten.

##### Zweck

Der Begriff legt die Bedeutung, Voraussetzungen und erwartbaren Ergebnisse von Interaktionen fest, ohne interne Verarbeitung oder konkrete Verbindungsmittel vorzuschreiben.

##### Verwendung

- Technische Spezifikationen
- Engine
- Modding
- Tests
- Dokumentation
- Projektstruktur

##### Darf nicht verwechselt werden mit

- `Service`: ist eine bereitgestellte technische Fähigkeit, deren Nutzung durch eine API beschrieben werden kann.
- `Message`: ist ein übermittelter Informationsgegenstand innerhalb einer Interaktion.
- `Plugin`: ist eine Erweiterungseinheit, die eine API nutzen kann.
- `Extension`: ist eine Ergänzung des Funktionsumfangs und nicht deren Interaktionsvertrag.

##### Verwandte Begriffe

- Service
- Message
- Request
- Response
- Plugin
- Extension

##### Referenzen

- PB-001
- PB-002
- PB-003


## Kapitel 12 – Identifier-Standards

Stabile Identifier ermöglichen die langfristig eindeutige Wiedererkennung und Referenzierung derselben Identity in Dokumentation, Inhalten und technischen Zusammenhängen. Sie dienen ausschließlich der Identifikation; Anzeigenamen und Identifier sind unterschiedliche Konzepte, und ein Identifier stellt niemals einen Benutzertext dar.

Alle Identifier des Projekts MUST ausschließlich in englischer Sprache erstellt werden und MUST sprachunabhängig bleiben. Sie MUST niemals lokalisiert werden; Benutzeroberflächen MAY stattdessen lokalisierte Anzeigenamen und Beschreibungen verwenden. Referenzen MUST Identifier statt Anzeigenamen verwenden.

Ein veröffentlichter Identifier MUST stabil bleiben und MUST weder geändert noch einer anderen Identity zugeordnet werden. Die Beispiele dieses Kapitels sind ausschließlich illustrativ, erläutern die Identifier-Philosophie und bilden weder vollständige Identifierlisten noch verbindliche Inhaltskataloge.

### 12.1 Grundprinzipien

#### Identity

##### Definition

`Identity` ist die über Zeit fortbestehende begriffliche Gleichheit eines bestimmten Gegenstands, unabhängig von veränderlichen Eigenschaften oder Anzeigenamen.

##### Zweck

Der Begriff bestimmt, welcher Gegenstand als derselbe wiedererkannt wird.

##### Verwendung

- Governance
- Dokumentation
- Game Design
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Identifier`: ist die stabile Bezeichnung einer Identity.
- `Namespace`: grenzt den Eindeutigkeitsraum ab.

##### Verwandte Begriffe

- Identifier
- Namespace
- Scope

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Identifier

##### Definition

`Identifier` ist eine innerhalb eines festgelegten Namespace eindeutige, sprachunabhängige und dauerhaft stabile englische Bezeichnung einer Identity.

##### Zweck

Der Begriff dient ausschließlich der eindeutigen Identifikation und Referenzierung.

##### Verwendung

- Governance
- Dokumentation
- Game Design
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Identity`: ist der bezeichnete Gegenstand als derselbe.
- `Anzeigename`: ist ein für Menschen bestimmter und lokalisierbarer Text.

##### Verwandte Begriffe

- Identity
- Namespace
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Namespace

##### Definition

`Namespace` ist ein benannter Abgrenzungsraum, innerhalb dessen Identifier eindeutig sein müssen.

##### Zweck

Der Begriff verhindert Kollisionen zwischen getrennten Identifier-Bereichen.

##### Verwendung

- Governance
- Dokumentation
- Game Design
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Scope`: bestimmt den Geltungsbereich einer Regel oder Zuordnung.
- `Identifier`: bezeichnet innerhalb des Namespace genau eine Identity.

##### Verwandte Begriffe

- Identifier
- Scope
- Namespacing

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Scope

##### Definition

`Scope` ist der ausdrücklich abgegrenzte Geltungsbereich einer Benennung, Regel oder Zuordnung.

##### Zweck

Der Begriff macht sichtbar, in welchem Zusammenhang eine Festlegung maßgeblich ist.

##### Verwendung

- Governance
- Dokumentation
- Game Design
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Namespace`: bestimmt den Eindeutigkeitsraum von Identifiern.
- `Identity`: bezeichnet die fortbestehende Gleichheit eines Gegenstands.

##### Verwandte Begriffe

- Namespace
- Identity
- Configuration Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### 12.2 Dokument-Identifier

#### Document ID

##### Definition

`Document ID` ist der kanonische Identifier eines Project-Bible-Dokuments.

##### Zweck

Der Begriff ermöglicht die dauerhafte, vom Titel unabhängige Zuordnung eines Dokuments.

##### Verwendung

- Governance
- Dokumentation
- Traceability
- Reviews

##### Darf nicht verwechselt werden mit

- `Canonical Path`: bezeichnet dessen kanonischen Ablageort.
- `Version Identifier`: bezeichnet einen bestimmten Versionsstand.

##### Verwandte Begriffe

- Identifier
- Canonical Path
- Version Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Canonical Path

##### Definition

`Canonical Path` ist der für ein Dokument oder Artefakt autoritativ festgelegte Pfad.

##### Zweck

Der Begriff bestimmt den maßgeblichen Ablagebezug, ohne selbst die Identity des Dokuments zu ersetzen.

##### Verwendung

- Governance
- Dokumentation
- Traceability
- Reviews

##### Darf nicht verwechselt werden mit

- `Document ID`: bezeichnet das Dokument unabhängig vom Pfad.
- `Internal Reference`: verweist innerhalb des Projekts.

##### Verwandte Begriffe

- Document ID
- Internal Reference
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Version Identifier

##### Definition

`Version Identifier` ist ein Identifier für einen ausdrücklich abgegrenzten Versionsstand eines Dokuments oder Artefakts.

##### Zweck

Der Begriff macht unterschiedliche freigegebene Stände unterscheidbar, ohne die fortbestehende Identity zu ändern.

##### Verwendung

- Governance
- Dokumentation
- Traceability
- Reviews

##### Darf nicht verwechselt werden mit

- `Document ID`: bezeichnet das Dokument über Versionen hinweg.
- `Transient Reference`: ist nicht auf langfristige Gültigkeit angelegt.

##### Verwandte Begriffe

- Document ID
- Versioning
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### 12.3 Inhalts-Identifier

#### Country Identifier

##### Definition

`Country Identifier` ist der Identifier einer Country-Identity.

##### Zweck

Der Begriff referenziert ein Country sprachunabhängig und unabhängig von seinem Anzeigenamen.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Region Identifier`: bezeichnet eine Region.
- `Faction Identifier`: bezeichnet eine Faction.

##### Verwandte Begriffe

- Identifier
- Country
- Region Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Region Identifier

##### Definition

`Region Identifier` ist der Identifier einer Region-Identity.

##### Zweck

Der Begriff referenziert eine Region stabil über lokalisierte Bezeichnungen hinweg.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Country Identifier`: bezeichnet ein Country.
- `Resource Identifier`: bezeichnet eine Resource.

##### Verwandte Begriffe

- Identifier
- Region
- Country Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Character Identifier

##### Definition

`Character Identifier` ist der Identifier einer Character-Identity.

##### Zweck

Der Begriff referenziert einen Character unabhängig von Titel, Rolle oder Anzeigename.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Faction Identifier`: bezeichnet eine Faction.
- `Country Identifier`: bezeichnet ein Country.

##### Verwandte Begriffe

- Identifier
- Character
- Faction Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Law Identifier

##### Definition

`Law Identifier` ist der Identifier einer Law-Identity.

##### Zweck

Der Begriff referenziert ein Law unabhängig von seiner lokalisierten Darstellung.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Project Identifier`: bezeichnet ein Project.
- `Technology Identifier`: bezeichnet eine Technology.

##### Verwandte Begriffe

- Identifier
- Law
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Project Identifier

##### Definition

`Project Identifier` ist der Identifier einer Project-Identity.

##### Zweck

Der Begriff referenziert ein Project unabhängig von Anzeigename oder Fortschritt.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Mission Identifier`: bezeichnet eine Mission.
- `Event Identifier`: bezeichnet ein Event.

##### Verwandte Begriffe

- Identifier
- Project
- Mission Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Mission Identifier

##### Definition

`Mission Identifier` ist der Identifier einer Mission-Identity.

##### Zweck

Der Begriff referenziert eine Mission unabhängig von Status und Benutzertext.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Project Identifier`: bezeichnet ein Project.
- `Event Identifier`: bezeichnet ein Event.

##### Verwandte Begriffe

- Identifier
- Mission
- Project Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Event Identifier

##### Definition

`Event Identifier` ist der Identifier einer Event-Identity.

##### Zweck

Der Begriff referenziert ein fachliches Event unabhängig von seiner lokalisierten Beschreibung.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Mission Identifier`: bezeichnet eine Mission.
- `System Identifier`: bezeichnet ein technisches System.

##### Verwandte Begriffe

- Identifier
- Event
- Mission Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Faction Identifier

##### Definition

`Faction Identifier` ist der Identifier einer Faction-Identity.

##### Zweck

Der Begriff referenziert eine Faction unabhängig von Name, Mitgliedschaft oder Führung.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Country Identifier`: bezeichnet ein Country.
- `Character Identifier`: bezeichnet einen Character.

##### Verwandte Begriffe

- Identifier
- Faction
- Character Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Resource Identifier

##### Definition

`Resource Identifier` ist der Identifier einer Resource-Identity.

##### Zweck

Der Begriff referenziert eine Resource unabhängig von lokalisierten Bezeichnungen.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Building Identifier`: bezeichnet ein Building.
- `Technology Identifier`: bezeichnet eine Technology.

##### Verwandte Begriffe

- Identifier
- Resource
- Building Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Building Identifier

##### Definition

`Building Identifier` ist der Identifier einer Building-Identity.

##### Zweck

Der Begriff referenziert ein Building unabhängig von lokalisierter Darstellung.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Resource Identifier`: bezeichnet eine Resource.
- `Technology Identifier`: bezeichnet eine Technology.

##### Verwandte Begriffe

- Identifier
- Building
- Resource Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Technology Identifier

##### Definition

`Technology Identifier` ist der Identifier einer Technology-Identity.

##### Zweck

Der Begriff referenziert eine Technology unabhängig von Anzeigename oder Beschreibung.

##### Verwendung

- Content
- Game Design
- Modding
- UI

##### Darf nicht verwechselt werden mit

- `Law Identifier`: bezeichnet ein Law.
- `Building Identifier`: bezeichnet ein Building.

##### Verwandte Begriffe

- Identifier
- Technology
- Building Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### 12.4 Technische Identifier

#### System Identifier

##### Definition

`System Identifier` ist der Identifier einer technischen System-Identity.

##### Zweck

Der Begriff referenziert eine technische Systemverantwortung stabil und sprachunabhängig.

##### Verwendung

- Technische Spezifikationen
- Dokumentation
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Component Identifier`: bezeichnet eine Component.
- `API Identifier`: bezeichnet eine API.

##### Verwandte Begriffe

- Identifier
- System
- Component Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Component Identifier

##### Definition

`Component Identifier` ist der Identifier einer technischen Component-Identity.

##### Zweck

Der Begriff referenziert eine Component unabhängig von ihrer Darstellung oder Einordnung.

##### Verwendung

- Technische Spezifikationen
- Dokumentation
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `System Identifier`: bezeichnet ein System.
- `Configuration Identifier`: bezeichnet eine Configuration.

##### Verwandte Begriffe

- Identifier
- Component
- System Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Configuration Identifier

##### Definition

`Configuration Identifier` ist der Identifier einer Configuration-Identity.

##### Zweck

Der Begriff referenziert eine abgegrenzte Configuration unabhängig von ihren Werten.

##### Verwendung

- Technische Spezifikationen
- Dokumentation
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Database Identifier`: bezeichnet einen Datenbankgegenstand.
- `Component Identifier`: bezeichnet eine Component.

##### Verwandte Begriffe

- Identifier
- Configuration
- Component Identifier

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### API Identifier

##### Definition

`API Identifier` ist der Identifier einer API-Identity.

##### Zweck

Der Begriff referenziert einen abgegrenzten API-Vertrag unabhängig von Dokumentationstexten.

##### Verwendung

- Technische Spezifikationen
- Dokumentation
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `System Identifier`: bezeichnet ein System.
- `Database Identifier`: bezeichnet einen Datenbankgegenstand.

##### Verwandte Begriffe

- Identifier
- API
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Database Identifier

##### Definition

`Database Identifier` ist der Identifier einer dauerhaft zuordenbaren Identity im Datenbankkontext.

##### Zweck

Der Begriff ermöglicht stabile Zuordnung im Datenbankkontext, ohne Speichertechnik oder Schema festzulegen.

##### Verwendung

- Technische Spezifikationen
- Dokumentation
- Tests
- Modding

##### Darf nicht verwechselt werden mit

- `Configuration Identifier`: bezeichnet eine Configuration.
- `API Identifier`: bezeichnet eine API.

##### Verwandte Begriffe

- Identifier
- Persistence
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### 12.5 Referenzen

#### Internal Reference

##### Definition

`Internal Reference` ist eine Reference auf eine Identity innerhalb des Projekts.

##### Zweck

Der Begriff verknüpft Projektartefakte durch Identifier statt durch Anzeigenamen.

##### Verwendung

- Dokumentation
- Traceability
- Reviews
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `External Reference`: verweist auf einen Gegenstand außerhalb des Projekts.
- `Stable Reference`: bleibt langfristig auflösbar.

##### Verwandte Begriffe

- Reference
- Identifier
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### External Reference

##### Definition

`External Reference` ist eine Reference auf einen außerhalb des Projekts verantworteten Gegenstand.

##### Zweck

Der Begriff ordnet externe Quellen oder Artefakte zu, ohne ihnen eine interne Identity zuzuschreiben.

##### Verwendung

- Dokumentation
- Traceability
- Reviews
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Internal Reference`: verweist innerhalb des Projekts.
- `Stable Reference`: beschreibt die angestrebte Dauerhaftigkeit.

##### Verwandte Begriffe

- Reference
- Internal Reference
- Transient Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Stable Reference

##### Definition

`Stable Reference` ist eine Reference, deren Zielzuordnung langfristig unverändert und auflösbar bleiben soll.

##### Zweck

Der Begriff sichert dauerhafte Nachvollziehbarkeit über Anzeigenamen und Überarbeitungen hinweg.

##### Verwendung

- Dokumentation
- Traceability
- Reviews
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Transient Reference`: ist nur für einen begrenzten Zusammenhang bestimmt.
- `Version Identifier`: bezeichnet einen bestimmten Stand.

##### Verwandte Begriffe

- Reference
- Identifier
- Immutability

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Transient Reference

##### Definition

`Transient Reference` ist eine ausdrücklich nur für einen begrenzten Zusammenhang oder Zeitraum bestimmte Reference.

##### Zweck

Der Begriff erlaubt vorläufige Zuordnung, ohne dauerhafte Verlässlichkeit zu behaupten.

##### Verwendung

- Dokumentation
- Traceability
- Reviews
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Stable Reference`: ist auf langfristige Auflösbarkeit angelegt.
- `Internal Reference`: bestimmt die Herkunft des Ziels.

##### Verwandte Begriffe

- Reference
- Stable Reference
- Scope

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

### 12.6 Identifier-Regeln

#### Uniqueness

##### Definition

`Uniqueness` ist die Regel, dass ein Identifier innerhalb seines Namespace genau einer Identity zugeordnet ist.

##### Zweck

Der Begriff verhindert Mehrdeutigkeit und kollidierende Zuordnungen.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Stability`: erhält eine Zuordnung über Zeit.
- `Namespacing`: grenzt den Eindeutigkeitsraum ab.

##### Verwandte Begriffe

- Identifier
- Namespace
- Identity

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Stability

##### Definition

`Stability` ist die Regel, dass die Zuordnung eines veröffentlichten Identifier zu seiner Identity dauerhaft erhalten bleibt.

##### Zweck

Der Begriff ermöglicht langfristig verlässliche Referenzen.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Immutability`: verbietet die nachträgliche Änderung des veröffentlichten Identifier.
- `Versioning`: unterscheidet Stände.

##### Verwandte Begriffe

- Identifier
- Stable Reference
- Immutability

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Readability

##### Definition

`Readability` ist die Regel, Identifier für Menschen erkennbar und sinnvoll unterscheidbar zu benennen, ohne Benutzertext zu bilden.

##### Zweck

Der Begriff unterstützt Prüfung und Wartung, ohne Lokalisierung oder Bedeutungsableitung zu verlangen.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Anzeigename`: ist lokalisierbarer Benutzertext.
- `Stability`: hat Vorrang vor späterer sprachlicher Verbesserung.

##### Verwandte Begriffe

- Identifier
- Namespacing
- Stability

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Namespacing

##### Definition

`Namespacing` ist die Regel, Identifier durch einen ausdrücklich bestimmten Namespace zu ordnen und dort eindeutig zu halten.

##### Zweck

Der Begriff verhindert Kollisionen und macht den Identifikationsbereich erkennbar.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Uniqueness`: fordert Eindeutigkeit innerhalb dieses Bereichs.
- `Scope`: begrenzt den Geltungszusammenhang.

##### Verwandte Begriffe

- Namespace
- Uniqueness
- Scope

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Versioning

##### Definition

`Versioning` ist die Regel, unterschiedliche maßgebliche Stände durch gesonderte Versionsangaben zu unterscheiden, ohne bestehende Identity umzubenennen.

##### Zweck

Der Begriff ermöglicht nachvollziehbare Entwicklung bei stabilen Identifiern.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Version Identifier`: bezeichnet einen bestimmten Stand.
- `Immutability`: schützt den veröffentlichten Identifier.

##### Verwandte Begriffe

- Version Identifier
- Stability
- Immutability

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

#### Immutability

##### Definition

`Immutability` ist die Regel, dass ein veröffentlichter Identifier nicht geändert, lokalisiert oder einer anderen Identity zugeordnet werden darf.

##### Zweck

Der Begriff schützt Referenzen und historische Nachvollziehbarkeit dauerhaft.

##### Verwendung

- Governance
- Dokumentation
- Content
- Technische Spezifikationen

##### Darf nicht verwechselt werden mit

- `Stability`: bezeichnet die dauerhafte Erhaltung der Zuordnung.
- `Versioning`: unterscheidet Änderungen ohne Umbenennung.

##### Verwandte Begriffe

- Identifier
- Stability
- Stable Reference

##### Referenzen

- PB-000
- PB-001
- PB-002
- PB-003

**Illustrative Beispiele**

Die folgenden Formen dienen ausschließlich der Erläuterung und definieren keine vollständige oder verbindliche Identifierliste:

- `COUNTRY_GERMANY` veranschaulicht einen Country Identifier.
- `LAW_UNIVERSAL_SUFFRAGE` veranschaulicht einen Law Identifier.
- `RESOURCE_COAL` veranschaulicht einen Resource Identifier.
- `PROJECT_INDUSTRIALIZATION` veranschaulicht einen Project Identifier.
- `CHAR_OTTO_VON_BISMARCK` veranschaulicht einen Character Identifier.

Die zugehörigen Anzeigenamen MAY lokalisiert und geändert werden; die Identifier MUST englisch, unverändert und nicht lokalisiert bleiben.

## Kapitel 13 – Benennungs- und Schreibregeln

Einheitliche Schreibweisen machen Begriffe, Referenzen und Bezeichnungen über Dokumentation, Quellcode, Daten und Benutzertexte hinweg eindeutig auffindbar und verständlich. Sie verhindern, dass bloße Schreibvarianten wie unterschiedliche Konzepte behandelt werden.

Konsistenz hat Vorrang vor persönlichen Vorlieben und individuellen Schreibstilen. Eine festgelegte kanonische Form MUST daher unverändert verwendet werden.

Die folgenden Regeln gelten für alle zukünftigen Project-Bible-Dokumente, technischen Spezifikationen und den Quellcode sowie für Daten, Identifier und Benutzertexte. Sie bestimmen ausschließlich Benennung und Schreibweise, nicht deren technische Implementierung.

### 13.1 Allgemeine Schreibregeln

#### Project Language

##### Definition

`Project Language` ist die Zuordnung einer verbindlichen Sprache zu einer projektweiten Text- oder Benennungskategorie.

##### Zweck

Der Begriff trennt die Sprache der Dokumentation, des Quellcodes, der Identifier und der lokalisierbaren Benutzertexte eindeutig voneinander.

##### Verwendung

- Kanonische Dokumentation MUST in deutscher Sprache verfasst werden.
- Quellcode und Identifier MUST in englischer Sprache verfasst werden.
- Lokalisierbare Benutzertexte MAY in mehreren Sprachen vorliegen.

##### Darf nicht verwechselt werden mit

- `Documentation Language`: gilt ausschließlich für Dokumentation.
- `Localization`: stellt Benutzertexte in mehreren Sprachen bereit.

##### Verwandte Begriffe

- Documentation Language
- Code Language
- Identifier Language

##### Referenzen

- PB-000
- PB-004

#### Capitalization

##### Definition

`Capitalization` ist die verbindliche Groß- und Kleinschreibung einer Bezeichnung innerhalb ihrer Benennungskategorie.

##### Zweck

Der Begriff verhindert abweichende Schreibvarianten desselben Namens.

##### Verwendung

- Kanonische Fachbegriffe MUST die in PB-004 festgelegte Groß- und Kleinschreibung bewahren.
- Namen ohne speziellere Regel MUST innerhalb derselben Kategorie einheitlich geschrieben werden.
- Eine abweichende Groß- oder Kleinschreibung MUST NOT als neues Konzept oder stilistische Variante eingeführt werden.

##### Darf nicht verwechselt werden mit

- `Display Name`: darf eine lokalisierte Anzeigeform besitzen.
- `Identifier`: besitzt zusätzlich Regeln zu Sprache, Stabilität und Eindeutigkeit.

##### Verwandte Begriffe

- Terminology Consistency
- Identifier
- Display Name

##### Referenzen

- PB-000
- PB-004

#### Singular vs. Plural

##### Definition

`Singular vs. Plural` ist die Regel, ob eine Benennung ein einzelnes Konzept oder eine Sammlung bezeichnet.

##### Zweck

Der Begriff macht Anzahl und fachliche Bedeutung einer Bezeichnung erkennbar.

##### Verwendung

- Namen einzelner Konzepte, Typen und Einträge SHOULD im Singular stehen.
- Namen tatsächlicher Sammlungen oder Gruppen SHOULD im Plural stehen.
- Singular und Plural MUST NOT ohne Bedeutungsunterschied als austauschbare Namen desselben Elements verwendet werden.

##### Darf nicht verwechselt werden mit

- `Capitalization`: regelt Groß- und Kleinschreibung.
- `Display Name`: kann aus sprachlichen Gründen eine andere grammatische Form benötigen.

##### Verwandte Begriffe

- Terminology Consistency
- Class Naming
- JSON Keys

##### Referenzen

- PB-000
- PB-004

#### Abbreviations

##### Definition

`Abbreviations` sind dokumentierte Kurzformen eindeutig benannter Begriffe.

##### Zweck

Der Begriff begrenzt Kurzformen auf verständliche und projektweit nachvollziehbare Verwendungen.

##### Verwendung

- Neue Abkürzungen MUST vor ihrer projektweiten Verwendung dokumentiert werden.
- Eine Abkürzung MUST eindeutig ihrem ausgeschriebenen kanonischen Begriff zugeordnet sein.
- Nicht dokumentierte, persönliche oder kontextabhängige Kurzformen MUST NOT in kanonischen Namen oder Identifiern verwendet werden.

##### Darf nicht verwechselt werden mit

- `Identifier`: identifiziert eine Identity und ist nicht bloß eine Kurzform.
- `Alias`: ist eine ausdrücklich zugeordnete alternative Bezeichnung.

##### Verwandte Begriffe

- Canonical Term
- Identifier
- Terminology Consistency

##### Referenzen

- PB-000
- PB-004

#### Terminology Consistency

##### Definition

`Terminology Consistency` ist die Regel, dass derselbe Begriff projektweit dieselbe Schreibweise und dieselbe festgelegte Bedeutung besitzt.

##### Zweck

Der Begriff schützt das gemeinsame Vokabular vor stilistischen Varianten, impliziten Synonymen und widersprüchlicher Verwendung.

##### Verwendung

- Dieselben Begriffe MUST in allen Projektbereichen dieselbe kanonische Schreibweise besitzen.
- Konsistenz MUST Vorrang vor individuellen Schreibstilen und persönlichen Vorlieben haben.
- Eine abweichende Benennung MUST als dokumentierte Anzeigeform, technische Abbildung oder ausdrücklich vorläufiger Arbeitsbegriff erkennbar sein.

##### Darf nicht verwechselt werden mit

- `Capitalization`: ist nur ein Teil der konsistenten Schreibweise.
- `Localization`: darf die Anzeigeform, nicht aber die kanonische Bedeutung ändern.

##### Verwandte Begriffe

- Canonical Term
- Capitalization
- Localization

##### Referenzen

- PB-000
- PB-004

### 13.2 Dokumente

#### Document Naming

##### Definition

`Document Naming` ist die Bildung eines Dokumentnamens aus seiner Document ID und einem eindeutigen Titel.

##### Zweck

Der Begriff verbindet menschliche Erkennbarkeit mit stabiler projektweiter Zuordnung.

##### Verwendung

- Ein kanonisches Dokument MUST seine festgelegte Document ID und seinen offiziellen Titel verwenden.
- Der Titel SHOULD den Gegenstand eindeutig und ohne nicht dokumentierte Abkürzungen benennen.
- Eine Übersetzung oder Titeländerung MUST NOT die Document ID verändern.

##### Darf nicht verwechselt werden mit

- `Document IDs`: identifizieren Dokumente unabhängig vom Titel.
- `File Naming`: bezeichnet die Repräsentation eines Dokuments im Dateisystem.

##### Verwandte Begriffe

- Document Identifier
- Canonical Paths
- Markdown Files

##### Referenzen

- PB-000
- PB-004

#### Document IDs

##### Definition

`Document IDs` sind stabile Document Identifier gemäß der in PB-000 festgelegten Dokumentfamilie und Nummer.

##### Zweck

Der Begriff ermöglicht eindeutige Referenzen unabhängig von Titel, Dateiname oder Speicherort.

##### Verwendung

- Jedes kanonische Dokument MUST genau eine eindeutige Document ID besitzen.
- Die Document ID MUST unverändert und nicht lokalisiert bleiben.
- Eine vergebene Document ID MUST NOT für ein anderes Dokument wiederverwendet werden.

##### Darf nicht verwechselt werden mit

- `Versioning`: unterscheidet Stände desselben Dokuments.
- `Canonical Paths`: bezeichnet den festgelegten Ablageort.

##### Verwandte Begriffe

- Document Identifier
- Stable Reference
- Versioning

##### Referenzen

- PB-000
- PB-004

#### Canonical Paths

##### Definition

`Canonical Paths` sind die im Frontmatter festgelegten maßgeblichen Pfade kanonischer Dokumente.

##### Zweck

Der Begriff schafft eine eindeutige, referenzierbare Ablage unabhängig von abgeleiteten Ausgaben.

##### Verwendung

- Ein kanonisches Dokument MUST genau einen `canonical_path` ausweisen.
- Referenzen SHOULD den Canonical Path oder die Document ID statt eines abgeleiteten Ausgabeorts verwenden.
- Kopien, Exporte und generierte Darstellungen MUST NOT als zusätzlicher Canonical Path bezeichnet werden.

##### Darf nicht verwechselt werden mit

- `Directory Naming`: regelt Namen einzelner Verzeichnisse.
- `External Reference`: verweist auf ein Ziel außerhalb der Project Bible.

##### Verwandte Begriffe

- Document IDs
- Internal Reference
- File Naming

##### Referenzen

- PB-000
- PB-004

#### Versioning

##### Definition

Für `Versioning` gilt ausschließlich die kanonische Definition aus Abschnitt 12.6; die Dokumentversion ist deren Anwendung auf Dokumente.

##### Zweck

Die Aufnahme in diese Begriffsgruppe ordnet Versioning der Dokumentbenennung zu, ohne eine konkurrierende dokumentbezogene Grunddefinition einzuführen.

##### Verwendung

- Dokumentversionen MUST dem in PB-000 festgelegten Versionsschema folgen.
- Die Version MUST im Frontmatter geführt werden.
- Versionsangaben MUST NOT an den Dokumenttitel, die Document ID oder den Canonical Path angehängt werden, sofern keine ausdrücklich definierte Ausnahme besteht.

##### Darf nicht verwechselt werden mit

- `Document IDs`: bleiben über verschiedene Versionen stabil.
- `updated`: bezeichnet ein Datum und keine Version.

##### Verwandte Begriffe

- Version Identifier
- Document IDs
- Stability

##### Referenzen

- PB-000
- PB-004

### 13.3 Dateien und Verzeichnisse

#### File Naming

##### Definition

`File Naming` ist die eindeutige und konsistente Benennung von Dateien nach ihrem Inhalt und ihrer Rolle.

##### Zweck

Der Begriff macht Dateien ohne Kenntnis eines bestimmten Werkzeugs unterscheidbar und auffindbar.

##### Verwendung

- Dateinamen MUST innerhalb ihrer Kategorie einem einzigen dokumentierten Benennungsmuster folgen.
- Dateinamen MUST englische Identifier verwenden; kanonische Dokumentdateien MAY den festgelegten deutschen Dokumenttitel abbilden.
- Leerzeichen und nicht dokumentierte Kurzformen SHOULD vermieden werden.

##### Darf nicht verwechselt werden mit

- `Document Naming`: benennt das Dokument als fachliche Einheit.
- `Asset Naming`: ergänzt die Rolle eines Assets.

##### Verwandte Begriffe

- Directory Naming
- Canonical Paths
- Identifier Language

##### Referenzen

- PB-000
- PB-004

#### Directory Naming

##### Definition

`Directory Naming` ist die konsistente Benennung von Verzeichnissen nach ihrem fachlichen Inhalt oder ihrer festgelegten Kategorie.

##### Zweck

Der Begriff hält Pfade verständlich und vermeidet konkurrierende Namen für dieselbe Ablagerolle.

##### Verwendung

- Verzeichnisnamen MUST innerhalb derselben Struktur einem einheitlichen englischen Benennungsmuster folgen.
- Ein Verzeichnisname SHOULD eine fachliche Kategorie statt eines vorübergehenden Arbeitszustands benennen.
- Synonyme und nicht dokumentierte Abkürzungen MUST NOT parallele Verzeichnisnamen für denselben Zweck bilden.

##### Darf nicht verwechselt werden mit

- `Namespace Naming`: bezeichnet einen logischen Namensraum.
- `Canonical Paths`: legt den vollständigen maßgeblichen Dokumentpfad fest.

##### Verwandte Begriffe

- File Naming
- Canonical Paths
- Terminology Consistency

##### Referenzen

- PB-000
- PB-004

#### Markdown Files

##### Definition

`Markdown Files` sind Dokumentdateien, deren Name eine Document ID und einen lesbaren Titel gemäß der Dokumentkategorie abbildet.

##### Zweck

Der Begriff hält kanonische Dokumentdateien eindeutig ihren Dokumenten zugeordnet.

##### Verwendung

- Eine kanonische Markdown-Datei MUST mit ihrer Document ID beginnen und den offiziellen Titel in der bestehenden dateisicheren Form anschließen.
- Wörter des Titelteils SHOULD durch Unterstriche getrennt werden.
- Die Dateiendung MUST `.md` lauten.

##### Darf nicht verwechselt werden mit

- `Document Naming`: bestimmt ID und offiziellen Titel.
- `Versioning`: gehört nicht als Versionssuffix in den kanonischen Dateinamen.

##### Verwandte Begriffe

- File Naming
- Document IDs
- Canonical Paths

##### Referenzen

- PB-000
- PB-004

#### Asset Naming

##### Definition

`Asset Naming` ist die englische, rollenbezogene Benennung einer nicht als kanonisches Dokument behandelten Projektressource.

##### Zweck

Der Begriff unterscheidet Assets gleichen Gegenstands anhand ihrer fachlichen Rolle, ohne eine technische Verarbeitung festzulegen.

##### Verwendung

- Ein Assetname MUST Gegenstand und erforderlichenfalls Rolle oder Variante eindeutig erkennen lassen.
- Assets derselben Kategorie MUST dasselbe dokumentierte Benennungsmuster verwenden.
- Lokalisierte Anzeigenamen MUST NOT als stabile Asset Identifier verwendet werden.

##### Darf nicht verwechselt werden mit

- `Display Name`: ist der Benutzertext eines dargestellten Konzepts.
- `File Naming`: gilt zusätzlich für die konkrete Assetdatei.

##### Verwandte Begriffe

- File Naming
- Identifier
- Display Name

##### Referenzen

- PB-000
- PB-004

### 13.4 Quellcode

#### Class Naming

##### Definition

`Class Naming` ist die englische Benennung eines Klassentyps durch ein eindeutiges Substantiv oder eine eindeutige Nominalphrase im Singular.

##### Zweck

Der Begriff macht den bezeichneten Typ unabhängig von einer konkreten Sprachsyntax fachlich verständlich.

##### Verwendung

- Klassennamen MUST englisch sein und ein einzelnes fachliches Konzept bezeichnen.
- Klassennamen SHOULD im Singular stehen.
- Ein Klassenname MUST die festgelegte kanonische Terminologie bewahren.

##### Darf nicht verwechselt werden mit

- `Interface Naming`: bezeichnet einen Vertrag oder eine Fähigkeit.
- `System Naming`: bezeichnet ein abgegrenztes fachliches System.

##### Verwandte Begriffe

- Code Language
- Singular vs. Plural
- Terminology Consistency

##### Referenzen

- PB-000
- PB-004

#### Interface Naming

##### Definition

`Interface Naming` ist die englische Benennung eines Vertrags oder einer angebotenen Fähigkeit nach seiner fachlichen Bedeutung.

##### Zweck

Der Begriff lässt den beschriebenen Vertrag erkennen, ohne eine sprach- oder werkzeugspezifische Markierung vorzuschreiben.

##### Verwendung

- Interfacenamen MUST englisch und fachlich eindeutig sein.
- Ein Interfacename SHOULD den Vertrag oder die Fähigkeit und nicht eine konkrete Umsetzung benennen.
- Präfixe oder Suffixe MUST nur verwendet werden, wenn eine speziellere projektweite Konvention sie ausdrücklich festlegt.

##### Darf nicht verwechselt werden mit

- `Class Naming`: benennt einen Klassentyp.
- `Service Naming`: benennt eine angebotene fachliche Dienstrolle.

##### Verwandte Begriffe

- Code Language
- Class Naming
- Service Naming

##### Referenzen

- PB-000
- PB-004

#### Enumeration Naming

##### Definition

`Enumeration Naming` ist die englische Benennung eines geschlossenen fachlichen Wertebereichs und seiner Werte.

##### Zweck

Der Begriff macht Zugehörigkeit und Bedeutung von Auswahlwerten konsistent erkennbar.

##### Verwendung

- Der Name einer Enumeration MUST den Wertebereich im Singular bezeichnen.
- Jeder Wert MUST innerhalb dieses Wertebereichs eindeutig und englisch benannt sein.
- Werte MUST dieselben kanonischen Begriffe und dieselbe Schreiblogik verwenden.

##### Darf nicht verwechselt werden mit

- `Identifier`: kann eine einzelne persistente Identity bezeichnen.
- `Configuration Identifier`: identifiziert eine Konfigurationsangabe.

##### Verwandte Begriffe

- Singular vs. Plural
- Code Language
- Terminology Consistency

##### Referenzen

- PB-000
- PB-004

#### System Naming

##### Definition

`System Naming` ist die englische Benennung eines abgegrenzten fachlichen Systems nach seiner Verantwortung.

##### Zweck

Der Begriff schafft eine einheitliche Zuordnung zwischen Systemname, System Identifier und Dokumentation.

##### Verwendung

- Ein Systemname MUST seine fachliche Verantwortung statt einer konkreten Umsetzung benennen.
- Derselbe Systemname MUST projektweit konsistent verwendet werden.
- Der zugehörige System Identifier MUST eindeutig auf diesen Systemnamen abbildbar sein.

##### Darf nicht verwechselt werden mit

- `Service Naming`: bezeichnet eine Dienstrolle innerhalb eines fachlichen Zusammenhangs.
- `Namespace Naming`: ordnet Namen in einem logischen Bereich.

##### Verwandte Begriffe

- System Identifier
- Terminology Consistency
- Namespace Naming

##### Referenzen

- PB-000
- PB-004

#### Service Naming

##### Definition

`Service Naming` ist die englische Benennung einer fachlichen Dienstrolle nach der von ihr angebotenen Verantwortung.

##### Zweck

Der Begriff verhindert Namen, die nur eine vorübergehende technische Umsetzung oder ein verwendetes Werkzeug beschreiben.

##### Verwendung

- Ein Servicename MUST die fachliche Dienstrolle eindeutig benennen.
- Servicenamen SHOULD im Singular stehen.
- Ein Servicename MUST NOT einen Produkt-, Werkzeug- oder Implementierungsnamen als Ersatz für seine fachliche Verantwortung verwenden.

##### Darf nicht verwechselt werden mit

- `System Naming`: bezeichnet ein umfassenderes fachliches System.
- `Interface Naming`: bezeichnet einen Vertrag oder eine Fähigkeit.

##### Verwandte Begriffe

- Class Naming
- Interface Naming
- Code Language

##### Referenzen

- PB-000
- PB-004

#### Namespace Naming

##### Definition

`Namespace Naming` ist die englische, hierarchische Benennung eines logischen Namensraums nach fachlichen Bereichen.

##### Zweck

Der Begriff macht Zugehörigkeit sichtbar und verhindert konkurrierende logische Bereiche für dieselben Konzepte.

##### Verwendung

- Namespacebestandteile MUST englisch sein und vom allgemeinen zum spezifischen fachlichen Bereich führen.
- Namen von Organisation, Projekt und Domäne MUST konsistent verwendet werden, sofern sie Bestandteil eines Namespace sind.
- Ein Namespace MUST NOT nach einem vorübergehenden Werkzeug oder einer konkreten Umsetzung benannt werden.

##### Darf nicht verwechselt werden mit

- `Namespace`: ist der durch den Namen bezeichnete Eindeutigkeitsraum.
- `Directory Naming`: benennt einen physischen Ablagebereich.

##### Verwandte Begriffe

- Namespacing
- System Naming
- Identifier Language

##### Referenzen

- PB-000
- PB-004

### 13.5 Datenformate

#### JSON Keys

##### Definition

`JSON Keys` sind englische Feldbezeichnungen in JSON-Daten, die einem projektweit dokumentierten Benennungsmuster folgen.

##### Zweck

Der Begriff hält gleichbedeutende Felder über Datenbestände und Spezifikationen hinweg konsistent.

##### Verwendung

- JSON Keys MUST englisch sein.
- JSON Keys MUST innerhalb eines Schemas ein einheitliches Benennungsmuster verwenden.
- Dasselbe fachliche Feld MUST in vergleichbaren Strukturen denselben Key verwenden; Sammlungen SHOULD im Plural, einzelne Werte SHOULD im Singular benannt werden.

##### Darf nicht verwechselt werden mit

- `Identifier Usage`: regelt Werte, die eine Identity referenzieren.
- `Display Name`: ist kein stabiler Feldname.

##### Verwandte Begriffe

- Identifier Language
- Singular vs. Plural
- YAML Fields

##### Referenzen

- PB-000
- PB-004

#### YAML Fields

##### Definition

`YAML Fields` sind englische Feldbezeichnungen in YAML-Daten, die einem projektweit dokumentierten Benennungsmuster folgen.

##### Zweck

Der Begriff hält Frontmatter, Konfiguration und andere YAML-Strukturen sprachlich konsistent.

##### Verwendung

- YAML Fields MUST englisch sein.
- YAML Fields MUST innerhalb eines Schemas ein einheitliches Benennungsmuster verwenden.
- Ein bereits definiertes gleichbedeutendes JSON- oder Konfigurationsfeld SHOULD dieselbe Feldbezeichnung verwenden.

##### Darf nicht verwechselt werden mit

- `Configuration Files`: bezeichnet Dateien mit Konfigurationsangaben.
- `Document Naming`: benennt Dokumente, nicht deren Frontmatter-Felder.

##### Verwandte Begriffe

- JSON Keys
- Identifier Language
- Configuration Files

##### Referenzen

- PB-000
- PB-004

#### Configuration Files

##### Definition

`Configuration Files` sind Konfigurationsdateien mit englischen, stabilen und innerhalb ihres Schemas konsistenten Datei-, Abschnitts- und Feldnamen.

##### Zweck

Der Begriff verhindert sprachlich gemischte oder durch persönliche Kurzformen geprägte Konfigurationsbezeichnungen.

##### Verwendung

- Namen von Konfigurationsdateien, Abschnitten und Feldern MUST englisch sein.
- Gleichartige Konfigurationsdateien MUST dasselbe Benennungsmuster verwenden.
- Anzeigenamen und andere Benutzertexte MUST als lokalisierbare Werte von stabilen Konfigurationsnamen getrennt bleiben.

##### Darf nicht verwechselt werden mit

- `Configuration Identifier`: identifiziert eine Konfigurationsangabe.
- `Localization`: verwaltet sprachabhängige Benutzertexte.

##### Verwandte Begriffe

- File Naming
- JSON Keys
- YAML Fields

##### Referenzen

- PB-000
- PB-004

#### Identifier Usage

##### Definition

`Identifier Usage` ist die Regel, stabile englische Identifier für Referenzen und Anzeigenamen ausschließlich für die Darstellung zu verwenden.

##### Zweck

Der Begriff trennt maschinenlesbare Identity von veränderlichem oder lokalisiertem Benutzertext.

##### Verwendung

- Referenzen in Daten MUST den dafür vorgesehenen Identifier und MUST NOT den Anzeigenamen als Ersatz verwenden.
- Anzeigenamen und Identifier MUST als unterschiedliche Konzepte behandelt und getrennt gespeichert beziehungsweise spezifiziert werden.
- Identifier MUST englisch, stabil und nicht lokalisiert bleiben; Anzeigenamen MAY übersetzt oder geändert werden.

##### Darf nicht verwechselt werden mit

- `Display Name`: ist lokalisierbarer Benutzertext.
- `Identifier Language`: bestimmt ausschließlich die Sprache eines Identifier.

##### Verwandte Begriffe

- Identifier
- Identity
- Display Name
- Localization

##### Referenzen

- PB-000
- PB-004

### 13.6 Sprachregeln

#### Documentation Language

##### Definition

`Documentation Language` ist die verbindliche Sprache für kanonische Projektdokumentation.

##### Zweck

Der Begriff sorgt für eine einheitliche redaktionelle Sprache, während kanonische englische Fachbegriffe unverändert referenzierbar bleiben.

##### Verwendung

- Kanonische Projektdokumentation MUST in deutscher Sprache erstellt werden.
- Kanonische englische Begriffe, Identifier, Eigennamen und normative Schlüsselwörter MUST in ihrer festgelegten Form erhalten bleiben.
- Eine Übersetzung eines kanonischen Begriffs MAY ihn erläutern, MUST ihn aber nicht als neue kanonische Bezeichnung ersetzen.

##### Darf nicht verwechselt werden mit

- `Code Language`: gilt für Quellcode.
- `User Interface Language`: kann je Lokalisierung variieren.

##### Verwandte Begriffe

- Project Language
- Canonical Term
- Localization

##### Referenzen

- PB-000
- PB-004

#### Code Language

##### Definition

`Code Language` ist die verbindliche natürliche Sprache für Benennungen im Quellcode.

##### Zweck

Der Begriff verhindert gemischtsprachige Quellcodebezeichnungen und hält sie projektweit verständlich.

##### Verwendung

- Quellcode MUST in englischer Sprache geschrieben werden.
- Namen von Typen, Verträgen, Systemen, Diensten, Funktionen, Werten und anderen Codeelementen MUST englisch sein.
- Lokalisierte Benutzertexte MUST NOT als Quellcodebezeichnungen verwendet werden.

##### Darf nicht verwechselt werden mit

- `Identifier Language`: gilt für sämtliche projektweiten Identifier, auch außerhalb des Quellcodes.
- `Documentation Language`: gilt für kanonische Dokumentation.

##### Verwandte Begriffe

- Project Language
- Identifier Language
- Class Naming

##### Referenzen

- PB-000
- PB-004

#### Identifier Language

##### Definition

`Identifier Language` ist die verbindliche natürliche Sprache, aus der lesbare Bestandteile eines Identifier gebildet werden.

##### Zweck

Der Begriff hält Identifier unabhängig von Dokumentations- und Anzeigesprache stabil und projektweit verständlich.

##### Verwendung

- Identifier MUST ausschließlich in englischer Sprache erstellt werden.
- Identifier MUST NOT übersetzt oder lokalisiert werden.
- Neu gebildete Identifier MUST die englische Form des kanonischen Begriffs verwenden und dokumentierte Abkürzungen beachten.

##### Darf nicht verwechselt werden mit

- `Display Name`: darf lokalisiert werden.
- `Code Language`: gilt für alle Benennungen im Quellcode, nicht nur Identifier.

##### Verwandte Begriffe

- Identifier
- Stability
- Abbreviations

##### Referenzen

- PB-000
- PB-004

#### User Interface Language

##### Definition

`User Interface Language` ist die für einen Benutzer dargestellte Sprache der Benutzeroberfläche.

##### Zweck

Der Begriff trennt lokalisierbare Darstellung von stabiler interner Terminologie und Identity.

##### Verwendung

- Benutzeroberflächen MAY lokalisiert werden und mehrere User Interface Languages anbieten.
- Sichtbare Anzeigenamen und Benutzertexte MAY sprachabhängig sein.
- Die User Interface Language MUST NOT Identifier, fachliche Identity oder kanonische Bedeutung verändern.

##### Darf nicht verwechselt werden mit

- `Documentation Language`: ist projektweit Deutsch.
- `Identifier Language`: ist projektweit Englisch und nicht lokalisierbar.

##### Verwandte Begriffe

- Localization
- Display Name
- Project Language

##### Referenzen

- PB-000
- PB-004

#### Localization

##### Definition

`Localization` ist die Zuordnung sprach- oder regionsabhängiger Benutzertexte zu stabilen, nicht lokalisierten Identifiern.

##### Zweck

Der Begriff ermöglicht mehrsprachige Benutzeroberflächen, ohne Identity, Datenreferenzen oder kanonische Begriffe zu vervielfachen.

##### Verwendung

- Benutzertexte und Anzeigenamen MAY lokalisiert werden.
- Jede lokalisierte Anzeigeform MUST eindeutig auf denselben stabilen Identifier verweisen.
- Lokalisierung MUST NOT Identifier übersetzen, neue fachliche Identities erzeugen oder die kanonische Bedeutung eines Konzepts verändern.

##### Darf nicht verwechselt werden mit

- `Translation`: ist die sprachliche Übertragung eines Textes und nicht die gesamte Zuordnung zu einer Identity.
- `Display Name`: ist ein einzelner darstellbarer Name.

##### Verwandte Begriffe

- User Interface Language
- Display Name
- Identifier Usage

##### Referenzen

- PB-000
- PB-004

### 13.7 Project Language Policy

Dieser Abschnitt ist eine normative, verbindliche Projektrichtlinie und kein Glossareintrag. Die nachfolgenden Regeln sind projektweit anzuwenden.

#### Zweck

Eine einheitliche Projektsprache sichert konsistente Benennungen und verhindert, dass gleiche Konzepte in verschiedenen Projektbereichen unterschiedlich bezeichnet werden. Sie verbessert die Wartbarkeit, weil Artefakte langfristig eindeutig lesbar und auffindbar bleiben, und erleichtert die Zusammenarbeit zwischen allen Beteiligten durch ein gemeinsames sprachliches Bezugssystem. Die Trennung zwischen deutscher Dokumentationssprache, englischer technischer Benennung und lokalisierbaren Benutzertexten ermöglicht internationale Erweiterbarkeit, ohne stabile technische Bezüge zu verändern. Dadurch bleiben Terminologie, Identifier und Schnittstellen auch bei wachsendem Projektumfang langfristig stabil.

#### Geltungsbereich

Diese Richtlinie gilt verbindlich für sämtliche:

- Governance-Dokumente,
- Design-Dokumente,
- technischen Dokumente,
- Quellcodes,
- APIs,
- Konfigurationsdateien,
- Savegames,
- Datenformate,
- Build-Skripte,
- Modding-Schnittstellen,
- Werkzeuge und
- Benutzeroberflächen.

#### Verbindliche Regeln

##### Dokumentation

- Die offizielle Sprache der Project Bible MUST Deutsch sein.
- Deutsche Dokumentation MUST die kanonischen Fachbegriffe aus PB-004 verwenden.
- Dokumente MUST innerhalb ihres jeweiligen sprachlichen und fachlichen Kontexts konsistent bleiben.

##### Quellcode

- Quellcode MUST ausschließlich in englischer Sprache geschrieben werden.
- Dies umfasst insbesondere Klassen, Interfaces, Methoden, Funktionen, Variablen, Enumerationen, Namespaces und, soweit sinnvoll, Kommentare.

##### Identifier

- Identifier MUST ausschließlich in englischer Sprache erstellt werden.
- Identifier MUST NOT lokalisiert werden.
- Identifier MUST ausschließlich der Identifikation dienen und MUST NOT als Benutzertext verwendet werden.

##### APIs

- APIs MUST ausschließlich in englischer Sprache definiert werden.
- Dies umfasst Endpunkte, Parameter, Request-Objekte, Response-Objekte, Commands, Events und Fehlercodes.

##### Benutzeroberfläche

- Benutzeroberflächen MUST grundsätzlich lokalisierbar entwickelt werden.
- Benutzertexte MUST NOT Bestandteil technischer Identifier sein.
- Anzeigenamen und Identifier MUST strikt getrennt werden.

##### Sprache innerhalb eines Artefakts

- Ein einzelnes Artefakt SHOULD keine gemischten deutschen und englischen Bezeichner enthalten. Ausgenommen sind unverändert zu verwendende kanonische Fachbegriffe, Identifier und normative Schlüsselwörter.
- Sprachliche und terminologische Konsistenz MUST Vorrang vor persönlichem Stil haben.

##### Abkürzungen

- Neue Abkürzungen MUST vor ihrer Verwendung dokumentiert werden.
- Nicht dokumentierte Abkürzungen MUST NOT verwendet werden.

##### Governance

- Neue Benennungsregeln MUST ausschließlich über den Governance-Prozess eingeführt oder geändert werden.
- Änderungen projektweiter Sprachregeln MUST durch eine Architecture Decision mit dem Status `Accepted` beschlossen werden.

#### Beispiele

**Positiv:**

- `ProjectManager`
- `ResearchProposal`
- `COUNTRY_GERMANY`
- `LAW_UNIVERSAL_SUFFRAGE`
- `RESOURCE_COAL`
- `api/v1/countries`

**Negativ:**

- `ProjektManager`
- `ForschungsProposal`
- `LAND_DEUTSCHLAND`
- `GesetzUniversalSuffrage`
- `CoalResourceDeutsch`

#### Beziehung zu anderen Dokumenten

- PB-004 definiert die verbindliche Projektsprache und die projektweite Terminologie.
- PB-998 dokumentiert die zugehörigen Architekturentscheidungen.
- TECH-Dokumente MUST diese Regeln übernehmen.
- GD-Dokumente MUST diese Terminologie verwenden.

## Kapitel 14 – Verbotene Synonyme und häufige Fehler

Konsistente Terminologie ist entscheidend, damit dasselbe Konzept in allen Projektartefakten eindeutig bezeichnet und nicht unbeabsichtigt mit einem anderen Konzept gleichgesetzt wird.

Viele der folgenden Begriffe werden im allgemeinen Sprachgebrauch synonym verwendet, besitzen im Projekt jedoch unterschiedliche, bereits in den vorherigen Kapiteln festgelegte Bedeutungen. Dieses Kapitel dokumentiert typische Fehlverwendungen und erklärt die korrekte Verwendung; es ergänzt das Glossar, ohne neue Begriffe zu definieren oder bestehende Definitionen zu ersetzen.

### 14.1 Politische Begriffe

#### Country vs State

##### Problem

`Country` und `State` werden häufig beide für ein politisches Gemeinwesen verwendet, wodurch territorial-politische Gesamteinheit und dauerhafte politische sowie rechtliche Organisation gleichgesetzt werden.

##### Richtige Verwendung

`Country` bezeichnet die Verbindung aus Gebiet, Bevölkerung und politischer Ordnung als eigenständige Gesamteinheit. `State` bezeichnet die dauerhafte politische und rechtliche Organisation, die über Institutionen Bevölkerung und Gebiet ordnet und Sovereignty beansprucht.

##### Empfehlung

Für die territorial-politische Einheit als Ganzes ist `Country` zu verwenden; für die dauerhafte Trägerin öffentlicher Herrschaft ist `State` zu verwenden.

##### Referenzen

- Abschnitt 4.1 `Country`
- Abschnitt 4.1 `State`

#### Nation vs Country

##### Problem

`Nation` wird häufig als bloße alternative Bezeichnung für ein `Country` verwendet, obwohl kollektive Zugehörigkeit nicht mit einer territorial-politischen Einheit identisch ist.

##### Richtige Verwendung

`Nation` bezeichnet eine als zusammengehörig verstandene politische oder gesellschaftliche Gemeinschaft mit gemeinsamer kollektiver Identity. `Country` bezeichnet dagegen die als eigenständiger Akteur betrachtete Verbindung aus Gebiet, Bevölkerung und politischer Ordnung.

##### Empfehlung

Für kollektive Identität und vorgestellte Zugehörigkeit ist `Nation` zu verwenden; für die territorial-politische Gesamteinheit ist `Country` zu verwenden.

##### Referenzen

- Abschnitt 4.1 `Nation`
- Abschnitt 4.1 `Country`

#### Government vs State

##### Problem

`Government` und `State` werden häufig gleichgesetzt, sodass ein Wechsel der gegenwärtigen politischen Führung fälschlich als Wechsel der dauerhaften staatlichen Organisation erscheint.

##### Richtige Verwendung

`Government` bezeichnet die Personen und Organe, die zu einem bestimmten Zeitpunkt die obersten politischen Leitungs- und Entscheidungsfunktionen ausüben. `State` bezeichnet die von dieser jeweiligen Führung unabhängige dauerhafte politische und rechtliche Organisation.

##### Empfehlung

Für die gegenwärtig handelnde politische Führung ist `Government` zu verwenden; für die institutionell dauerhafte politische und rechtliche Organisation ist `State` zu verwenden.

##### Referenzen

- Abschnitt 4.1 `Government`
- Abschnitt 4.1 `State`

#### Regime vs Government

##### Problem

`Regime` wird häufig als wertende oder austauschbare Bezeichnung für ein amtierendes `Government` benutzt, obwohl beide Begriffe unterschiedliche zeitliche und institutionelle Ebenen bezeichnen.

##### Richtige Verwendung

`Regime` bezeichnet die grundlegende Ordnung, nach der politische Herrschaft erlangt, ausgeübt, begrenzt und übertragen wird. `Government` bezeichnet die jeweils gegenwärtig handelnde politische Führung.

##### Empfehlung

Für die beständige Struktur politischer Herrschaft ist `Regime` zu verwenden; für die amtierenden leitenden Personen und Organe ist `Government` zu verwenden.

##### Referenzen

- Abschnitt 4.1 `Regime`
- Abschnitt 4.1 `Government`

#### Head of State vs Head of Government

##### Problem

`Head of State` und `Head of Government` werden häufig unter einer allgemeinen Bezeichnung für die politische Spitze zusammengefasst, obwohl Repräsentation und institutionelle Kontinuität von politischer Regierungsleitung getrennt sein können.

##### Richtige Verwendung

`Head of State` bezeichnet das Amt der obersten institutionellen Kontinuität und Repräsentation des State. `Head of Government` bezeichnet das Amt der politischen Leitung und Koordination des Government; beide Funktionen können verbunden sein, bleiben begrifflich aber getrennt.

##### Empfehlung

Für die staatliche Spitzen- und Repräsentationsfunktion ist `Head of State` zu verwenden; für die leitende Regierungsfunktion ist `Head of Government` zu verwenden.

##### Referenzen

- Abschnitt 4.3 `Head of State`
- Abschnitt 4.3 `Head of Government`

### 14.2 Gameplay- und technische Begriffe

#### Identifier vs Display Name

##### Problem

Ein `Display Name` wird häufig als `Identifier` verwendet oder ein Identifier wird als sichtbarer Benutzertext behandelt, wodurch lokalisierbare Darstellung und stabile Identifikation vermischt werden.

##### Richtige Verwendung

Ein `Identifier` ist die innerhalb eines Namespace eindeutige, dauerhaft stabile und nicht lokalisierte englische Bezeichnung einer Identity. Ein `Display Name` ist die für Menschen bestimmte, lokalisierbare Anzeigeform und muss weder eindeutig noch stabil sein.

##### Empfehlung

Für Referenzen und eindeutige Wiedererkennung ist der `Identifier` zu verwenden; für sichtbare und lokalisierbare Benennungen ist der `Display Name` zu verwenden.

##### Referenzen

- Abschnitt 12.1 `Identifier`
- Abschnitt 12.6 `Immutability`
- Abschnitt 13.5 `Identifier Usage`
- Abschnitt 13.6 `Localization`

#### Action vs Proposal

##### Problem

Eine noch prüfbare oder ablehnbare `Proposal` wird häufig bereits als `Action` bezeichnet, obwohl noch keine tatsächlich auszuführende Gameplay-Handlung feststeht.

##### Richtige Verwendung

Eine `Proposal` ist ein noch nicht ausgeführter Inhalt, der validiert, verändert, angenommen oder abgelehnt werden kann. Eine `Action` ist die tatsächlich ausgeführte Gameplay-Handlung eines Player oder Actor.

##### Empfehlung

Vor Abschluss der Behandlung ist `Proposal` zu verwenden; für die tatsächliche Gameplay-Handlung ist `Action` zu verwenden.

##### Referenzen

- Abschnitt 10.2 `Action`
- Abschnitt 10.2 `Proposal`

#### Proposal vs Decision

##### Problem

Der zur Behandlung gestellte Inhalt und die verbindliche Auswahl einer Alternative werden häufig beide als Entscheidung bezeichnet.

##### Richtige Verwendung

Eine `Proposal` bezeichnet den noch offenen, zur Behandlung gestellten Inhalt. Eine `Decision` ist die verbindliche Festlegung einer verfügbaren Alternative als Antwort auf eine Proposal oder einen anderen auslösenden Sachverhalt.

##### Empfehlung

Für den offenen Vorschlag ist `Proposal` zu verwenden; für die verbindliche Festlegung ist `Decision` zu verwenden.

##### Referenzen

- Abschnitt 10.2 `Proposal`
- Abschnitt 10.2 `Decision`

#### Decision vs Execution

##### Problem

Die verbindliche Festlegung und ihr tatsächlicher Vollzug werden häufig als ein einziger Vorgang bezeichnet, obwohl eine `Decision` noch keine `Execution` ist.

##### Richtige Verwendung

Eine `Decision` legt eine Alternative verbindlich fest, ohne deren Vollzug vorwegzunehmen. Eine `Execution` ist der Vollzug, durch den die dafür bestimmte Action tatsächlich ausgeführt wird.

##### Empfehlung

Für die verbindliche Auswahl ist `Decision` zu verwenden; für den Vollzug der bestimmten Action ist `Execution` zu verwenden.

##### Referenzen

- Abschnitt 10.2 `Decision`
- Abschnitt 10.2 `Execution`

#### Event vs Trigger

##### Problem

Die auslösende Voraussetzung eines Ereignisses wird häufig selbst als `Event` bezeichnet oder das eingetretene Ereignis als `Trigger` benannt.

##### Richtige Verwendung

Ein `Trigger` ist die festgelegte Voraussetzung, deren Erfüllung die Möglichkeit oder das Eintreten eines Event auslöst. Ein `Event` ist das innerhalb des Spielverlaufs eingetretene und als zusammengehörig betrachtete Ereignis.

##### Empfehlung

Für die auslösende Voraussetzung ist `Trigger` zu verwenden; für das eingetretene Ereignis ist `Event` zu verwenden.

##### Referenzen

- Abschnitt 10.4 `Trigger`
- Abschnitt 10.4 `Event`

#### Effect vs Modifier

##### Problem

Jede Zustandsänderung wird häufig als `Modifier` bezeichnet oder eine verändernde Einflussgröße wird mit dem `Effect` gleichgesetzt, der sie begründet, verändert oder beendet.

##### Richtige Verwendung

Ein `Effect` ist eine durch einen Gameplay-Vorgang bewirkte Zustandsänderung. Ein `Modifier` ist eine dauerhafte oder temporäre Veränderung eines Wertes oder Verhaltens gegenüber dessen ansonsten maßgeblicher Ausprägung.

##### Empfehlung

Für die bewirkte Zustandsänderung ist `Effect` zu verwenden; für die fortwirkende Veränderung eines Wertes oder Verhaltens ist `Modifier` zu verwenden.

##### Referenzen

- Abschnitt 10.5 `Effect`
- Abschnitt 10.5 `Modifier`

### 14.3 Wirtschaft

#### Resource vs Good

##### Problem

Ein wirtschaftlich nutzbarer Bestand wird häufig bereits als `Good` bezeichnet oder jeder Gegenstand wirtschaftlicher Verfügung als `Resource` behandelt.

##### Richtige Verwendung

Eine `Resource` ist ein verfügbarer oder erschließbarer Bestand mit möglicher wirtschaftlicher Verwendbarkeit, ohne dass er bereits gewonnen oder bereitgestellt sein muss. Ein `Good` ist ein materieller oder immaterieller Gegenstand wirtschaftlicher Verfügung.

##### Empfehlung

Für wirtschaftlich nutzbares Potenzial ist `Resource` zu verwenden; für einen Gegenstand wirtschaftlicher Verfügung ist `Good` zu verwenden.

##### Referenzen

- Abschnitt 7.3 `Resource`
- Abschnitt 7.3 `Good`

#### Raw Material vs Finished Good

##### Problem

Materielle Goods werden häufig unabhängig von ihrer Produktionsstufe als `Raw Material` oder `Finished Good` bezeichnet.

##### Richtige Verwendung

Ein `Raw Material` ist ein unmittelbar aus einer Resource gewonnener und noch nicht weiterverarbeiteter materieller Input. Ein `Finished Good` ist ein Good, dessen Production für seine vorgesehene Endverwendung abgeschlossen ist.

##### Empfehlung

Für die unmittelbar gewonnene, unverarbeitete stoffliche Form ist `Raw Material` zu verwenden; für ein für seine vorgesehene Endverwendung fertig produziertes Good ist `Finished Good` zu verwenden.

##### Referenzen

- Abschnitt 7.3 `Raw Material`
- Abschnitt 7.3 `Finished Good`

#### Production vs Production Facility

##### Problem

Die wirtschaftliche Aktivität und die Einrichtung, in der sie stattfinden kann, werden häufig beide als Produktion bezeichnet.

##### Richtige Verwendung

`Production` bezeichnet die wirtschaftliche Aktivität, durch die Inputs eingesetzt oder verändert werden, um Outputs hervorzubringen oder bereitzustellen. Eine `Production Facility` ist die räumlich und organisatorisch abgegrenzte Einrichtung, in der ein Producer Production ausüben kann.

##### Empfehlung

Für den wirtschaftlichen Vorgang ist `Production` zu verwenden; für dessen möglichen institutionell-räumlichen Träger ist `Production Facility` zu verwenden.

##### Referenzen

- Abschnitt 7.2 `Production`
- Abschnitt 7.7 `Production Facility`

#### Market vs Trade

##### Problem

Der wirtschaftliche Beziehungsrahmen und das darin oder außerhalb davon stattfindende Austauschhandeln werden häufig gleichgesetzt.

##### Richtige Verwendung

Ein `Market` ist der Beziehungszusammenhang, in dem Supply und Demand für bestimmte Goods aufeinandertreffen und Exchange-Bedingungen entstehen. `Trade` ist das auf Exchange gerichtete wirtschaftliche Handeln zwischen Economic Actors und die daraus entstehende Handelsbeziehung.

##### Empfehlung

Für den Ordnungs- und Beziehungsrahmen ist `Market` zu verwenden; für das wirtschaftliche Austauschhandeln ist `Trade` zu verwenden.

##### Referenzen

- Abschnitt 7.4 `Market`
- Abschnitt 7.5 `Trade`

#### Supply vs Capacity

##### Problem

Die in einem Market angebotene Menge wird häufig mit dem maximal möglichen Umfang einer wirtschaftlichen Aktivität gleichgesetzt.

##### Richtige Verwendung

Wirtschaftliches `Supply` bezeichnet die Mengen von Goods, die Economic Actors unter bestimmten Bedingungen in einem Market zur Übertragung bereitstellen. `Capacity` bezeichnet den unter festgelegten Bedingungen innerhalb eines Zeitraums erreichbaren Umfang einer wirtschaftlichen Aktivität.

##### Empfehlung

Für die Angebotsseite eines Market ist `Supply` zu verwenden; für die Grenze des möglichen Aktivitätsumfangs ist `Capacity` zu verwenden.

##### Referenzen

- Abschnitt 7.4 `Supply`
- Abschnitt 7.7 `Capacity`

### 14.4 Gesellschaft

#### Population vs Population Group

##### Problem

Eine abgegrenzte Teilmenge wird häufig als gesamte `Population` bezeichnet oder die Gesamtbevölkerung als homogene `Population Group` behandelt.

##### Richtige Verwendung

Eine `Population` umfasst alle einem eindeutig bestimmten Bezugsbereich zu einem Zeitpunkt zugeordneten Personen. Eine `Population Group` umfasst nur Personen innerhalb einer Population, die hinsichtlich ausdrücklich festgelegter Merkmale übereinstimmen.

##### Empfehlung

Für den vollständigen personenbezogenen Bestand ist `Population` zu verwenden; für eine anhand festgelegter Merkmale abgegrenzte Menge ist `Population Group` zu verwenden.

##### Referenzen

- Abschnitt 6.1 `Population`
- Abschnitt 6.1 `Population Group`

#### Citizen vs Resident

##### Problem

Rechtliche Mitgliedschaft in einem State und gewöhnlicher Aufenthalt in einem Gebiet werden häufig als dieselbe personenbezogene Zuordnung behandelt.

##### Richtige Verwendung

Ein `Citizen` ist durch rechtlich anerkannte, dauerhafte Mitgliedschaft in einem State bestimmt. Ein `Resident` ist durch seinen gewöhnlichen und auf Dauer ausgerichteten Lebensmittelpunkt innerhalb eines Gebietes bestimmt.

##### Empfehlung

Für die rechtliche staatliche Mitgliedschaft ist `Citizen` zu verwenden; für die auf tatsächlichem gewöhnlichem Aufenthalt beruhende Zuordnung ist `Resident` zu verwenden.

##### Referenzen

- Abschnitt 6.1 `Citizen`
- Abschnitt 6.1 `Resident`

#### Profession vs Occupation

##### Problem

Fachliche Qualifikation und gegenwärtig regelmäßig ausgeübte Tätigkeit werden häufig mit demselben Berufsbegriff bezeichnet.

##### Richtige Verwendung

Eine `Profession` ist ein gesellschaftlich abgegrenztes Feld qualifizierter Tätigkeit mit gemeinsamen Kenntnissen, Fähigkeiten und anerkannten Aufgaben. Eine `Occupation` ist die von einer Person gegenwärtig regelmäßig ausgeübte Tätigkeit.

##### Empfehlung

Für das dauerhafte qualifizierte Tätigkeitsfeld ist `Profession` zu verwenden; für die tatsächlich und regelmäßig ausgeübte Tätigkeit ist `Occupation` zu verwenden.

##### Referenzen

- Abschnitt 6.2 `Profession`
- Abschnitt 6.2 `Occupation`

#### Culture vs Identity

##### Problem

Geteilte Bedeutungen und soziale Praktiken werden häufig mit dem Zugehörigkeitsverständnis einer Person oder Gruppe gleichgesetzt.

##### Richtige Verwendung

Eine `Culture` ist ein von einer Gruppe getragener und weitergegebener Zusammenhang gemeinsamer Bedeutungen, Werte, Normen, Ausdrucksformen und sozialer Praktiken. Eine `Identity` ist das Verständnis eigener Zugehörigkeit und Abgrenzung.

##### Empfehlung

Für den geteilten gesellschaftlichen Orientierungszusammenhang ist `Culture` zu verwenden; für wahrgenommene Zugehörigkeit und Abgrenzung ist `Identity` zu verwenden.

##### Referenzen

- Abschnitt 6.3 `Culture`
- Abschnitt 6.3 `Identity`

#### Assimilation vs Integration

##### Problem

Jede gesellschaftliche Einbindung wird häufig als `Assimilation` bezeichnet, obwohl `Integration` keine Aufgabe prägender kultureller Unterschiede voraussetzt.

##### Richtige Verwendung

`Assimilation` bezeichnet die weitgehende Aufgabe prägender Merkmale der bisherigen Culture zugunsten einer anderen Culture. `Integration` bezeichnet gleichberechtigten Zugang und gemeinsame Teilhabe, während kulturelle oder soziale Unterschiede fortbestehen können.

##### Empfehlung

Bei kultureller Angleichung durch weitgehenden Verlust bisheriger Unterscheidungsmerkmale ist `Assimilation` zu verwenden; bei gesellschaftlicher Einbindung ohne diese Voraussetzung ist `Integration` zu verwenden.

##### Referenzen

- Abschnitt 6.5 `Assimilation`
- Abschnitt 6.5 `Integration`

### 14.5 Militär

#### Army vs Armed Forces

##### Problem

`Army` wird häufig als Sammelbezeichnung für sämtliche militärischen Branches verwendet, obwohl es projektweit ausschließlich die landmilitärische Branch bezeichnet.

##### Richtige Verwendung

`Armed Forces` bezeichnet die Gesamtheit aller einer einheitlichen obersten militärischen Autorität zugeordneten Branches. `Army` bezeichnet die für landgebundene Kriegführung zuständige Branch dieser Armed Forces.

##### Empfehlung

Für die militärische Gesamtorganisation ist `Armed Forces` zu verwenden; für deren landmilitärische Branch ist `Army` zu verwenden.

##### Referenzen

- Abschnitt 8.1 `Army`
- Abschnitt 8.1 `Armed Forces`

#### Unit vs Formation

##### Problem

`Unit` und `Formation` werden häufig ohne Angabe ihrer relativen organisatorischen Funktion austauschbar für jeden militärischen Verband verwendet.

##### Richtige Verwendung

Eine `Unit` ist die kleinste im festgelegten fachlichen Zusammenhang als selbständig geführtes Ganzes betrachtete Military Formation. Eine `Formation` ist eine konkrete, nach festgelegter Gliederung zusammengefasste und gemeinsam geführte Military Formation, ohne notwendig die kleinste Ebene zu sein.

##### Empfehlung

Für die im jeweiligen Zusammenhang kleinste selbständig betrachtete Ebene ist `Unit` zu verwenden; für die konkrete organisatorische Zusammenfassung ist `Formation` zu verwenden.

##### Referenzen

- Abschnitt 8.2 `Unit`
- Abschnitt 8.2 `Formation`

#### Battle vs Campaign

##### Problem

Eine einzelne unmittelbare bewaffnete Auseinandersetzung wird häufig als `Campaign` bezeichnet oder ein längerfristiger strategischer Zusammenhang auf eine `Battle` reduziert.

##### Richtige Verwendung

Eine `Battle` ist eine größere, räumlich und zeitlich zusammenhängende unmittelbare bewaffnete Auseinandersetzung. Eine `Campaign` ist eine strategisch zusammenhängende Folge militärischer Operations für ein übergeordnetes militärisches Ziel.

##### Empfehlung

Für die konkrete unmittelbare Auseinandersetzung ist `Battle` zu verwenden; für die übergeordnete Folge mehrerer Operations ist `Campaign` zu verwenden.

##### Referenzen

- Abschnitt 8.4 `Battle`
- Abschnitt 8.4 `Campaign`

#### Campaign vs Operation

##### Problem

Ein einzelnes abgegrenztes militärisches Vorhaben und die übergeordnete strategische Folge solcher Vorhaben werden häufig beide als `Campaign` oder `Operation` bezeichnet.

##### Richtige Verwendung

Eine `Operation` ist ein nach Ziel, Verantwortung, Raum und Zeit abgegrenztes militärisches Vorhaben. Eine `Campaign` verbindet mehrere Operations in einem größeren räumlichen und zeitlichen Zusammenhang unter einem übergeordneten militärischen Ziel.

##### Empfehlung

Für das einzelne abgegrenzte Vorhaben ist `Operation` zu verwenden; für dessen strategisch übergeordneten Zusammenhang mit weiteren Operations ist `Campaign` zu verwenden.

##### Referenzen

- Abschnitt 8.4 `Campaign`
- Abschnitt 8.4 `Operation`

#### Supply vs Logistics

##### Problem

Die für militärische Kräfte bestimmten Mittel und Leistungen werden häufig mit dem gesamten Aufgabenbereich ihrer Planung, Bewegung und Erhaltung gleichgesetzt.

##### Richtige Verwendung

Militärisches `Supply` bezeichnet die für die fortgesetzte Handlungsfähigkeit militärischer Kräfte bestimmten materiellen Mittel und Leistungen. `Logistics` bezeichnet den umfassenden Aufgabenbereich ihrer Planung, Bereitstellung, Bewegung, Verteilung und Erhaltung.

##### Empfehlung

Für den Gegenstand militärischer Versorgung ist `Supply` zu verwenden; für den umfassenden militärischen Unterstützungszusammenhang ist `Logistics` zu verwenden.

##### Referenzen

- Abschnitt 8.5 `Supply`
- Abschnitt 8.5 `Logistics`

### 14.6 Diplomatie

#### Treaty vs Proposal

##### Problem

Ein noch offener diplomatischer Vorschlag wird häufig bereits als `Treaty` bezeichnet, obwohl ein verbindliches internationales Abkommen noch nicht begründet ist.

##### Richtige Verwendung

Eine `Proposal` ist ein formaler Vorschlag oder ein diplomatisches Angebot, dessen Annahme, Ablehnung oder Veränderung noch nicht feststeht. Ein `Treaty` ist ein formal begründetes internationales Abkommen, das gegenseitige Rechte, Pflichten oder Beziehungen verbindlich ordnet.

##### Empfehlung

Für den noch offenen diplomatischen Inhalt ist `Proposal` zu verwenden; für das formal begründete verbindliche internationale Abkommen ist `Treaty` zu verwenden.

##### Referenzen

- Abschnitt 9.3 `Proposal`
- Abschnitt 9.4 `Treaty`

#### Alliance vs Diplomatic Relation

##### Problem

Jeder bestehende diplomatische Zusammenhang wird häufig als `Alliance` bezeichnet, obwohl eine Diplomatic Relation kein formales Kooperationsabkommen voraussetzt.

##### Richtige Verwendung

Eine `Diplomatic Relation` ist der bestehende diplomatische Zusammenhang zwischen zwei diplomatischen Akteuren. Eine `Alliance` ist ein formales internationales Abkommen zur dauerhaften organisierten Zusammenarbeit ihrer Mitglieder bei gemeinsamen internationalen Interessen.

##### Empfehlung

Für den allgemeinen bestehenden diplomatischen Zusammenhang ist `Diplomatic Relation` zu verwenden; für den formalen dauerhaften Kooperationszusammenhang ist `Alliance` zu verwenden.

##### Referenzen

- Abschnitt 9.2 `Diplomatic Relation`
- Abschnitt 9.4 `Alliance`

#### Recognition vs Recognition Proposal

##### Problem

Der bestehende Anerkennungsstatus und der noch zu behandelnde Vorschlag zu seiner Begründung, Änderung oder Beendigung werden häufig beide als `Recognition` bezeichnet.

##### Richtige Verwendung

`Recognition` bezeichnet die bestehende formale Anerkennung eines politischen Akteurs oder beanspruchten internationalen Status. Ein `Recognition Proposal` ist eine Proposal, deren Gegenstand die Begründung, Änderung oder Beendigung dieser Recognition ist.

##### Empfehlung

Für den bestehenden formalen Status ist `Recognition` zu verwenden; für den dazu zur Entscheidung gestellten Inhalt ist `Recognition Proposal` zu verwenden.

##### Referenzen

- Abschnitt 9.2 `Recognition`
- Abschnitt 9.3 `Recognition Proposal`

#### Sanction vs Embargo

##### Problem

`Sanction` und `Embargo` werden häufig als austauschbare Bezeichnungen für jede beschränkende diplomatische oder wirtschaftliche Maßnahme verwendet.

##### Richtige Verwendung

Eine `Sanction` ist die allgemeine diplomatische Kategorie einer formal auferlegten beschränkenden Maßnahme zur Beanstandung oder Beeinflussung eines Akteurs. Ein `Embargo` ist die von einem State angeordnete Beschränkung oder Untersagung bestimmter Handelsbeziehungen.

##### Empfehlung

Für die allgemeine diplomatische Zwangsmaßnahme ist `Sanction` zu verwenden; für die spezifische staatliche Beschränkung oder Untersagung von Trade ist `Embargo` zu verwenden.

##### Referenzen

- Abschnitt 9.3 `Sanction`
- Abschnitt 7.5 `Embargo`

## Kapitel 15 – Requirements & Design Goals

Terminologie muss langfristig stabil bleiben, weil Dokumente, Entscheidungen und andere Projektartefakte dauerhaft auf dieselben Bedeutungen und Referenzen angewiesen sind. Unkontrollierte Bedeutungs- oder Benennungswechsel würden diese Zusammenhänge entwerten.

Dokumentierte Anforderungen machen die erwartete Qualität prüfbar und verhindern, dass terminologische Entscheidungen von implizitem Wissen oder persönlichem Sprachgefühl abhängen. Dieses Kapitel definiert deshalb die projektweiten Qualitätsziele für die gesamte Terminologie und bildet den Maßstab für zukünftige Erweiterungen und Reviews.

### 15.1 Allgemeine Anforderungen

#### Requirement ID

REQ-TERM-001

#### Titel

Eindeutige Terminologie

#### Beschreibung

Die projektweite Terminologie MUST eindeutig sein. Jede zulässige Verwendung MUST ohne konkurrierende fachliche Auslegung einem bestimmten Konzept zugeordnet werden können.

#### Begründung

Eindeutigkeit verhindert abweichende Interpretationen in Zusammenarbeit, Dokumentation und Prüfung.

#### Priorität

Mandatory

#### Verifikation

Ein Terminologie-Review prüft jede Verwendung auf mehrere mögliche fachliche Auslegungen; ungeklärte Mehrdeutigkeiten gelten als Nichterfüllung.

#### Requirement ID

REQ-TERM-002

#### Titel

Verständlichkeit für Menschen und KI

#### Beschreibung

Terminologie MUST für Menschen und KI-Assistenten gleichermaßen verständlich sein. Normative Aussagen MUST ihren Gegenstand, ihre Verbindlichkeit und ihre Abgrenzung ohne vorausgesetztes informelles Kontextwissen erkennen lassen.

#### Begründung

Gemeinsame Verständlichkeit ermöglicht verlässliche Zusammenarbeit und reproduzierbare Auswertung unabhängig vom jeweiligen Leser.

#### Priorität

Mandatory

#### Verifikation

Ein Review durch einen menschlichen Leser und eine isolierte maschinelle Kontextprüfung bestätigen jeweils dieselbe Bedeutung, Verbindlichkeit und Abgrenzung.

### 15.2 Anforderungen an Begriffe

#### Requirement ID

REQ-TERM-003

#### Titel

Genau eine kanonische Bedeutung

#### Beschreibung

Jeder kanonische Begriff MUST genau eine kanonische Bedeutung besitzen. Dieselbe Bezeichnung MUST NOT gleichzeitig unterschiedliche fachliche Konzepte bezeichnen.

#### Begründung

Eine eindeutige Bedeutungszuordnung schützt Referenzen und verhindert kontextabhängige Umdeutungen.

#### Priorität

Mandatory

#### Verifikation

Das Review vergleicht die Verwendungen eines Begriffs projektweit mit seiner kanonischen Definition; jede zweite oder abweichende Bedeutung führt zur Ablehnung.

#### Requirement ID

REQ-TERM-004

#### Titel

Widerspruchsfreie Verwendung von Fachbegriffen

#### Beschreibung

Fachbegriffe MUST in allen Projektbereichen gemäß ihrer kanonischen Bedeutung verwendet werden und MUST NOT widersprüchlich verwendet werden. Bereichsspezifische Formulierungen MUST die bestehende Bedeutung unverändert lassen.

#### Begründung

Widerspruchsfreiheit bewahrt ein gemeinsames fachliches Modell über Dokumentgrenzen hinweg.

#### Priorität

Mandatory

#### Verifikation

Ein projektweiter Verwendungsabgleich prüft Stichproben und alle geänderten Fundstellen gegen PB-004; festgestellte Bedeutungswidersprüche müssen vor Freigabe behoben sein.

### 15.3 Anforderungen an Dokumentation

#### Requirement ID

REQ-TERM-005

#### Titel

Referenzierung bestehender Definitionen

#### Beschreibung

Dokumente MUST auf bestehende kanonische Definitionen referenzieren, statt sie erneut oder abweichend zu formulieren. Eine notwendige Erläuterung MUST als Erläuterung erkennbar bleiben und MUST die referenzierte Bedeutung unverändert lassen.

#### Begründung

Direkte Referenzen erhalten eine einzige autoritative Quelle und reduzieren divergierende Kopien.

#### Priorität

Mandatory

#### Verifikation

Das Dokumentreview prüft jeden verwendeten kanonischen Begriff auf eine auflösbare Referenz und sucht nach duplizierten oder konkurrierenden Definitionen.

#### Requirement ID

REQ-TERM-006

#### Titel

Nachvollziehbare terminologische Änderungen

#### Beschreibung

Jede normative Änderung an der Terminologie MUST versioniert, begründet und hinsichtlich ihrer betroffenen Referenzen geprüft werden. Die Dokumentation MUST erkennen lassen, welche Festlegung gilt.

#### Begründung

Nachvollziehbarkeit schützt die Aussagekraft älterer Referenzen und ermöglicht belastbare Reviews.

#### Priorität

Mandatory

#### Verifikation

Versionsstand, Änderungsbegründung und Referenzprüfung werden im Review gemeinsam kontrolliert; fehlt eines dieser Elemente, darf die Änderung nicht freigegeben werden.

### 15.4 Anforderungen an Erweiterbarkeit

#### Requirement ID

REQ-TERM-007

#### Titel

Keine Ersetzung bestehender Begriffe durch Erweiterungen

#### Beschreibung

Neue Begriffe MUST bestehende kanonische Begriffe ergänzen und MUST NOT bestehende Begriffe ersetzen. Eine Ablösung darf ausschließlich als ausdrücklich beschlossene Änderung außerhalb einer bloßen Erweiterung erfolgen.

#### Begründung

Erweiterungen sollen den Begriffsbestand vergrößern, ohne gültige Referenzen unerwartet zu entwerten.

#### Priorität

Mandatory

#### Verifikation

Vor Aufnahme eines neuen Begriffs wird geprüft, ob sein Zweck bereits durch einen bestehenden Begriff erfüllt wird oder ob bestehende Verwendungen dadurch verdrängt würden.

#### Requirement ID

REQ-TERM-008

#### Titel

Rückwärtskompatible Erweiterungen

#### Beschreibung

Terminologische Erweiterungen MUST rückwärtskompatibel sein. Bestehende gültige Bedeutungen, Verwendungen und Referenzen MUST nach einer Erweiterung weiterhin unverändert verständlich und auflösbar bleiben.

#### Begründung

Rückwärtskompatibilität erhält den Wert bestehender Dokumentation und verhindert erzwungene Folgeänderungen ohne fachlichen Grund.

#### Priorität

Mandatory

#### Verifikation

Ein Vorher-nachher-Abgleich bestätigt, dass alle zuvor gültigen Definitionen und Referenzen weiterhin dieselbe Aussage besitzen und auflösbar sind.

### 15.5 Anforderungen an Konsistenz

#### Requirement ID

REQ-TERM-009

#### Titel

Stabile Identifier

#### Beschreibung

Identifier MUST stabil bleiben. Sie MUST NOT wegen redaktioneller, stilistischer oder persönlicher Präferenzen geändert, neu vergeben oder für einen anderen Gegenstand wiederverwendet werden.

#### Begründung

Stabile Identifier sichern dauerhafte Referenzierbarkeit unabhängig von veränderlichen Darstellungen.

#### Priorität

Mandatory

#### Verifikation

Das Review vergleicht Identifier mit früheren freigegebenen Ständen und weist unbegründete Änderungen, Wiederverwendungen oder Neuzuordnungen zurück.

#### Requirement ID

REQ-TERM-010

#### Titel

Vorrang der Konsistenz

#### Beschreibung

Terminologische Konsistenz MUST Vorrang vor persönlichem Stil haben. Autoren MUST die kanonische Bezeichnung auch dann verwenden, wenn sie eine andere Formulierung bevorzugen.

#### Begründung

Projektweite Einheitlichkeit ist für gemeinsames Verständnis wichtiger als individuelle sprachliche Variation.

#### Priorität

Mandatory

#### Verifikation

Ein Terminologieabgleich prüft geänderte Texte auf stilistisch motivierte Synonyme und ersetzt oder beanstandet jede nicht zugelassene Variante.

#### Requirement ID

REQ-TERM-011

#### Titel

Vorrang von Architekturentscheidungen

#### Beschreibung

Geltende Architekturentscheidungen MUST Vorrang vor individuellen terminologischen Präferenzen haben. Terminologische Festlegungen MUST einschlägige Architecture Decisions respektieren und MUST ihnen nicht widersprechen.

#### Begründung

Der Vorrang beschlossener Architektur erhält die Kohärenz zwischen Projektentscheidungen und ihrer Sprache.

#### Priorität

Mandatory

#### Verifikation

Das Review gleicht jede betroffene terminologische Änderung mit PB-998 und den referenzierten Architecture Decisions ab; ein Widerspruch verhindert die Freigabe.

### 15.6 Langfristige Designziele

#### Requirement ID

REQ-TERM-012

#### Titel

Langfristige Wartbarkeit

#### Beschreibung

Die Terminologie SHOULD über lange Projektzeiträume verständlich, prüfbar und mit vertretbarem redaktionellem Aufwand pflegbar bleiben.

#### Begründung

Wartbarkeit verhindert, dass wachsender Umfang zu unkontrollierter begrifflicher Abweichung führt.

#### Priorität

Recommended

#### Verifikation

Regelmäßige Reviews prüfen, ob Definitionen auffindbar sind, Änderungen lokal nachvollzogen werden können und keine vermeidbaren Mehrfachpflegepunkte bestehen.

#### Requirement ID

REQ-TERM-013

#### Titel

Internationale Zusammenarbeit

#### Beschreibung

Die Terminologie SHOULD internationale Zusammenarbeit unterstützen, indem kanonische Bezeichnungen sprachübergreifend eindeutig zugeordnet und lokalisierte Darstellungen klar von ihnen getrennt werden können.

#### Begründung

Sprachübergreifende Zuordnung reduziert Missverständnisse zwischen Mitwirkenden mit unterschiedlichem sprachlichem Hintergrund.

#### Priorität

Recommended

#### Verifikation

Ein Review prüft anhand mindestens einer lokalisierten Darstellung, ob die Zuordnung zur kanonischen Bezeichnung ohne Bedeutungsverlust eindeutig bleibt.

#### Requirement ID

REQ-TERM-014

#### Titel

Erweiterbarkeit

#### Beschreibung

Die Terminologie SHOULD neue fachliche Bereiche aufnehmen können, ohne bestehende Bedeutungsgrenzen aufzuweichen oder den vorhandenen Bestand neu ordnen zu müssen.

#### Begründung

Ein erweiterbarer Begriffsbestand unterstützt Projektwachstum bei gleichzeitiger Stabilität.

#### Priorität

Recommended

#### Verifikation

Bei jeder Erweiterung wird geprüft, ob sie durch eine klar abgegrenzte Ergänzung möglich ist und bestehende Definitionen unverändert bleiben.

#### Requirement ID

REQ-TERM-015

#### Titel

Eindeutige Kommunikation und geringe Mehrdeutigkeit

#### Beschreibung

Die Terminologie SHOULD eindeutige Kommunikation ermöglichen und die verbleibende Mehrdeutigkeit auf das fachlich unvermeidbare Minimum begrenzen.

#### Begründung

Geringe Mehrdeutigkeit senkt Abstimmungsaufwand und Fehlinterpretationen in allen Projektbereichen.

#### Priorität

Recommended

#### Verifikation

Unabhängige Leser ordnen repräsentative Aussagen demselben fachlichen Gegenstand zu; abweichende Zuordnungen werden als Verbesserungsbedarf dokumentiert.

#### Requirement ID

REQ-TERM-016

#### Titel

Hohe Referenzierbarkeit

#### Beschreibung

Terminologische Festlegungen SHOULD dauerhaft eindeutig auffindbar und präzise referenzierbar sein.

#### Begründung

Hohe Referenzierbarkeit ermöglicht belastbare Querverweise, Reviews und spätere Pflege.

#### Priorität

Recommended

#### Verifikation

Ein Referenztest bestätigt, dass jede geprüfte Festlegung über Dokument, Abschnitt und stabile Bezeichnung eindeutig gefunden werden kann.

#### Requirement ID

REQ-TERM-017

#### Titel

Stabile Dokumentation

#### Beschreibung

Die Terminologie SHOULD dazu beitragen, dass die fachliche Aussage bestehender Dokumentation über Versionen hinweg stabil bleibt.

#### Begründung

Stabile Dokumentation bewahrt Wissen und vermeidet unnötige Überarbeitungen aufgrund rein sprachlicher Veränderungen.

#### Priorität

Recommended

#### Verifikation

Ein Versionsvergleich prüft, ob unveränderte Referenzen und Aussagen weiterhin dieselbe terminologische Bedeutung besitzen.

#### Requirement ID

REQ-TERM-018

#### Titel

Wiederverwendbarkeit

#### Beschreibung

Kanonische Terminologie SHOULD in unterschiedlichen Projektbereichen wiederverwendbar sein, sofern derselbe fachliche Gegenstand bezeichnet wird, und MUST dabei ihre Bedeutung beibehalten.

#### Begründung

Wiederverwendbarkeit vermeidet parallele Begriffsbestände und stärkt ein gemeinsames Projektverständnis.

#### Priorität

Recommended

#### Verifikation

Ein bereichsübergreifender Vergleich bestätigt, dass wiederverwendete Bezeichnungen auf dieselbe Definition verweisen und keine Bereichseigenbedeutung erhalten.

## Kapitel 16 – Akzeptanzkriterien und Release Gate

Terminologie muss überprüfbar sein, damit ihre Eindeutigkeit, Vollständigkeit und projektweite Verwendbarkeit nicht von subjektiven Einschätzungen abhängen. Nur nachweisbare Prüfungen können bestätigen, dass Begriffsbestand, Benennungsregeln und Verweise gemeinsam eine belastbare Grundlage bilden.

Objektive Qualitätskriterien schaffen eine einheitliche Abnahmebasis, machen Mängel sichtbar und verhindern die Freigabe bei ungeklärten Widersprüchen. Dieses Kapitel definiert deshalb den offiziellen Release Gate für PB-004 und bildet den Abschluss des Dokuments.

### 16.1 Ziel des Release Gates

Der Abnahmeprozess stellt vor der Freigabe sicher, dass PB-004 vollständig, widerspruchsfrei, nachvollziehbar und mit den geltenden Governance-Vorgaben vereinbar ist. Er überführt die in diesem Dokument enthaltenen Regeln und Definitionen in prüfbare Freigabebedingungen, ohne zusätzliche Glossarbegriffe, Gameplaymechaniken oder Implementierungsdetails einzuführen.

Über das Release Gate darf nur auf Grundlage des vollständig geprüften Dokumentstands entschieden werden. Festgestellte Abweichungen werden vor der Freigabe behoben oder verhindern die Freigabe; eine stillschweigende Ausnahme ist nicht zulässig. Prüfergebnisse müssen so festgehalten werden, dass der geprüfte Stand, die durchgeführten Prüfungen, offene Befunde und die abschließende Entscheidung nachvollziehbar sind.

Die Abnahme umfasst die Qualitätskriterien, die Dokumentations- und Konsistenzprüfung, den Governance Review und die vollständige Release Checklist. Nur ihr gemeinsamer erfolgreicher Abschluss belegt die Freigabereife von PB-004.

### 16.2 Qualitätskriterien

Für die Abnahme gelten die folgenden zwölf verbindlichen Qualitätskriterien:

1. **Eindeutigkeit:** Jeder kanonische Begriff besitzt genau eine klar abgegrenzte kanonische Definition.
2. **Einmaligkeit:** Jedes kanonische Konzept wird durch genau einen kanonischen Begriff bezeichnet; doppelte Begriffe und konkurrierende Definitionen sind ausgeschlossen.
3. **Synonymkontrolle:** Nicht ausdrücklich zugelassene Synonyme, Kurzformen oder abweichende Schreibweisen werden nicht als austauschbare Bezeichnungen verwendet.
4. **Vollständigkeit:** Sämtliche vorgesehenen Kapitel, normativen Inhalte und erforderlichen Angaben sind vorhanden und nicht durch Platzhalter oder offene Redaktionstexte ersetzt.
5. **Strukturelle Einheitlichkeit:** Kapitel, Glossareinträge, Regeln und Querverweise folgen jeweils der für sie festgelegten Struktur.
6. **Referenzintegrität:** Jede interne Referenz und jede Cross Reference führt eindeutig zum beabsichtigten, vorhandenen Ziel.
7. **Governance-Konformität:** Frontmatter, Versionierung, Statusführung, kanonischer Pfad und Dokumentgrenzen entsprechen den geltenden Vorgaben.
8. **Architekturkonformität:** Alle für PB-004 einschlägigen `Accepted` Architecture Decisions sind berücksichtigt; zu PB-998 besteht kein offener Konflikt.
9. **Sprachliche Einheitlichkeit:** Sprache, normative Ausdrucksweise, Schreibweisen und grammatische Form sind über das gesamte Dokument konsistent.
10. **Terminologische Einheitlichkeit:** Kanonische Begriffe, Identifier-Regeln und Naming-Regeln werden im gesamten Dokument ohne Bedeutungsverschiebung angewendet.
11. **Redaktionelle Fehlerfreiheit:** Offene Editorial-Fehler, unbeabsichtigte Wiederholungen, beschädigte Formatierungen und für PB-004 relevante offene Punkte aus PB-999 sind beseitigt.
12. **Prüfbarkeit:** Jedes Abnahmeergebnis ist durch einen dokumentierten Befund, einen nachvollziehbaren Vergleich oder eine eindeutig bestätigte Checklistenposition belegbar.

Ein Kriterium gilt nur dann als erfüllt, wenn der vollständige Dokumentstand geprüft wurde. Stichproben dürfen vorbereitend eingesetzt werden, ersetzen jedoch keine vollständige Abnahme.

### 16.3 Dokumentationsprüfung

Die Dokumentationsprüfung umfasst mindestens die folgenden vollständigen Prüfungen:

- **Frontmatter:** Alle gemäß PB-000 erforderlichen Felder sind vorhanden, syntaktisch korrekt und inhaltlich plausibel. `document_id`, Titel, Status, Version, Datumsangaben, Abhängigkeiten, Beziehungen, Tags, `canonical_path` und `context_priority` werden gegen Dokumentinhalt und Ablageort geprüft.
- **Dokumentidentität:** Dokument-ID, Titel und kanonischer Pfad bezeichnen durchgehend PB-004; es bestehen keine konkurrierenden Identitäten oder Pfadangaben.
- **Version und Änderungsstand:** Die Version entspricht dem tatsächlich erreichten Bearbeitungsstand. Datumsangaben und Status widersprechen der Version und der beabsichtigten Freigabe nicht.
- **Kapitelbestand:** Die Kapitel 1 bis 16 sind vorhanden, vollständig, eindeutig nummeriert und in der vorgesehenen Reihenfolge angeordnet. Kapitel 16 ist der Abschluss des Dokuments.
- **Kapitelstruktur:** Überschriftenebenen, Abschnittsnummern, Listen, Tabellen und normative Blöcke sind konsistent aufgebaut; es gibt keine verwaisten oder falsch zugeordneten Abschnitte.
- **Glossarstruktur:** Alle Glossareinträge verwenden die in PB-004 festgelegte Eintragsstruktur vollständig und in gleichbleibender Reihenfolge. Kapitel 16 wird ausdrücklich nicht als Glossar geführt.
- **Normative Inhalte:** Sämtliche normativen Kapitel und Pflichtangaben sind vollständig. Normative Aussagen verwenden die festgelegte normative Sprachregel konsistent.
- **Querverweise:** Alle Cross References, Kapitelverweise, Dokumentverweise und Verweise auf Architecture Decisions werden einzeln auf Existenz, Zielgenauigkeit und korrekte Bezeichnung geprüft.
- **Interne Referenzen:** Anker, Überschriftenziele, IDs und sonstige dokumentinterne Referenzziele sind gültig, eindeutig und erreichbar.
- **Redaktioneller Stand:** Rechtschreibung, Grammatik, Zeichensetzung, Markdown-Formatierung, Leerstellen, Wiederholungen, Platzhalter und offene redaktionelle Markierungen werden vollständig geprüft.
- **Editorial Backlog:** Jeder PB-004 betreffende Eintrag in PB-999 ist abgearbeitet oder vor der Freigabe eindeutig als nicht mehr anwendbar geklärt; es verbleibt kein offener freigaberelevanter Punkt.
- **Dokumentgrenze:** Das Dokument enthält ausschließlich Terminologie, Benennungs- und Identifier-Regeln sowie die zugehörigen Qualitäts- und Freigabekriterien. Gameplaymechaniken und Implementierungsdetails sind nicht enthalten.

Jeder Befund wird einer konkreten Stelle zugeordnet. Die Dokumentationsprüfung ist erst abgeschlossen, wenn sämtliche Befunde behoben und die betroffenen Prüfpositionen erneut erfolgreich geprüft wurden.

### 16.4 Konsistenzprüfung

Die Konsistenzprüfung wird über den gesamten Inhalt von PB-004 und gegen seine verbindlichen Referenzdokumente durchgeführt. Sie umfasst:

- **Definitionen:** Jede kanonische Definition kommt genau einmal vor und widerspricht keiner anderen Definition, Abgrenzung oder Regel.
- **Begriffsbestand:** Doppelte Begriffe, abweichende Varianten desselben Begriffs und mehrere Begriffe für dasselbe Konzept werden vollständig ermittelt und bereinigt.
- **Synonyme und Aliasformen:** Jede zugelassene Form ist ausdrücklich dokumentiert und eindeutig zugeordnet; jede nicht zugelassene Form wird entfernt oder als nicht-kanonisch gekennzeichnet, sofern das Dokument ihre Erwähnung erfordert.
- **Bedeutungsstabilität:** Ein kanonischer Begriff trägt in Definitionen, Beispielen, Regeln, Cross References und erläuterndem Text stets dieselbe Bedeutung.
- **Schreibweisen:** Groß- und Kleinschreibung, Singular und Plural, Bindestriche, Abkürzungen und englische beziehungsweise deutsche Darstellungen entsprechen den festgelegten Naming-Regeln.
- **Identifier:** Präfixe, Formate, Zeichenregeln, Eindeutigkeit und Referenzverwendung stimmen mit den festgelegten Identifier-Regeln überein; keine ID ist doppelt oder einem wechselnden Gegenstand zugeordnet.
- **Strukturen:** Gleichartige Glossareinträge und normative Festlegungen verwenden dieselben Pflichtbestandteile, dieselbe Reihenfolge und dieselbe Überschriftenlogik.
- **Cross References:** Ausgangstext, Zielbezeichnung und referenzierter Inhalt stimmen fachlich überein; zirkuläre Verweise ersetzen keine erforderliche Definition.
- **Dokumentübergreifende Aussagen:** Die Aussagen von PB-004 widersprechen PB-000, PB-001, PB-002 oder PB-003 nicht und überschreiten nicht die dort festgelegten Zuständigkeiten.
- **Architecture Decisions:** Jede einschlägige `Accepted` Decision aus PB-998 ist umgesetzt. `Pending`, `Rejected` oder `Superseded` Decisions werden nicht als verbindliche Grundlage behandelt.
- **Version und Metadaten:** Version, Status, `updated`, Beziehungen und `canonical_path` ergeben gemeinsam einen widerspruchsfreien Freigabestand.
- **Sprache und Normativität:** Gleiche Verbindlichkeitsgrade werden gleich ausgedrückt; erläuternde Aussagen stehen nicht im Widerspruch zu normativen Regeln.

Ein festgestellter Widerspruch wird nicht durch Interpretation als erledigt betrachtet. Er muss im Dokument eindeutig beseitigt und anschließend erneut gegen alle betroffenen Stellen geprüft werden.

### 16.5 Governance Review

Der Governance Review beginnt erst, wenn Dokumentations- und Konsistenzprüfung abgeschlossen sind, alle dabei festgestellten Befunde behoben wurden und die Release Checklist bis auf die Review- und Freigabepositionen erfüllt ist. Review-Grundlage sind der vollständige PB-004-Dokumentstand, PB-000 bis PB-003, PB-998, der für PB-004 relevante Stand von PB-999 sowie die dokumentierten Prüfergebnisse.

Im Review wird zuerst die Prüfbasis bestätigt: Dokumentidentität, Version, vorgesehener Freigabestand und Umfang müssen eindeutig sein. Anschließend wird geprüft, ob PB-004 seine Governance-Aufgabe vollständig erfüllt, seine Dokumentgrenze einhält, sämtliche einschlägigen `Accepted` Architecture Decisions berücksichtigt und keine ungeklärten Widersprüche zu verbindlichen Project-Bible-Dokumenten enthält. Danach werden die Nachweise der Dokumentations- und Konsistenzprüfung sowie jede Position der Release Checklist kontrolliert.

Jeder Review-Befund muss die betroffene Stelle, die verletzte Vorgabe, die erforderliche Korrektur und seinen Bearbeitungsstand benennen. Ein freigabeverhindernder Befund setzt die betroffene Checklistenposition zurück. Nach der Korrektur werden mindestens die betroffene Stelle, ihre Querverbindungen und alle dadurch berührten Prüfpunkte erneut geprüft; eine bloße Bestätigung der Änderung genügt nicht.

Der Review endet mit genau einem Ergebnis:

- **Erfolgreich abgeschlossen:** Es bestehen keine offenen Befunde, sämtliche anwendbaren Nachweise sind bestätigt und alle Review-Voraussetzungen sind erfüllt.
- **Nicht erfolgreich abgeschlossen:** Mindestens ein Befund oder Nachweis ist offen, widersprüchlich oder nicht ausreichend; PB-004 bleibt nicht freigabebereit.

Das Ergebnis wird zusammen mit geprüftem Dokumentstand, Review-Datum, Reviewenden, Befunden und Abschlussentscheidung nachvollziehbar festgehalten. Nur ein erfolgreich abgeschlossener Governance Review erlaubt die Bestätigung der letzten beiden Positionen der Release Checklist.

### 16.6 Release Checklist

Die folgende Arbeitsliste wird für den vollständigen Freigabestand geführt. Eine Checkbox darf erst markiert werden, wenn die zugehörige Prüfung vollständig durchgeführt und ihr Ergebnis belegt wurde.

- [ ] Alle Begriffe besitzen genau eine kanonische Definition.
- [ ] Keine widersprüchlichen Definitionen vorhanden.
- [ ] Keine doppelten Begriffe.
- [ ] Keine unzulässigen Synonyme.
- [ ] Alle Cross References geprüft.
- [ ] Alle Kapitel vollständig.
- [ ] Kapitelstruktur konsistent.
- [ ] Glossarstruktur konsistent.
- [ ] Normative Kapitel vollständig.
- [ ] Frontmatter vollständig.
- [ ] Versionierung konsistent.
- [ ] `canonical_path` korrekt.
- [ ] Sämtliche internen Referenzen gültig.
- [ ] Alle `Accepted` Architecture Decisions berücksichtigt.
- [ ] Keine offenen Konflikte mit PB-998.
- [ ] Keine offenen Editorial-Fehler.
- [ ] PB-999 Editorial Backlog abgearbeitet.
- [ ] Sprache konsistent.
- [ ] Terminologie konsistent.
- [ ] Identifier-Regeln konsistent.
- [ ] Naming-Regeln konsistent.
- [ ] Dokumentgrenze eingehalten: keine Glossardefinitionen in Kapitel 16.
- [ ] Keine Gameplaymechaniken oder Implementierungsdetails im Release-Gate-Kapitel.
- [ ] Qualitätskriterien vollständig geprüft und erfüllt.
- [ ] Dokumentationsprüfung vollständig und erfolgreich abgeschlossen.
- [ ] Konsistenzprüfung vollständig und erfolgreich abgeschlossen.
- [ ] Prüfnachweise vollständig und dem geprüften Dokumentstand zugeordnet.
- [ ] Keine offenen freigabeverhindernden Befunde.
- [ ] Dokument bereit für Governance Review.
- [ ] Governance Review erfolgreich abgeschlossen.
- [ ] PB-004 Version 1.0 freigabebereit.

PB-004 gilt erst dann als abgeschlossen, wenn sämtliche Punkte der Release Checklist erfüllt wurden. Nicht anwendbare, übersprungene oder nur teilweise geprüfte Punkte gelten nicht als erfüllt.

Erst danach darf die Version `1.0.0` gesetzt werden. Das Setzen dieser Version vor dem vollständigen Abschluss der Checkliste und dem erfolgreich abgeschlossenen Governance Review ist unzulässig.
