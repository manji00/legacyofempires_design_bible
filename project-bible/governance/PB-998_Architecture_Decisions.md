---
document_id: PB-998
title: Architecture Decisions
version: 1.8.0
status: Canonical
category: Governance
created: 2026-08-06
updated: 2026-08-07
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
  - PB-004
related_documents:
  - PB-004
systems: []
requirements: []
design_goals: []
architecture_decisions:
  - AD-009
  - AD-010
  - AD-011
  - AD-012
tags:
  - governance
  - architecture-decisions
  - decision-register
  - documentation
  - workflow
canonical_path: project-bible/governance/PB-998_Architecture_Decisions.md
context_priority: critical
---

# PB-998 – Architecture Decisions

# Zweck

PB-998 ist die einzige kanonische Ablage und das zentrale Register sämtlicher Architecture Decisions von Project 4X. Es bewahrt Kontext, Status, Begründung und Konsequenzen jeder Decision. Separate Architecture-Decision-Dateien oder konkurrierende ID-Familien werden nicht geführt.

# Verwendung

Jede Architecture Decision erhält bei ihrer Registrierung die nächste freie, global eindeutige ID im Format `AD-XXX`. IDs werden niemals geändert oder erneut vergeben. Die fachlichen Themenbereiche dienen ausschließlich der Lesbarkeit.

Der verbindliche Lifecycle lautet:

`Draft` → `Pending` → `Architecture Review` → `Accepted` → `Implemented` → `Verified` → `Superseded`

- `Draft`: in Ausarbeitung und noch nicht prüfbereit.
- `Pending`: vollständig formuliert und zur formalen Architekturprüfung vorgemerkt.
- `Architecture Review`: in Prüfung auf Konsistenz, Auswirkungen und Entscheidungsreife.
- `Accepted`: angenommen, projektweit verbindlich und zur Umsetzung freigegeben.
- `Implemented`: die aus der Decision folgenden Änderungen sind umgesetzt; die Decision bleibt verbindlich.
- `Verified`: Umsetzung und Wirkung sind geprüft; die Decision bleibt verbindlich.
- `Superseded`: durch eine neuere Decision ersetzt, nicht mehr verbindlich und historisch erhalten.

Die Stufen werden in dieser Reihenfolge durchlaufen. Eine Umsetzung darf erst beginnen, nachdem die Decision registriert und `Accepted` ist. Decisions vor `Accepted` und `Superseded` Decisions sind nicht verbindlich. Ab `Accepted` bleibt eine Decision bis zu ihrer Supersession verbindlich.

Eine Decision wird weder gelöscht noch inhaltlich umgeschrieben, um eine neue Festlegung abzubilden. Eine ablösende Decision nennt die ersetzten `AD-XXX`-IDs unter der gerichteten Beziehung `supersedes`; die ersetzten Decisions wechseln zu `Superseded`. „Verwandte Entscheidungen“ ersetzt diese Beziehung nicht.

Unmittelbar anwendbare, verbindliche Decisions werden in Project-Bible-Dokumenten im Frontmatter-Feld `architecture_decisions` als Liste von `AD-XXX`-IDs referenziert. Leere Listen werden als `architecture_decisions: []` angegeben.

# Entscheidungsformat

Jede Decision wird unter dem passenden fachlichen Themenbereich geführt und enthält mindestens:

```text
## AD-XXX – Titel

Status

Entscheidungsdatum

Betroffene Dokumente

Kontext

Entscheidung

Begründung

Konsequenzen

Verwandte Entscheidungen
```

Für eine Supersession wird zusätzlich die Beziehung `supersedes` angegeben. Traceability-Einträge verbinden die Decision mit ihren auslösenden Findings, genehmigten Plänen und Work Packages.

# Glossar & Dokumentation

## AD-001 – Glossarbegriffe werden nach fachlichen Domänen gruppiert

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-004

**Kontext**

Ein projektweites Glossar muss fachliche Zusammenhänge sichtbar machen und als Arbeitsgrundlage für Design, Technik, Inhalte und Implementierung dienen. Eine rein alphabetische Anordnung trennt eng verwandte Begriffe voneinander und verdeckt ihre Domänenzugehörigkeit.

**Entscheidung**

Glossarbegriffe werden nach fachlichen Domänen gruppiert und nicht alphabetisch angeordnet.

**Begründung**

Die Domänengruppierung macht Begriffsbeziehungen, fachliche Grenzen und fehlende Definitionen leichter erkennbar. Sie unterstützt dadurch eine konsistente Modellierung besser als eine Sortierung nach Schreibweise.

**Konsequenzen**

- PB-004 und spätere Glossardokumente gliedern Begriffe nach fachlichen Domänen.
- Alphabetische Zugänge dürfen nur als abgeleitete Register oder Navigationshilfen ergänzt werden.
- Neue Begriffe werden der fachlich passenden Domäne zugeordnet.

**Verwandte Entscheidungen**

- AD-006

## AD-002 – Population Group ist der kanonische Begriff

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-004
- Alle späteren Dokumente mit Bezug auf Bevölkerungsgruppen

**Kontext**

Für abgegrenzte Mengen von Personen mit ausdrücklich festgelegten gemeinsamen Merkmalen wird ein eindeutiger, projektweit verständlicher Begriff benötigt. Die Kurzform „Pop“ ist außerhalb bestimmter Genre- und Entwicklungskontexte mehrdeutig und eignet sich nicht als offizieller Fachbegriff.

**Entscheidung**

`Population Group` ist der kanonische Begriff. Der Begriff „Pop“ wird innerhalb von Project 4X nicht als offizieller Begriff verwendet.

**Begründung**

`Population Group` beschreibt das Konzept explizit, bleibt für unterschiedliche Zielgruppen verständlich und vermeidet die Mehrdeutigkeit sowie implizite Fremddefinitionen der Kurzform „Pop“.

**Konsequenzen**

- Project-Bible-Dokumente, technische Bezeichnungen, Datenmodelle und Modding-Dokumentation verwenden `Population Group`.
- „Pop“ darf nicht als offizieller Name, kanonischer Alias oder Identifier eingeführt werden.
- Bestehende nicht-kanonische Verwendungen werden bei ihrer Überarbeitung an den kanonischen Begriff angepasst.

**Verwandte Entscheidungen**

- AD-001
- AD-003

## AD-003 – Ethnicity wird vorerst nicht kanonisch definiert

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-004
- Alle späteren Dokumente mit Bezug auf gesellschaftliche oder kulturelle Merkmale

**Kontext**

Der Begriff `Ethnicity` überschneidet sich potenziell mit mehreren bereits getrennt betrachteten gesellschaftlichen und kulturellen Konzepten. Ohne eine abschließend festgelegte fachliche Abgrenzung würde eine kanonische Definition derzeit Mehrdeutigkeiten schaffen.

**Entscheidung**

`Ethnicity` wird vorerst nicht als kanonischer Begriff definiert.

**Begründung**

Der Verzicht auf eine voreilige Definition verhindert, dass spätere fachliche Modelle an eine unzureichend abgegrenzte Kategorie gebunden werden. Nur ausdrücklich definierte Begriffe sollen kanonische Bedeutung erhalten.

**Konsequenzen**

- PB-004 enthält vorerst keinen kanonischen Glossareintrag für `Ethnicity`.
- Die bloße Verwendung des Begriffs in nicht-kanonischen Quellen begründet keine projektweite Definition.
- Spätere Dokumente dürfen `Ethnicity` nicht als bereits festgelegtes kanonisches Konzept voraussetzen.

**Verwandte Entscheidungen**

- AD-001
- AD-002

# Workflow

## AD-004 – Große Dokumente werden inkrementell entwickelt

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- Alle großen Project-Bible-Dokumente

**Kontext**

Große kanonische Dokumente verbinden viele fachliche Bereiche und können bei einer vollständigen Bearbeitung in einem einzigen Schritt unübersichtlich werden. Für ihre kontrollierte Entwicklung wird ein eindeutiger Arbeitsmodus je Änderung benötigt.

**Entscheidung**

Große Dokumente werden inkrementell entwickelt. Die verbindlichen Arbeitsmodi sind `CREATE`, `EXTEND`, `REFACTOR` und `REVIEW`.

**Begründung**

Die inkrementelle Arbeitsweise begrenzt den Umfang einzelner Änderungen, schützt bereits bestätigte Inhalte und macht Ziel und Eingriffstiefe jeder Bearbeitung eindeutig.

**Konsequenzen**

- `CREATE` erstellt ein neues Dokument in dem ausdrücklich beauftragten Umfang.
- `EXTEND` ergänzt ein bestehendes Dokument, ohne bestätigte Inhalte unnötig umzustrukturieren.
- `REFACTOR` ordnet oder überarbeitet bestehende Inhalte, ohne neue fachliche Entscheidungen stillschweigend einzuführen.
- `REVIEW` prüft bestehende Inhalte und verändert sie nur, wenn dies ausdrücklich beauftragt ist.
- Der jeweils festgelegte Arbeitsmodus begrenzt den Umfang der Bearbeitung.

**Verwandte Entscheidungen**

- AD-005

## AD-005 – Architekturentscheidungen werden vor der Umsetzung getroffen

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-998
- Alle von einer Architekturentscheidung betroffenen Project-Bible-Dokumente
- Technische Spezifikationen und Implementierungspläne

**Kontext**

Werden strukturelle Festlegungen erst während oder nach einer Umsetzung erkennbar, können Implementierungsdetails unbeabsichtigt die Projektarchitektur bestimmen und die Nachvollziehbarkeit der Entscheidung geht verloren.

**Entscheidung**

Architekturentscheidungen werden vor der Umsetzung getroffen und anschließend in PB-998 dokumentiert.

**Begründung**

Die Trennung von Entscheidung und Umsetzung stellt sicher, dass Architektur bewusst, prüfbar und unabhängig von bereits geschaffenem Implementierungsaufwand festgelegt wird.

**Konsequenzen**

- Eine von einer Architekturentscheidung abhängige Umsetzung beginnt erst nach der Entscheidung.
- Die getroffene Entscheidung wird vor ihrer Umsetzung mit einer AD-ID in PB-998 festgehalten.
- Spätere Spezifikationen und Implementierungspläne referenzieren und beachten die einschlägigen Entscheidungen.

**Verwandte Entscheidungen**

- AD-004
- AD-007

# Architektur

## AD-006 – PB-004 definiert ausschließlich Terminologie

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-004
- Spätere Game-Design-, Technik- und Balancing-Dokumente

**Kontext**

Ein Terminologiedokument muss Begriffe eindeutig definieren, ohne zugleich die Mechaniken festzulegen, die diese Begriffe verwenden. Eine Vermischung würde Zuständigkeiten zwischen Governance, Game Design, Technik und Balancing auflösen.

**Entscheidung**

PB-004 definiert ausschließlich Terminologie. Spielmechaniken gehören nicht nach PB-004.

**Begründung**

Die klare Dokumentgrenze hält Begriffsdefinitionen stabil und wiederverwendbar, während Mechaniken in den dafür vorgesehenen Dokumenten vollständig spezifiziert und geändert werden können.

**Konsequenzen**

- PB-004 enthält Definitionen, Benennungsregeln, Abgrenzungen und Begriffsbeziehungen.
- Abläufe, Formeln, Werte, Zustandsänderungen und andere Spielmechaniken werden in zuständigen Game-Design-, Technik- oder Balancing-Dokumenten beschrieben.
- Mechanische Aussagen werden bei der Überarbeitung von PB-004 nicht als Bestandteil einer Terminologiedefinition eingeführt.

**Verwandte Entscheidungen**

- AD-001
- AD-007

## AD-007 – Architekturentscheidungen werden ausschließlich in PB-998 dokumentiert

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-998
- Alle Project-Bible-Dokumente

**Kontext**

Architekturentscheidungen verlieren ihre Auffindbarkeit und Verbindlichkeit, wenn sie über verschiedene Dokumente, Änderungsverläufe oder Arbeitskontexte verteilt werden. Das Projekt benötigt ein einziges kanonisches Entscheidungsregister.

**Entscheidung**

Architekturentscheidungen werden ausschließlich in PB-998 dokumentiert.

**Begründung**

Ein zentrales Register schafft eine eindeutige Quelle, globale IDs und einen konsistenten Änderungs- und Supersession-Prozess.

**Konsequenzen**

- PB-998 ist die einzige kanonische Ablage für Architecture Decisions.
- Andere Dokumente referenzieren einschlägige AD-IDs, statt eigene Architecture Decisions zu führen.
- Neue Entscheidungen erhalten in PB-998 die nächste freie globale AD-ID.
- Veraltete Entscheidungen bleiben in PB-998 erhalten und werden als `Superseded` markiert.

**Verwandte Entscheidungen**

- AD-005
- AD-006

# Gameplay & Engine

## AD-008 – Proposal als allgemeines Gameplay-Konzept

**Status**

Accepted

**Entscheidungsdatum**

2026-08-06

**Betroffene Dokumente**

- PB-003
- PB-004
- GD-100 (zukünftig; noch zu erstellen)
- TECH-100 (zukünftig; noch zu erstellen)

**Kontext**

Während der Erstellung von PB-004 Kapitel 9 wurde `Proposal` zunächst im diplomatischen Kontext betrachtet. Bei der Definition der domänenübergreifenden Gameplay-Terminologie in PB-004 Kapitel 10 wurde festgestellt, dass das Konzept nicht ausschließlich zur Diplomatie gehört.

Dasselbe Grundkonzept kann unter anderem in Diplomatie, Gesetzgebung, Regierung, Forschung, Bauwesen, Wirtschaft, Handel und Budgetierung sowie für andere strukturierte Spieler- oder Systemvorhaben verwendet werden.

**Entscheidung**

`Proposal` ist ein allgemeiner, domänenübergreifender Gameplay-Begriff.

Ein `Proposal` beschreibt einen formalisierten Vorschlag oder eine beabsichtigte Handlung, die vor ihrer Ausführung validiert, geprüft, verändert, bestätigt, angenommen, abgelehnt, zurückgezogen oder anderweitig verarbeitet werden kann.

`Proposal` ist nicht mit der tatsächlichen Ausführung gleichzusetzen. Die Ausführung wird durch die kanonischen Begriffe `Action` beziehungsweise `Execution` entsprechend den Definitionen in PB-004 Kapitel 10 beschrieben.

`Diplomatic Proposal` ist eine Spezialisierung des allgemeinen `Proposal`-Konzepts und keine eigenständige konkurrierende Grunddefinition.

**Begründung**

Die allgemeine Definition unterstützt die Designphilosophie aus PB-003: Der Spieler formuliert Absichten, während die Simulation deren Gültigkeit, Voraussetzungen, Kosten und Konsequenzen bestimmt.

Eine gemeinsame `Proposal`-Abstraktion verhindert doppelte Definitionen in mehreren Domänen, ermöglicht einheitliche Validierung, unterstützt strukturierte und freie Spielerhandlungen, verbessert die Konsistenz zwischen Game Design, Engine, UI, Savegames und Modding und trennt Absicht, Entscheidung und tatsächliche Ausführung.

**Konsequenzen**

- `Proposal` ist künftig ein kanonischer Gameplay-Begriff.
- Die verbindliche Definition befindet sich in PB-004 Kapitel 10.
- Fachdomänen dürfen `Proposal` verwenden und spezialisieren.
- Fachdomänen dürfen `Proposal` nicht unabhängig neu definieren.
- `Diplomatic Proposal` baut auf der allgemeinen `Proposal`-Definition auf.
- Zukünftige GD- und TECH-Dokumente müssen `Proposal`, `Decision`, `Action` und `Execution` sauber voneinander trennen.
- `Proposal` allein verändert keinen autoritativen Spielzustand.
- Eine Zustandsänderung erfolgt erst nach Validierung und autorisierter Ausführung durch die Simulation.

**Verwandte Entscheidungen**

- AD-001
- AD-004
- AD-005
- AD-006

# Governance-Architektur

## AD-009 – CTX-000 ist eine abgeleitete operative Kontinuitätsansicht

**Status**

Accepted

**Entscheidungsdatum**

2026-08-07

**Betroffene Dokumente**

- CTX-000
- PB-000
- PB-998

**Kontext**

CTX-000 dient der Arbeitskontinuität, beansprucht derzeit jedoch eigene normative Autorität und beschreibt einen gegenüber der kanonischen Project Bible veralteten Arbeitsstand. `GOV-B-001` des genehmigten Resolution Plans `GA-001-RES` verlangt deshalb vor jeder Korrektur von CTX-000 eine Architecture Decision über Autoritätsgrenze, Aktualisierungsverantwortung und Ableitung.

**Entscheidung**

`CTX` bezeichnet eine abgeleitete operative Kontinuitätsansicht; CTX-000 ist das aktuelle Artefakt dieser Kategorie. Für CTX gilt:

- CTX ist niemals eine kanonische Governance-Quelle, besitzt keine eigene normative Autorität und ist keine Source of Truth.
- Kanonische Informationen stammen immer aus den jeweils zuständigen PB-Dokumenten. Dies schließt Accepted Architecture Decisions in PB-998 ein.
- CTX darf jederzeit vollständig aus den kanonischen Governance-Quellen neu erzeugt werden.
- Informationen, die ausschließlich in CTX enthalten sind, besitzen keine normative Autorität.
- Bei jedem Widerspruch haben die PB-Dokumente ausnahmslos Vorrang vor CTX.
- CTX ist für operative Kontinuität und nicht für Governance optimiert.
- Der Project Lead verantwortet die Aktualisierung von CTX-000. Eine Aktualisierung erfolgt nach Änderungen des kanonischen Projektstands, bevor CTX-000 erneut als Arbeitskontext verwendet wird.
- Projektstand und nächster Arbeitsschritt werden ausschließlich aus dem Status der kanonischen Project-Bible-Dokumente, den Accepted Architecture Decisions und den ausdrücklich genehmigten Arbeitsaufträgen abgeleitet.
- CTX-000 verweist auf diese Quellen, fasst sie nur für die operative Kontinuität zusammen und darf ihnen weder widersprechen noch einen konkurrierenden nächsten Arbeitsschritt festlegen.

**Begründung**

Die Trennung bewahrt den praktischen Nutzen des Handoffs, ohne eine zweite Source of Truth neben der Project Bible zu schaffen. Die vollständige Regenerierbarkeit aus PB-Dokumenten stellt sicher, dass CTX ein austauschbares Arbeitsartefakt bleibt. Eine benannte Verantwortung, eindeutige Ableitungsquellen und der ausdrückliche Vorrang der PB-Dokumente verhindern, dass ein veralteter Handoff den kanonischen Projektstand überschreibt. Die Decision wird nach der Prüfung gegen die bestehende Governance-Architektur angenommen, da sie deren Trennung zwischen kanonischen Quellen und abgeleiteten Artefakten konkretisiert, ohne eine konkurrierende Autorität einzuführen.

**Konsequenzen**

- CTX-000 und PB-000 werden ausschließlich im durch `GOV-B-001` freigegebenen Umfang an diese Accepted Decision angepasst.
- CTX-Inhalte werden bei Bedarf aus den kanonischen PB-Dokumenten regeneriert; ausschließlich in CTX dokumentierte Aussagen müssen zur Erlangung normativer Autorität in das zuständige PB-Dokument überführt und dort angenommen werden.
- Das Frontmatterprofil für CTX-000 ist nicht Gegenstand dieser Decision und bleibt der für `GOV-B-015` vorgesehenen Resolution vorbehalten.

**Verwandte Entscheidungen**

- AD-005
- AD-007

**Traceability**

- GA-001-RES
- GOV-B-001
- WP-001

## AD-010 – Architecture Decisions verwenden das zentrale AD-Register

**Status**

Accepted

**Entscheidungsdatum**

2026-08-07

**Betroffene Dokumente**

- PB-000
- PB-998

**Kontext**

PB-000 definiert `ADR-XXX` als Familie separater Architecture Decision Records, während PB-998 `AD-XXX` als globale ID-Familie eines zentralen Registers verwendet. `GOV-B-002` des genehmigten Resolution Plans `GA-001-RES` verlangt vor der Bereinigung dieses Konflikts eine Architecture Decision über ID-Familie, Registermodell, Supersession und Frontmatter-Referenzfeld.

**Entscheidung**

Für Architecture Decisions gilt ausschließlich die global eindeutige ID-Familie `AD-XXX`. PB-998 ist ihre einzige kanonische Ablage und das einzige kanonische Architecture-Decision-Register. Separate Architecture-Decision-Dateien und konkurrierende ID-Familien werden nicht geführt.

Der vollständige Lifecycle einer Architecture Decision ist:

`Draft` → `Pending` → `Architecture Review` → `Accepted` → `Implemented` → `Verified` → `Superseded`

- `Draft`: Die Decision wird ausgearbeitet und ist weder prüfbereit noch verbindlich.
- `Pending`: Die Decision ist vollständig formuliert und wartet auf die formale Architekturprüfung.
- `Architecture Review`: Die Decision wird auf architektonische Konsistenz, Auswirkungen und Entscheidungsreife geprüft.
- `Accepted`: Die Decision ist angenommen, projektweit verbindlich und darf umgesetzt werden.
- `Implemented`: Die aus der Accepted Decision folgenden Änderungen sind umgesetzt; die Decision bleibt verbindlich.
- `Verified`: Umsetzung und beabsichtigte Wirkung sind anhand geeigneter Nachweise geprüft; die Decision bleibt verbindlich.
- `Superseded`: Eine neuere Architecture Decision hat die Decision abgelöst; sie ist nicht mehr verbindlich und bleibt historisch erhalten.

Die Stufen werden in dieser Reihenfolge durchlaufen. Eine Architecture Decision wird weder gelöscht noch durch eine inhaltliche Umschreibung ersetzt. Ab `Accepted` bleibt sie über `Implemented` und `Verified` hinweg verbindlich, bis sie `Superseded` ist.

`supersedes` ist die kanonische Beziehung zwischen Architecture Decisions. Eine ablösende Decision nennt unter `supersedes` die `AD-XXX`-IDs aller von ihr ersetzten Decisions. Die ersetzten Decisions wechseln dadurch zu `Superseded`; allgemeine Verweise unter „Verwandte Entscheidungen“ ersetzen diese gerichtete Beziehung nicht.

Das Frontmatter-Feld `architecture_decisions` ersetzt die Legacy-Bezeichnung `adr_references` und alle sonstigen bisherigen Referenzfelder für Architecture-Decision-Verweise. Es enthält als Liste von `AD-XXX`-IDs die unmittelbar auf ein Dokument anwendbaren, angenommenen und noch nicht supersedierten Decisions; dazu zählen auch Decisions in den Stufen `Implemented` und `Verified`. Leere Listen werden als `architecture_decisions: []` angegeben.

Das Traceability-Modell darf künftig um weitere maschinenlesbare Beziehungen erweitert werden, beispielsweise um Implementierungs- und Verifikationsreferenzen. Solche Ergänzungen erweitern die Nachweiskette, ohne die ID-Familie, das Register, den Lifecycle, die `supersedes`-Beziehung oder das Frontmatter-Feld `architecture_decisions` als Kern des Decision-Modells zu ändern.

**Begründung**

Eine einzige ID-Familie und Ablage beseitigen konkurrierende Regeln, erhalten die bereits etablierten AD-IDs und machen Lifecycle sowie Supersession an einer Stelle nachvollziehbar. Ein eindeutiges Frontmatter-Feld schafft die von `GOV-B-002` verlangte Referenzform, ohne die weitergehende Pflege aller Decision-Referenzen aus `GOV-B-010` vorwegzunehmen. Die Trennung des stabilen Decision-Kerns von künftig ergänzbaren Traceability-Beziehungen verhindert, dass zusätzliche Nachweisanforderungen das Entscheidungsmodell erneut fragmentieren.

**Konsequenzen**

- PB-000 und die allgemeinen Regeln von PB-998 werden im Umfang von `GOV-B-002` auf dieses Modell gebracht; Legacy-Bezeichnungen, konkurrierende ID-Beispiele und bisherige Architecture-Decision-Referenzfelder werden dabei durch `AD-XXX` und `architecture_decisions` ersetzt.
- Die vollständige Befüllung und Validierung des Referenzfelds in weiteren Dokumenten bleibt außerhalb von WP-001.
- Die Klassifikation der Einträge `PB-000-D01` bis `PB-000-D06` wird erst durch AD-011 entschieden.

**Verwandte Entscheidungen**

- AD-005
- AD-007
- AD-011

**Traceability**

- GA-001-RES
- GOV-B-002
- WP-001

## AD-011 – PB-000-D01 bis PB-000-D06 sind normative Spezifikationsregeln

**Status**

Accepted

**Entscheidungsdatum**

2026-08-07

**Betroffene Dokumente**

- PB-000
- PB-998

**Kontext**

PB-000 führt sechs Einträge mit den IDs `PB-000-D01` bis `PB-000-D06` unter der Überschrift „Decisions“. Damit ist nicht erkennbar, ob sie Architecture Decisions, normative Regeln der Spezifikation oder nicht-normative Beschlüsse sind. `GOV-B-005` des genehmigten Resolution Plans `GA-001-RES` verlangt nach Festlegung des einheitlichen Decision-Modells eine Einzelklassifikation und gegebenenfalls die Migration echter Architecture Decisions.

**Entscheidung**

Architecture Decisions und Governance Specifications erfüllen unterschiedliche Aufgaben:

- **Architecture Decisions** dokumentieren, **warum** eine Governance-Regel existiert. Sie bewahren den Entscheidungskontext, die Begründung und die Konsequenzen einer strukturellen Festlegung. Für sie gilt das durch AD-010 festgelegte Decision-Modell; PB-998 bleibt ihre einzige kanonische Ablage und ihr einziges kanonisches Register.
- **Governance Specifications** dokumentieren, **was** die aktuell geltende normative Regel ist. PB-000 enthält ausschließlich solche normativen Spezifikationsregeln und führt weder ein eigenes Architecture-Decision-Register noch lokale Decision-IDs.

PB-000 darf die Architecture Decisions, aus denen seine normativen Regeln hervorgegangen sind, weiterhin über das von AD-010 festgelegte kanonische Frontmatter-Feld `architecture_decisions` referenzieren. Diese Referenzen machen die Herkunft einer Regel nachvollziehbar, verlagern aber weder den Entscheidungskontext nach PB-000 noch schaffen sie dort ein zweites Decision-Register.

Auf dieser Grundlage gilt folgende Klassifikation:

| Eintrag | Klassifikation | Normative Heimat in PB-000 |
|---|---|---|
| `PB-000-D01` | Normative Spezifikationsregel | Kapitel 4.2 sowie das Frontmatter- und Formatmodell |
| `PB-000-D02` | Normative Spezifikationsregel | Kapitel 1 und 4.1 |
| `PB-000-D03` | Normative Spezifikationsregel | Kapitel 4.6 sowie die ID- und Traceability-Regeln |
| `PB-000-D04` | Normative Spezifikationsregel | Kapitel 4.4 und die Dokumentstruktur |
| `PB-000-D05` | Normative Spezifikationsregel | Prototyping Exception in PB-000 |
| `PB-000-D06` | Normative Spezifikationsregel | Regeln für AI Assistants in PB-000 |

Keiner der sechs Einträge wird als eigenständige Architecture Decision oder nicht-normativer Beschluss klassifiziert. Ihre Aussagen bleiben als normative Regeln an ihrer jeweiligen fachlichen Heimat in PB-000 erhalten; die konkurrierende Decision-Liste und ihre lokalen `PB-000-DXX`-IDs entfallen.

**Begründung**

Alle sechs Einträge fassen bereits an anderer Stelle in PB-000 normativ geregelte Inhalte zusammen. Sie treffen keine eigenständigen Architekturentscheidungen mit dokumentiertem Kontext, Begründung und Konsequenzen. Die Trennung zwischen begründender Architecture Decision und geltender Governance Specification erhält sowohl die historische Herleitung als auch eine eindeutige normative Quelle, ohne ein zweites Decision-Register zu führen. Das kanonische Frontmatter-Feld bewahrt die maschinenlesbare Verbindung zwischen beiden Ebenen.

**Konsequenzen**

- Die lokale Decision-Liste wird aus PB-000 entfernt, ohne die klassifizierten normativen Regeln zu entfernen oder fachlich zu verändern.
- Es werden keine `AD-XXX`-Einträge für `PB-000-D01` bis `PB-000-D06` migriert.
- PB-000 referenziert AD-010 und AD-011 über `architecture_decisions`; PB-998 bleibt dennoch das einzige kanonische Architecture-Decision-Register.

**Verwandte Entscheidungen**

- AD-005
- AD-007
- AD-010

**Traceability**

- GA-001-RES
- GOV-B-005
- WP-001

## AD-012 – Process Ownership Model

**Status**

Accepted

**Entscheidungsdatum**

2026-08-07

**Betroffene Dokumente**

- PB-000
- PB-997

**Kontext**

`GOV-B-006` aus `GA-001` stellt fest, dass PB-000 die Review-Level
`Lightweight Review`, `Standard Review` und `Architecture Review` einschließlich
einer Checkliste definiert, während PB-997 parallel einen ausführbaren
Governance-Prozess beschreibt. Der genehmigte Resolution Plan `GA-001-RES`
ordnet das Finding `WP-003` zu und verlangt vor jeder Umsetzung eine
Architecture Decision, die PB-000 als Heimat der Meta-Klassifikation und PB-997
als alleinige Prozessheimat festlegt. Ohne diese Grenze bleiben die Zuordnung
von Änderungsklassen zu Review-Leveln, die zuständigen Freigaberollen und die
Bedeutung von Nachweisartefakten mehrdeutig.

Diese Decision bereitet ausschließlich das Process Ownership Model vor. Sie
setzt weder die erforderliche Synchronisierung von PB-000 und PB-997 um noch
entscheidet sie das gemeinsame Zustands-, Release- oder Versionierungsmodell
aus `GOV-B-014`.

**Entscheidung**

Das Governance-Modell trennt **Authority**, **Ownership** und **Execution**:

- **Authority (Entscheidungsbefugnis)** bezeichnet das Recht, eine Regel,
  Klassifikation oder Entscheidung verbindlich zu setzen, zu ändern oder
  anzunehmen. Authority liegt bei den in PB-000 definierten Freigaberollen;
  Architecture Decisions werden durch das Architecture Board angenommen und
  ihr verbindlicher Status wird ausschließlich in PB-998 geführt.
- **Ownership (kanonische Dokumentverantwortung)** bezeichnet die eindeutige
  Zuständigkeit eines Dokuments für eine Informationsart. Ownership verleiht
  einem Prozessakteur keine zusätzliche Authority und darf nicht auf
  Nachweisartefakte übertragen werden.
- **Execution (Prozessausführung)** bezeichnet die Durchführung der durch die
  Governance-Regeln verlangten Aktivitäten, Prüfungen, Freigaben und
  Protokollierung. Execution wendet Regeln an, setzt oder verändert sie aber
  nicht.

Die kanonische Ownership ist eindeutig verteilt:

- **PB-000 owns governance rules.** PB-000 definiert Governance-Regeln. Dazu
  gehören die zulässigen
  Änderungsklassen, die Namen und Auswahlkriterien der Review-Level, die
  grundlegenden Rollen und ihre Entscheidungsbefugnisse sowie die normative
  Pflicht, den jeweils anwendbaren Prozess aus PB-997 zu durchlaufen. PB-000
  beschreibt keinen ausführbaren Reviewablauf, keine Prozessphasen und keine
  dokumentinternen Reviewchecklisten.
- **PB-997 owns governance processes.** PB-997 definiert und operationalisiert
  Governance-Prozesse. Dazu gehören Auslöser, Reihenfolge
  und Abschluss der Reviewaktivitäten, die je Review-Level anzuwendenden
  Prüfschritte, erforderliche Eingaben und Nachweise, Eskalation,
  Wiederholungsprüfung sowie die Protokollierung der Freigabeentscheidung.
  Prozessdokumente dürfen Governance-Regeln niemals neu definieren, verändern,
  erweitern oder durch abweichende Formulierungen ersetzen. Insbesondere führt
  PB-997 keine konkurrierenden Änderungsklassen, Review-Level oder
  Rollenbefugnisse ein, sondern operationalisiert ausschließlich die in PB-000
  definierten Regeln.
- **PB-998 owns Architecture Decisions.** PB-998 ist die einzige kanonische
  Heimat und das einzige Register für Architecture Decisions. Es dokumentiert
  deren Kontext, Begründung, Konsequenzen und verbindlichen Lifecycle-Status;
  weder PB-000 noch PB-997 noch ein Nachweisartefakt darf eine Architecture
  Decision führen oder ihren Status setzen.
- **GA documents own evidence only.** Governance-Audit-Dokumente der Familie
  `GA` enthalten ausschließlich Evidenz zu Baseline, Findings, Durchführung,
  Prüfergebnissen und Abschluss. Sie besitzen weder Regel-, Prozess- noch
  Decision-Ownership und keine eigenständige Governance-Authority.
- Bei einem Konflikt dieser Verantwortungsbereiche wird nicht nach Aktualität
  oder Detailgrad priorisiert. Die Regel beziehungsweise Klassifikation wird in
  PB-000 und der zugehörige Ablauf in PB-997 korrigiert; bis zur expliziten
  Auflösung gelten widersprüchliche Aussagen nicht gleichzeitig.

Die verbindliche Zuordnungsmatrix lautet:

| Änderungsklasse | Review-Level | Zuständige Freigaberolle |
|---|---|---|
| Redaktionelle Änderung ohne normative oder verhaltensbezogene Wirkung, insbesondere Rechtschreibung, Formatierung, Linkkorrektur, Beispielpflege und rein klarstellende Formulierung | `Lightweight Review` | Document Owner oder ausdrücklich delegierter Reviewer |
| Normative oder fachliche Änderung innerhalb bestehender Architekturgrenzen, insbesondere neue oder geänderte Requirements, Mechaniken, Autorenregeln, Balancing Policy und nicht-architektonische Governance-Regeln | `Standard Review` | Document Owner und Project Lead |
| Strukturelle oder grenzverändernde Änderung, insbesondere Autorität, Ownership, systemübergreifende Schnittstellen, Persistenz, Determinismus, Mod-Kompatibilität und Änderungen am Governance-Prozessmodell | `Architecture Review` | Architecture Board; Annahme wird durch den Status `Accepted` der zugehörigen Architecture Decision in PB-998 dokumentiert |

Für die Zuordnung gilt das höchste durch irgendeinen Teil einer Änderung
ausgelöste Review-Level. Eine Änderung darf nicht in kleinere Teile zerlegt
werden, um ein erforderliches höheres Review-Level zu umgehen. Ein höheres
Level schließt die Prüfziele der niedrigeren Level ein; PB-997 legt fest, wie
diese Prüfziele prozessual ausgeführt und nachgewiesen werden.

Freigaberollen sind Entscheidungsrollen und keine Dokumentklassen. Der
Document Owner verantwortet die fachliche Richtigkeit seines Dokuments, ein
delegierter Reviewer darf ausschließlich Lightweight Reviews freigeben, der
Project Lead genehmigt Standard Reviews gemeinsam mit dem Document Owner, und
das Architecture Board entscheidet Architecture Reviews. Eine Person darf
mehrere Rollen innehaben; die im Reviewnachweis festgehaltenen Rollen bleiben
dennoch getrennt auszuweisen.

Audit Reports, Resolution Plans, Reviewprotokolle, Finding-Listen,
Prüfergebnisse, Wiederholungsprüfungen, Commit-Referenzen und Closure Reports
sind ausschließlich **Nachweisartefakte**. Sie belegen Baseline, Durchführung,
Ergebnis oder Freigabe eines Prozesses, definieren aber weder
Governance-Regeln noch Governance-Prozesse und können PB-000, PB-997 oder
PB-998 nicht ändern oder überstimmen. Welche kontrollierte Artefaktfamilie
diese Nachweise aufnimmt und wie ihr Lifecycle gestaltet ist, bleibt den
Entscheidungen zu `GOV-B-008` und `GOV-B-009` vorbehalten.

**Begründung**

Die Trennung hält stabile Klassifikationen und Befugnisse in der
Project-Bible-Spezifikation, während der ausführbare Ablauf an genau einer Stelle
gepflegt wird. Die Matrix macht für jede Änderungsklasse das Mindestniveau und
die entscheidungsberechtigte Rolle sichtbar. Die ausdrückliche Einordnung von
Prüfunterlagen als Nachweise verhindert, dass historische oder operative
Artefakte zu einer dritten Governance-Quelle werden.

**Konsequenzen**

- Vor Annahme dieser Decision entsteht keine verbindliche neue Regel und keine
  Umsetzung ist freigegeben.
- Nach Annahme muss WP-003 PB-000 auf Regel- und Klassifikations-Ownership
  begrenzen und PB-997 als alleinige Prozessheimat mit der festgelegten Matrix
  operationalisieren.
- Doppelte oder widersprüchliche Reviewabläufe und Checklisten müssen bei der
  späteren Umsetzung aus ihrer jeweils unzuständigen Heimat entfernt werden.
- Die konkrete Definition des gemeinsamen Status-, Reviewphase-, Release-Stage-,
  Reviewstatus- und Versionierungsmodells bleibt außerhalb dieser Decision und
  bedarf der für `GOV-B-014` vorgesehenen Architecture Decision.
- Die kanonische Heimat und der Lifecycle kontrollierter Reviewnachweise bleiben
  außerhalb dieser Decision und bedürfen der für `GOV-B-008` und `GOV-B-009`
  vorgesehenen Architecture Decision.

**Verwandte Entscheidungen**

- AD-005
- AD-007
- AD-010
- AD-011

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-006
- WP-003

# Versionshistorie

| Version | Datum | Status | Zusammenfassung |
|---|---|---|---|
| 1.8.0 | 2026-08-07 | Canonical | AD-012 nach Governance-Review angenommen und das Process Ownership Model durch die Trennung von Authority, Ownership und Execution sowie eindeutige Dokumentzuständigkeiten präzisiert. |
| 1.7.0 | 2026-08-07 | Canonical | AD-012 als Pending Decision zum Process Ownership Model für GOV-B-006 und WP-003 vorbereitet; keine Umsetzung vorgenommen. |
| 1.6.0 | 2026-08-07 | Canonical | AD-009 bis AD-011 umgesetzt: zentrales AD-Register, verbindlicher Lifecycle, Supersession, Frontmatter-Referenzen und vollständige WP-001-Traceability konsolidiert. |
| 1.5.0 | 2026-08-07 | Canonical | AD-009 bis AD-011 als Accepted Decisions für WP-001 registriert. |
