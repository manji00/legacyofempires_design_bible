---
document_id: PB-004
title: Naming & Terminology
version: 0.2.0
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
