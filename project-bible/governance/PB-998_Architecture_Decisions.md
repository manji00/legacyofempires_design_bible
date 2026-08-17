---
document_id: PB-998
title: Architecture Decisions
version: 1.17.1
status: Canonical
category: Governance
created: 2026-08-06
updated: 2026-08-17
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
  - AD-005
  - AD-007
  - AD-010
  - AD-014
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

## AD-005 – Architekturentscheidungen werden vor der Umsetzung registriert, geprüft und angenommen

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

Eine Architecture Decision wird zunächst als Entwurf ausgearbeitet und danach
mit einer `AD-XXX`-ID in PB-998 registriert. Die registrierte Decision durchläuft
anschließend `Pending` und `Architecture Review`. Erst nachdem sie den Status
`Accepted` erhalten hat, darf die von ihr abhängige fachliche Umsetzung beginnen.

Die verbindliche Prozessreihenfolge lautet:

`Draft` → Registrierung als `AD-XXX` in PB-998 → `Pending` → `Architecture Review` → `Accepted` → Umsetzung → `Implemented` → Verifikation → `Verified` → gegebenenfalls `Superseded`

Registrierung und `Accepted`-Status sind damit ausnahmslos Voraussetzungen der
Umsetzung. Weder im Entwurf noch während `Pending` oder `Architecture Review`
darf die fachliche Umsetzung beginnen.

**Begründung**

Die Trennung von Entscheidung und Umsetzung stellt sicher, dass Architektur bewusst, prüfbar und unabhängig von bereits geschaffenem Implementierungsaufwand festgelegt wird.

**Konsequenzen**

- Eine von einer Architecture Decision abhängige Umsetzung beginnt erst, wenn
  die Decision als `AD-XXX` in PB-998 registriert, im Architecture Review geprüft
  und mit dem Status `Accepted` angenommen wurde.
- Eine Registrierung nach Beginn der Umsetzung oder eine vorläufige Umsetzung
  während `Pending` beziehungsweise `Architecture Review` ist unzulässig.
- Spezifikationen und Implementierungspläne referenzieren und beachten die
  einschlägigen Accepted Decisions; Umsetzung und Verifikation bilden danach
  die Stufen `Implemented` und `Verified` ab.

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-011
- DIRECT FIX
- WP-007

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

## AD-013 – Unified Governance State Model

**Status**

Accepted

**Entscheidungsdatum**

2026-08-07

**Betroffene Dokumente**

- PB-000
- PB-004
- PB-997
- PB-998

**Kontext**

`GOV-B-014` aus `GA-001` stellt fest, dass Dokumentstatus, Reviewphasen,
Release Stage und Reviewstatus in PB-000, PB-004 und PB-997 nicht eindeutig
voneinander getrennt sind und die projektweite Versionierungsregel nicht mit
dem Releaseprozess synchronisiert ist. Der genehmigte Resolution Plan
`GA-001-RES` ordnet das Finding `WP-003` zu und verlangt vor jeder Umsetzung
eine Architecture Decision zu Feld-Ownership, zulässigen Werten, Übergängen,
Versionsauswirkungen und Freigabeverantwortung.

Ein einziger globaler Status kann diese Anforderungen nicht widerspruchsfrei
abbilden: Ein Dokument kann beispielsweise kanonisch sein, während eine
Änderung daran noch geprüft wird; eine angenommene Architecture Decision kann
auf ihre Umsetzung warten; und ein Work Package kann laufen, obwohl noch kein
Release Candidate existiert. Diese Decision legt deshalb ausschließlich das
gemeinsame, mehrdimensionale Governance-Zustandsmodell fest. Sie ändert weder
Frontmatter noch Prozesse oder bestehende Governance-Regeln und nimmt keine
Umsetzung von WP-003 vorweg.

**Entscheidung**

Governance-Zustand wird als Menge **getrennter, typisierter Dimensionen**
modelliert. Es gibt keinen globalen Status, der gleichzeitig Dokument,
Review, Architecture Decision, Work Package und Release beschreibt. Jedes
Zustandsfeld bezeichnet genau ein Zustandsobjekt; Zustände unterschiedlicher
Objekte dürfen weder gleichgesetzt noch stellvertretend fortgeschrieben werden.

Alle Governance-Zustandsdimensionen sind **orthogonal**. Insbesondere bleiben
Dokumentstatus, Reviewergebnis (`review_status`), Architecture-Decision-Status,
Work-Package-Status und Release Stage voneinander unabhängige Zustandsmodelle;
die Reviewphase (`review_phase`) ist ihnen gegenüber und gegenüber dem
Reviewergebnis ebenfalls unabhängig. Zwischen den Dimensionen bestehen
ausschließlich die in dieser Architecture Decision explizit definierten
Interaktionen und Gates. Ein Übergang in einer Zustandsdimension darf niemals
automatisch eine andere Zustandsdimension ändern, sofern eine solche
dimensionenübergreifende Transition nicht ausdrücklich durch diese Architecture
Decision definiert ist.

### Ownership und zulässige Zustände

| Dimension / kanonisches Feld | Zustandsobjekt | Zulässige Zustände | Regel- und Feld-Ownership | Zustandsführung |
|---|---|---|---|---|
| Dokumentstatus / `status` | einzelne versionierte Project-Bible-Dokumentrevision | `Idea`, `Draft`, `Review`, `Accepted`, `Canonical`, `Implemented`, `Superseded` | PB-000 | kanonisches Frontmatter des Dokuments |
| Reviewphase / `review_phase` | einzelner identifizierter Review Run | `Planned`, `In Review`, `Rework`, `Decision`, `Completed`, `Cancelled` | PB-997 | kontrollierter Reviewnachweis |
| Reviewergebnis / `review_status` | Ergebnis eines einzelnen identifizierten Review Runs | `Pending`, `Changes Required`, `Passed`, `Rejected`, `Cancelled` | PB-997 | kontrollierter Reviewnachweis; andere Dokumente dürfen es nur referenzieren |
| Architecture-Decision-Status / `ad_status` | einzelne `AD-XXX` | `Draft`, `Pending`, `Architecture Review`, `Accepted`, `Implemented`, `Verified`, `Superseded` | PB-998 | ausschließlich der zugehörige Eintrag in PB-998 |
| Work-Package-Status / `work_package_status` | einzelnes abgegrenztes Work Package | `Planned`, `Ready`, `In Progress`, `Verification`, `Closed`, `Cancelled` | PB-997 | kontrollierter Work-Package- beziehungsweise Closure-Nachweis |
| Release Stage / `release_stage` | einzelne benannte Release-Linie oder Release-Kandidatur | `Unreleased`, `Release Candidate`, `Released`, `Withdrawn` | PB-997 | kontrollierter Releasenachweis |

PB-000 besitzt die Meta-Klassifikation des Dokumentstatus und die
projektweite Semantic-Versioning-Regel. PB-997 besitzt die ausführbaren
Review-, Work-Package- und Releaseprozesse einschließlich ihrer Nachweise.
PB-998 besitzt den bereits durch AD-010 festgelegten
Architecture-Decision-Lifecycle. PB-004 besitzt keine Zustandsdimension und
keinen allgemeinen Releaseprozess; es verwendet die zuständigen Dimensionen
nur als Terminologiedokument und Reviewgegenstand. Diese Zuordnung folgt der
Trennung von Authority, Ownership und Execution aus AD-012.

### Zulässige Übergänge

Der Normalpfad jeder Dimension ist:

```text
Dokument:     Idea → Draft → Review → Accepted → Canonical → Implemented → Superseded
Reviewphase:  Planned → In Review → Rework → In Review → Decision → Completed
Reviewergebnis:
              Pending → Changes Required → Pending
              Pending → Passed | Rejected
AD:           Draft → Pending → Architecture Review → Accepted → Implemented → Verified → Superseded
Work Package: Planned → Ready → In Progress → Verification → Closed
Release:      Unreleased → Release Candidate → Released → Withdrawn
```

`Cancelled` ist ausschließlich als terminaler Übergang aus einer noch nicht
abgeschlossenen Reviewphase oder aus `Planned`, `Ready` oder `In Progress`
eines Work Packages zulässig. Ein Release Candidate darf nach fehlgeschlagener
Prüfung zu `Unreleased` zurückkehren. Alle anderen Rücksprünge sind verboten;
stattdessen wird eine neue Dokumentrevision, ein neuer Review Run, ein neues
Work Package oder eine neue Release-Kandidatur erzeugt. Für Architecture
Decisions gelten ohne Erweiterung oder Verkürzung die in AD-010 festgelegten
Übergänge und Supersession-Regeln.

Zustände dürfen nur mit der Identität des Zustandsobjekts, dem vorherigen und
neuen Wert, Zeitpunkt, verantwortlicher Rolle und Nachweisreferenz geändert
werden. Dimensionenübergreifende Gates prüfen lediglich Voraussetzungen; sie
setzen keinen Zustand der jeweils anderen Dimension. Ein Zustandsübergang in
einer Dimension löst niemals stillschweigend oder automatisch einen Übergang in
einer anderen Dimension aus, außer diese Architecture Decision definiert den
dimensionenübergreifenden Übergang ausdrücklich.

### Freigabeverantwortlichkeiten und dimensionenübergreifende Gates

- Den Dokumentstatus bis einschließlich `Review` setzt der Document Owner.
  `Accepted` erfordert die für die Änderungsklasse in AD-012 bestimmte
  Freigaberolle. `Canonical` setzt `Accepted` und einen referenzierten Review
  Run mit `review_phase: Completed` und `review_status: Passed` voraus.
  `Implemented` wird vom Document Owner nach referenzierter Umsetzung gesetzt;
  `Superseded` erfordert eine identifizierte Nachfolgerrevision.
- Die Reviewphase wird durch den verantwortlichen Reviewer geführt. Das
  Reviewergebnis setzt die nach AD-012 für das Review-Level zuständige
  Freigaberolle: delegierter Reviewer beziehungsweise Document Owner für
  Lightweight Review, Document Owner und Project Lead für Standard Review,
  Architecture Board für Architecture Review.
- Architecture-Decision-Status wird ausschließlich in PB-998 geführt.
  `Accepted` erfordert das Architecture Board; `Implemented` und `Verified`
  erfordern referenzierte Implementierungs- beziehungsweise
  Verifikationsnachweise; `Superseded` erfordert eine gerichtete
  `supersedes`-Beziehung.
- Den Work-Package-Status führt der benannte Work-Package Owner. `Ready`
  erfordert, dass alle vorgelagerten Decisions `Accepted` sind;
  `Verification` erfordert abgeschlossene Umsetzung; `Closed` erfordert die
  zuständige Freigaberolle und einen Closure-Nachweis gegen alle zugeordneten
  Definitions of Done.
- Die Release Stage führt der Project Lead. `Release Candidate` setzt für den
  Release-Scope kanonische Dokumentrevisionen und abgeschlossene erforderliche
  Reviews voraus. `Released` erfordert bestandene Releaseprüfungen und die
  dokumentierte Freigabe des Project Lead; bei Architecture-Review-pflichtigem
  Scope ist zusätzlich die Freigabe des Architecture Board erforderlich.
  `Withdrawn` erfordert Begründung und Nachweis, verändert aber keinen
  historischen Dokument-, Review-, AD- oder Work-Package-Status.

Ein Review Run bewertet immer eine unveränderliche Dokumentversion oder
Baseline. Eine nach dem Review inhaltlich geänderte Revision erbt weder
`Passed` noch eine Freigabe. Ebenso beweisen `Accepted`, `Closed` oder
`Released` jeweils nur den Zustand ihres eigenen Objekts.

### Auswirkungen auf Versionierung

Semantic Versioning beschreibt die Revision eines Dokuments, nicht dessen
Review-, Work-Package-, AD- oder Releasezustand. Inhaltliche Änderungen erhöhen
`MAJOR`, `MINOR` oder `PATCH` entsprechend ihrer normativen beziehungsweise
redaktionellen Wirkung nach der in PB-000 verantworteten Regel. Eine reine,
nachgewiesene Änderung von Frontmatter-Zustand oder Registerstatus erhöht
mindestens `PATCH`, damit jede publizierte Zustandsänderung eindeutig
referenzierbar bleibt; sie darf keine inhaltliche Änderung verdecken.

Review Runs, Work Packages und Releases referenzieren daher immer eine exakte
Dokument-ID mit Version und, sobald verfügbar, Commit-ID. Eine Release Stage
ersetzt keine Dokumentversion. Eine neue Dokumentrevision nach Bildung eines
Release Candidate macht für die geänderte Revision eine neue oder ausdrücklich
wiederholte Prüfung erforderlich. Der Versionszähler von PB-998 folgt denselben
Regeln; der Lifecycle-Status einer `AD-XXX` bleibt dennoch ein eigenständiges
Feld des Decision-Eintrags.

### Grundlage automatischer Validierung

Das Modell ist als endlicher Zustandsautomat pro Dimension zu validieren. Ein
späterer Validator muss mindestens:

1. Feldwerte gegen die obigen Enumerationen prüfen,
2. Objekt-ID, Ausgangszustand, Zielzustand, Rolle, Zeitpunkt und
   Nachweisreferenz jedes Übergangs prüfen,
3. nur die explizit zulässigen Kanten akzeptieren,
4. die Freigaberolle gegen Review-Level und Änderungsklasse prüfen,
5. dimensionenübergreifende Gates wie `Passed` vor `Canonical`, `Accepted`
   vor `Ready` und bestandene Releaseprüfungen vor `Released` prüfen,
6. Review- und Release-Nachweise an die exakte Dokumentversion und Baseline
   binden und
7. verbieten, dass abgeleitete Artefakte oder fremde Zustandsdimensionen den
   kanonischen Zustand eines Objekts setzen.

Die konkrete Schema-, Validator-, Frontmatter- und Prozessimplementierung ist
nicht Gegenstand dieser Decision.

**Begründung**

Getrennte Zustandsautomaten bilden parallele Governance-Sachverhalte ab, ohne
aus einem bestandenen Review fälschlich einen Release, aus einer angenommenen
Decision eine Umsetzung oder aus einem geschlossenen Work Package einen
kanonischen Dokumentstand abzuleiten. Eindeutige Ownership verhindert, dass
PB-004, Nachweisartefakte oder Prozessbeschreibungen konkurrierende
Statusautorität erhalten. Explizite Kanten, Rollen, Gates und versionierte
Baselines machen das Modell zugleich menschenlesbar und später
maschinenprüfbar.

**Konsequenzen**

- Mit Annahme dieser Decision wird das orthogonale Governance-Zustandsmodell
  verbindlich; die konkrete Umsetzung bleibt WP-003 vorbehalten.
- WP-003 kann die Zustandsfelder und Versionierungsregel in PB-000
  sowie die Review-, Work-Package- und Releaseabläufe in PB-997 synchronisieren;
  PB-004 darf anschließend nur die ihm zugewiesenen Zustände referenzieren.
- Bestehende Statusangaben und Nachweise müssen bei der späteren Umsetzung
  explizit einer Dimension und einem Zustandsobjekt zugeordnet werden; aus
  gleichnamigen Legacy-Werten darf kein Status automatisch abgeleitet werden.
- Schemata und Validatoren können später aus den Enumerationen,
  Übergangskanten, Rollen und Gates abgeleitet werden, werden durch diese
  Decision aber weder erstellt noch geändert.
- Die kontrollierte Artefaktfamilie für Review- und Freigabenachweise bleibt
  außerhalb dieser Decision und der Resolution von `GOV-B-008` und
  `GOV-B-009` vorbehalten.

**Verwandte Entscheidungen**

- AD-005
- AD-007
- AD-010
- AD-012

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-014
- WP-003

## AD-014 – Governance Reference Model

**Status**

Accepted

**Entscheidungsdatum**

2026-08-16

**Betroffene Dokumente**

- CTX-000
- PB-000
- PB-002
- PB-998

**Kontext**

`GOV-B-012` aus `GA-001` stellt fest, dass Referenzen auf aktuelle, geplante
und historische Dokumente nicht maschinenlesbar unterscheidbar sind. Dadurch
kann ein fehlendes aktuelles Ziel nicht von einer zulässigen Erinnerung an eine
nicht mehr vorhandene Quelle unterschieden werden. Der genehmigte Resolution
Plan `GA-001-RES` ordnet das Finding `WP-005` zu und verlangt vor jeder
Migration eine Architecture Decision über Referenztypen, Auflösungsregeln und
den Umgang mit nicht vorhandenen historischen Quellen.

Diese Decision legt ausschließlich das Governance-Referenzmodell fest. Sie
typisiert weder bestehende Referenzen noch ändert sie Frontmatter, Dokumente
oder Validatoren. Insbesondere entscheidet sie nicht das CTX-Frontmatterprofil
aus `GOV-B-015`; dieses bleibt vollständig einer separaten Architecture
Decision vorbehalten.

**Entscheidung**

Jede Governance-Referenz besitzt genau einen expliziten `reference_type` aus
der folgenden, abschließenden Taxonomie. Der Typ bestimmt ausschließlich die
Auflösungs- und Validierungssemantik der Referenz, nicht ihre fachliche
Beziehungsart oder Authority.

| `reference_type` | Semantische Bedeutung | Muss das Ziel existieren? | Muss es repository-intern auflösbar sein? | Behandlung fehlender oder historischer Ziele |
|---|---|---|---|---|
| `canonical` | Verweis auf ein gegenwärtig vorhandenes kanonisches Project-Bible-Dokument oder einen gegenwärtig vorhandenen kanonischen Eintrag darin. | Ja. | Ja, auf genau eine aktuelle kanonische Identität. | Ein fehlendes, mehrdeutiges, nur geplantes, archiviertes oder supersediertes Ziel ist ungültig. |
| `archived` | Verweis auf ein vorhandenes, historisches oder supersediertes repository-internes Artefakt, das zur Nachvollziehbarkeit erhalten bleibt. | Ja. | Ja, auf genau ein als historisch, archiviert oder superseded gekennzeichnetes Ziel. | Ein nicht mehr vorhandenes Ziel ist kein `archived`-Ziel und muss, sofern nur seine Nachweisfunktion verbleibt, als `historical_evidence` referenziert werden. |
| `planned` | Absichtserklärung für ein benanntes, noch nicht vorhandenes Artefakt; keine bestehende Dependency. | Nein; ist das Ziel bereits vorhanden, ist der Typ ungültig und neu zu klassifizieren. | Nein; die vorgesehene stabile Ziel-ID muss repository-intern noch unbesetzt sein. | Das Fehlen ist erwartet. Der Verweis muss ausdrücklich als geplant erkennbar bleiben und darf weder Existenz noch Fertigstellung behaupten. |
| `external` | Verweis auf eine für den Governance-Kontext erforderliche Quelle außerhalb des Repositorys. | Die externe Ressource soll existieren; dauerhafte Verfügbarkeit kann nicht garantiert werden. | Nein. Stattdessen muss ein nicht leerer, eindeutig identifizierender Locator angegeben sein. | Nicht erreichbare Ziele werden als Validierungswarnung behandelt; fehlender Typ oder Locator ist ungültig. Externe Referenzen sind keine repository-internen Dependencies. |
| `historical_evidence` | Provenienz- oder Nachweisverweis auf eine historische Quelle oder ein Artefakt, dessen aktueller repository-interner Bestand nicht vorausgesetzt wird. | Nein. | Nein. Falls kein Ziel auflösbar ist, müssen mindestens eine stabile historische Bezeichnung und eine Herkunftsnotiz vorhanden sein. | Fehlende Ziele sind zulässig. Ein vorhandener Nachfolger oder Migrationspfad soll als gesonderte Referenz angegeben werden; der historische Verweis wird dadurch weder aktuell noch normativ. |

`canonical` ist ausschließlich für aktuell auflösbare kanonische Ziele
zulässig. `archived` erhält auflösbare historische beziehungsweise
supersedierte Artefakte als überprüfbare Repository-Geschichte.
`historical_evidence` erhält dagegen die Nachweiskette, wenn die ursprüngliche
Quelle nicht mehr vorhanden ist oder nur ihre historische Provenienz relevant
bleibt. Ein historisches Ziel darf niemals allein zur Erfüllung einer aktuellen
Dependency herangezogen werden. Wird ein aktueller Nachfolger benötigt, muss
dieser zusätzlich mit einer eigenen `canonical`-Referenz bezeichnet werden.

`planned` darf nicht als bestehende Dependency, erfüllte Voraussetzung oder
verfügbare Authority ausgewertet werden. Sobald das geplante Ziel angelegt ist,
ist die Referenz in dem kontrollierten Änderungsschritt auf den dann sachlich
zutreffenden Typ umzustellen. Die reservierte Ziel-ID verhindert dabei keine
spätere Anlage, behauptet aber auch nicht deren Existenz.

`external` verlangt nur die für `GOV-B-012` notwendige minimale Semantik: Typ
und eindeutiger Locator. Erreichbarkeitsprüfungen dürfen flüchtige externe
Ausfälle nicht mit einem strukturell ungültigen Governance-Verweis
gleichsetzen. Diese Decision entwirft keine allgemeine externe
Link-Architektur.

### Trennung von Referenztyp, Beziehungssemantik und Authority

Reference Type und Relationship Semantics sind orthogonale Konzepte. Der
Referenztyp definiert ausschließlich die Auflösungs- und Existenzsemantik des
referenzierten Ziels. Er definiert nicht, welche fachliche Beziehung zwischen
Quelle und Ziel besteht. Dependency, Related Document, Source,
Implementation Reference, Evidence und vergleichbare Beziehungssemantiken
bleiben unabhängig vom `reference_type` und müssen, wo Governance-Regeln sie
verlangen, gesondert ausgedrückt und validiert werden.

Insbesondere gilt:

- `canonical` bedeutet nicht automatisch Dependency,
- `archived` bedeutet nicht automatisch Historical Evidence,
- `planned` bedeutet nicht automatisch Roadmap Dependency und
- `external` bedeutet nicht automatisch Normative Source.

Diese Decision führt keine neue Taxonomie für Beziehungssemantiken ein.
`GOV-B-012` verlangt ausschließlich Referenztypen, ihre Auflösbarkeitsregeln
und den Umgang mit nicht vorhandenen historischen Quellen. Bestehende
Beziehungsfelder oder fachliche Beziehungen werden weder ersetzt noch durch
den Referenztyp abgeleitet.

Eine Referenz erzeugt allein durch Existenz, Typ, Auflösbarkeit oder Position
niemals normative Authority. Reference Type beantwortet nur, welche
Auflösungsregel gilt. Authority folgt ausschließlich der zuständigen
Governance-Quelle und ihrem eigenen Status:

- PB-Dokumente besitzen die jeweils für sie definierte Authority.
- PB-998 besitzt Architecture Decisions und führt deren Lifecycle-Status.
- GA-, Resolution-, Review- und Closure-Artefakte sind Evidence und setzen
  weder Regeln noch Decisions.
- CTX ist gemäß AD-009 derived, non-canonical und ohne eigene normative
  Authority.

Damit kann insbesondere eine `canonical`-Referenz keine nicht normative Quelle
normativ machen, eine `external`-Referenz keine externe Authority importieren
und eine `historical_evidence`-Referenz keine frühere Aussage reaktivieren.
Der verbindliche Architekturgrundsatz lautet daher:

`Reference Type` ≠ `Relationship Semantics` ≠ `Authority`

Diese Trennung ist mit dem zentralen Decision- und
Frontmatter-Referenzmodell aus AD-010 und AD-011 sowie der Trennung von
Authority, Ownership und Execution aus AD-012 konsistent. Sie verändert keine
der orthogonalen Zustandsdimensionen aus AD-013.

### Architekturvertrag für automatische Validierung

Ein späterer Validator muss Referenzen mindestens nach folgendem Vertrag
prüfen können:

1. `reference_type` ist vorhanden und entspricht exakt einem bekannten Wert
   der abschließenden Taxonomie.
2. `canonical` löst repository-intern eindeutig auf ein gegenwärtig
   kanonisches Ziel auf; fehlende, externe, geplante oder historische Ziele
   sind Fehler.
3. `archived` löst repository-intern eindeutig auf und das Ziel ist als
   historisch, archiviert oder superseded gekennzeichnet; ein aktuelles
   kanonisches oder fehlendes Ziel ist eine ungültige Kombination.
4. `planned` löst noch nicht auf, nennt eine syntaktisch gültige und unbesetzte
   vorgesehene Ziel-ID und wird niemals als bestehende Dependency oder
   Authority gezählt; ein bereits vorhandenes Ziel ist eine ungültige
   Kombination.
5. `external` besitzt einen eindeutigen nicht leeren Locator. Fehlende
   Erreichbarkeit erzeugt höchstens eine Warnung, ein fehlender Locator einen
   Fehler.
6. `historical_evidence` darf unaufgelöst bleiben, muss dann aber historische
   Bezeichnung und Herkunftsnotiz führen. Ein auflösbares aktuelles Ziel darf
   nicht unter diesem Typ als aktuelle Abhängigkeit ausgewertet werden.
7. Typ, Zielzustand, Auflösbarkeit und Locatorform werden gemeinsam geprüft,
   sodass widersprüchliche Kombinationen nicht durch einen syntaktisch
   gültigen Einzelwert verdeckt werden.
8. Referenztyp und eine gegebenenfalls gesondert ausgedrückte
   Beziehungssemantik werden unabhängig validiert; aus dem Referenztyp darf
   keine Dependency, Related-Document-, Source-, Implementation-Reference-
   oder Evidence-Beziehung abgeleitet werden.
9. Keine erfolgreiche Referenzprüfung darf normative Authority,
   Dokumentstatus, Architecture-Decision-Status oder Erfüllung einer
   Dependency ableiten. Diese Feststellungen erfordern stets die unabhängig
   zuständige Governance-Regel und deren eigene Voraussetzungen.

Dieser Vertrag entscheidet nur die spätere Validierungssemantik. Konkrete
Feldnamen über `reference_type` hinaus, Schemas, Migrationsregeln,
Fehlerausgaben und Validatorimplementierungen bleiben WP-005 vorbehalten und
werden durch diese Decision weder eingeführt noch freigegeben.

**Begründung**

Fünf Typen reichen aus, um die im Finding tatsächlich vorkommenden Fälle ohne
semantische Überladung zu trennen: aktuelle kanonische Ziele, vorhandene
historische Artefakte, noch nicht vorhandene Planungsziele, externe Quellen
und reine historische Evidence. Die Unterscheidung zwischen `archived` und
`historical_evidence` erhält sowohl prüfbare Repository-Artefakte als auch
Provenienz nicht mehr vorhandener Quellen. Explizite Regeln für Existenz,
interne Auflösung und zulässiges Fehlen machen die spätere Validierung
deterministisch, ohne aus technischer Auflösbarkeit Authority abzuleiten.
Die ausdrückliche Orthogonalität von Referenztyp, Beziehungssemantik und
Authority verhindert zugleich, dass technische Zielklassifikation fachliche
Beziehungen oder normative Wirkung implizit setzt.

**Konsequenzen**

- Mit Annahme dieser Decision wird das Referenzmodell verbindlich; WP-005 kann
  es in der zuständigen Governance-Spezifikation operationalisieren,
  bestehende Referenzen kontrolliert
  typisieren und einen Validator gegen den Architekturvertrag implementieren.
- Bestehende Referenzen werden durch diese Vorbereitung weder umklassifiziert
  noch als gültig oder ungültig entschieden.
- Die Decision führt keine neuen Governance-Zustände, Review-, Release- oder
  Architecture-Decision-Lifecycle-Regeln und keine normative Content Ownership
  ein.
- Das CTX-Frontmatterprofil und die vollständige Resolution von `GOV-B-015`
  bleiben einer separaten Architecture Decision vorbehalten.

**Verwandte Entscheidungen**

- AD-009
- AD-010
- AD-011
- AD-012
- AD-013

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-012
- WP-005

## AD-015 – Derived Operational Artifact Frontmatter Profile

**Status**

Accepted

**Entscheidungsdatum**

2026-08-16

**Betroffene Dokumente**

- CTX-000
- PB-000
- PB-998

**Kontext**

`GOV-B-015` aus `GA-001` stellt fest, dass das Frontmatter von CTX-000 weder
dem kanonischen PB-000-Profil entspricht noch als zulässige Ausnahme
maschinenlesbar definiert ist. Der genehmigte Resolution Plan `GA-001-RES`
ordnet das Finding `WP-005` zu und verlangt nach der bereits erfolgten
Festlegung der Dokumentklasse und Autoritätsgrenze in AD-009 eine eigene
Architecture Decision über das Pflichtfrontmatter für abgeleitete operative
Handoff-Artefakte.

AD-009 ist unverändert maßgeblich: CTX ist eine Derived Operational Continuity
Artifact-Dokumentklasse, non-canonical, keine Source of Truth und ohne
normative Authority. Ausschließlich in CTX vorhandene Informationen besitzen
keine normative Wirkung, und CTX kann aus kanonischen Quellen regeneriert
werden. Diese Decision öffnet keine dieser Festlegungen neu. Sie bereitet nur
das Metadatenprofil vor, mit dem die bestehende Grenze und die Herkunft eines
CTX-Artefakts maschinenlesbar nachgewiesen werden können.

**Entscheidung**

### Profil und Pflichtfelder

Ein Derived Operational Continuity Artifact der Dokumentklasse `CTX` verwendet
das folgende reduzierte Frontmatterprofil. Die Feldnamen werden aus dem
bestehenden PB-000-Modell übernommen; parallele Felder wie `document_type`,
`canonical`, `authority` oder CTX-spezifische Status- und Versionsfelder werden
nicht eingeführt.

| Pflichtfeld | Vertrag |
|---|---|
| `document_id` | Global eindeutige, stabile CTX-Identität im Format `CTX-XXX`; sie stimmt mit dem Dateinamenpräfix überein. |
| `title` | Nicht leerer, menschenlesbarer Titel, der der obersten Überschrift inhaltlich entspricht. |
| `version` | Revision des Artefakts nach dem bestehenden Semantic-Versioning-Modell `MAJOR.MINOR.PATCH` aus PB-000 und AD-013. |
| `status` | Dokumentstatus aus dem von PB-000 besessenen Zustandsmodell gemäß AD-013; kein alternatives CTX-Lifecycle-Feld. |
| `category` | Exakt `Derived Operational Continuity Artifact`; dieses Feld klassifiziert die durch AD-009 festgelegte derived Dokumentklasse. |
| `created` | Erstellungsdatum im bestehenden ISO-Format `YYYY-MM-DD`. |
| `updated` | Datum der vorliegenden Revision im bestehenden ISO-Format `YYYY-MM-DD`. |
| `owners` | Nicht leere Liste der nach dem bestehenden Governance-Modell verantwortlichen Rollen; für CTX-000 ist gemäß AD-009 der `Project Lead` verantwortlich. |
| `audience` | Nicht leere Liste der vorgesehenen operativen Zielgruppen. |
| `source_of_truth` | Muss der boolesche Wert `false` sein. |
| `canonical_sources` | Nicht leere Liste der kanonischen Ableitungsquellen nach dem unten definierten, AD-014-konformen Referenzvertrag. |
| `architecture_decisions` | Liste der unmittelbar anwendbaren Architecture Decisions gemäß AD-010; eine leere Liste wird ausdrücklich als `[]` geschrieben. |
| `tags` | Liste für Retrieval und Klassifikation; eine leere Liste wird ausdrücklich als `[]` geschrieben. |

`category: Derived Operational Continuity Artifact` und
`source_of_truth: false` bilden zusammen mit der CTX-ID-Familie die bestehende
Authority Classification maschinenlesbar ab: Das Artefakt ist derived,
non-canonical, keine Source of Truth und besitzt keine normative Authority.
Eine zusätzliche Authority-Kategorie oder ein Feld, das normative Wirkung
behaupten könnte, ist unzulässig. Ein CTX-Artefakt erfüllt das Profil nur, wenn
keine andere Metadatenkombination dieser Klassifikation widerspricht.

Das Profil verwendet weder `canonical_path` noch einen kanonischen
Dokumentfamilienwert, um den Ablageort oder die Identität von CTX als
kanonische Authority erscheinen zu lassen. Dateipfad und Repository-Ablage
ändern die durch AD-009 festgelegte Authority nicht.

### Kanonische Ableitungsquellen

`canonical_sources` stellt die maschinenlesbare Provenienz der kanonischen
Quellen bereit, auf denen das abgeleitete operative Artefakt basiert, und
drückt dabei ausschließlich die Beziehungssemantik **Ableitungsquelle** aus.
Das Feld muss ausreichen, um die für das konkrete Artefakt relevante
kanonische Quellenmenge zu identifizieren. Jeder Listeneintrag ist eine nach
AD-014 typisierte Governance-Referenz mit genau diesen Schlüsseln:

```yaml
canonical_sources:
  - reference_type: canonical
    target: PB-000
```

`target` enthält die stabile ID genau eines kanonischen PB-Dokuments oder eines
gegenwärtig kanonischen Eintrags darin. `reference_type` muss für jede
Ableitungsquelle `canonical` sein und unterliegt vollständig den Existenz-,
Eindeutigkeits- und Auflösungsregeln aus AD-014. Die Liste muss alle
kanonischen Quellen enthalten, aus denen die für das Artefakt notwendige
operative Kontinuitätsinformation tatsächlich abgeleitet wird; mindestens ein
Eintrag ist erforderlich.

`canonical_sources` ersetzt weder `depends_on` noch `related_documents` und
leitet diese Beziehungen nicht implizit ab. Umgekehrt gilt ein Eintrag in
diesen allgemeinen Beziehungsfeldern nicht als Ableitungsquelle. Damit bleiben
Reference Type, Relationship Semantics und Authority gemäß AD-014 getrennt:

`Reference Type` ≠ `Relationship Semantics` ≠ `Authority`

Eine erfolgreiche `canonical`-Referenz bestätigt nur die aktuelle
Auflösbarkeit des Ziels. Sie macht CTX niemals kanonisch oder normativ und
überträgt keine Authority der Quelle auf das abgeleitete Artefakt. Das
Feld identifiziert die relevante Quellenmenge und macht ihre Provenienz
nachvollziehbar. Seine Existenz begründet für sich allein jedoch weder einen
deterministischen Build- noch einen Reproduzierbarkeitsvertrag. Diese Decision
definiert keinen Generator, keine Transformationslogik, kein Build-Tooling,
kein Synchronisationsverhalten, keine deterministische Reproduktion und keine
Aktualisierungsplanung. Diese Implementierungs- und Betriebsfragen bleiben
außerhalb ihres Scopes. Die durch AD-009 festgelegte Regenerierbarkeit von CTX
als abgeleitetem operativem Kontinuitätsartefakt bleibt bestehen, wird hier
aber nicht zu einer Implementierungsarchitektur erweitert.

### Architecture-Decision-Referenzen

Für `architecture_decisions` gelten ohne Erweiterung die Regeln aus AD-010.
Das Feld enthält ausschließlich unmittelbar auf das konkrete CTX-Artefakt
anwendbare Decisions, die in PB-998 `Accepted`, `Implemented` oder `Verified`
und nicht `Superseded` sind. Eine nur mittelbar geltende oder im Fließtext
erwähnte Decision wird nicht allein deshalb in das Feld aufgenommen. Umgekehrt
ersetzt eine Erwähnung im Inhalt niemals die erforderliche
maschinenlesbare Referenz einer unmittelbar anwendbaren Decision.

Die Decision-Referenz bezeichnet eine geltende Architekturgrundlage; sie
verleiht CTX keine eigene Decision-, Governance- oder normative Authority.
Insbesondere muss ein CTX-Artefakt AD-009 referenzieren, weil dessen
Dokumentklasse und Autoritätsgrenze unmittelbar gelten. Weitere Einträge
werden anhand des tatsächlichen Artefaktinhalts und der AD-010-Regel bestimmt,
nicht pauschal aus Erwähnungen übernommen.

### Versionierung und Dokumentstatus

`version` verwendet ausschließlich das Semantic Versioning aus PB-000 und
AD-013. `MAJOR`, `MINOR` und `PATCH` behalten ihre dort definierten
Bedeutungen; eine CTX-spezifische Versionsfolge, Kurzversion oder Kopplung an
Review-, AD-, Work-Package- oder Releasezustände ist unzulässig. Jede
publizierte Metadaten- oder Statusänderung erhöht die Version mindestens um
`PATCH`, wie es AD-013 für versionierte Dokumentrevisionen festlegt.

`status` verwendet ausschließlich die von PB-000 besessene
Dokumentstatusdimension und deren durch AD-013 festgelegte Werte, Ownership,
Übergänge und Nachweispflichten. Das Profil führt weder `review_status`,
`review_phase`, `ad_status`, `work_package_status`, `release_stage` noch einen
CTX-spezifischen Lifecycle als Alias ein. Weil AD-009 CTX dauerhaft als
non-canonical einordnet, ist eine Metadatenkombination mit
`status: Canonical` für diese Dokumentklasse ungültig; diese
Kompatibilitätsbedingung ändert weder die bestehende Zustandsdimension noch
deren allgemeine Werte oder State Ownership.

### Architekturvertrag für automatische Validierung

Ein späterer Validator muss für ein CTX-Artefakt mindestens prüfen können:

1. Alle Pflichtfelder des Profils sind vorhanden, besitzen den verlangten Typ
   und verwenden keine konkurrierenden Synonyme.
2. `document_id` entspricht `CTX-XXX`, stimmt mit dem Dateinamenpräfix überein
   und ist repositoryweit eindeutig.
3. `version` entspricht `MAJOR.MINOR.PATCH` und der bestehenden
   Semantic-Versioning-Regel.
4. `category` ist exakt `Derived Operational Continuity Artifact`, und die
   CTX-ID sowie die Kategorie bilden gemeinsam dieselbe Dokumentklasse ab.
5. `source_of_truth` ist der boolesche Wert `false`; kein Feldwert und keine
   Feldkombination behauptet kanonische oder normative Authority.
6. `canonical_sources` ist nicht leer, enthält strukturell gültige, eindeutige
   Einträge und drückt die Ableitungsquellenbeziehung getrennt vom
   `reference_type` aus.
7. Jede Quellenreferenz besitzt `reference_type: canonical` und löst nach
   AD-014 eindeutig auf ein gegenwärtig kanonisches Ziel auf; ihre Validität
   wird nicht als Authority des CTX-Artefakts interpretiert.
8. `architecture_decisions` löst nach AD-010 ausschließlich unmittelbar
   anwendbare, Accepted beziehungsweise weiterhin verbindliche und nicht
   supersedierte `AD-XXX`-Einträge auf; bloße Fließtexterwähnungen werden davon
   unterschieden.
9. `status` ist ein nach PB-000 und AD-013 zulässiger Dokumentstatus, und das
   Artefakt führt keine zusätzliche Zustandsdimension oder einen Alias dafür.
10. Die Kombination aus CTX-Dokumentklasse, `category`,
    `source_of_truth`, Quellenreferenzen, Decision-Referenzen und `status`
    bleibt mit der non-canonical, derived und nicht normativen Grenze aus
    AD-009 vereinbar.

Dieser Vertrag legt nur fest, was später deterministisch validierbar sein muss.
Er implementiert weder Schema noch Validator und autorisiert weder Migration
noch Generator, Synchronisationsmechanismus oder automatische Regeneration.

**Begründung**

Das reduzierte Profil übernimmt Identitäts-, Versions-, Status-, Datums-,
Ownership- und Retrievalfelder aus PB-000, ohne CTX dem vollständigen
Frontmatter kanonischer Project-Bible-Dokumente zu unterwerfen. Die vorhandenen
Felder `category` und `source_of_truth` reichen zusammen mit der CTX-ID aus, um
die bereits entschiedene Authority Classification eindeutig auszudrücken;
zusätzliche Authority-Synonyme würden nur widersprüchliche Kombinationen
ermöglichen.

Eine explizite Liste typisierter kanonischer Ableitungsquellen identifiziert
die relevante kanonische Quellenmenge und macht ihre Provenienz
nachvollziehbar. Dabei verwendet sie die Taxonomie und Auflösungsregeln aus
AD-014, hält die Quellenbeziehung von ihrem Referenztyp getrennt und überträgt
keine Authority. Sie spezifiziert nicht, wie CTX reproduziert oder aktuell
gehalten wird. Die unveränderte Anwendung von AD-010 und AD-013 hält
Decision-Traceability, Versionierung und Zustand im bestehenden
Governance-Modell.

**Konsequenzen**

- Mit Annahme dieser Decision wird das Frontmatterprofil verbindlich; WP-005
  kann CTX-000 kontrolliert auf dieses Profil
  migrieren und die zuständigen Governance-Regeln operationalisieren.
- Diese Vorbereitung ändert CTX-000, PB-000 und PB-997 nicht und implementiert
  weder Schema, Validator, Generator, Build-Logik noch Synchronisations- oder
  Regenerationsprozess.
- AD-009, AD-010, AD-013 und AD-014 bleiben unverändert maßgeblich; diese
  Decision schafft weder neue Authority noch ein konkurrierendes
  Referenzmodell oder eine neue Zustandsdimension.
- `GOV-B-013` und andere Findings oder Work Packages werden nicht umgesetzt
  oder vorweggenommen.

**Verwandte Entscheidungen**

- AD-009
- AD-010
- AD-013
- AD-014

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-015
- WP-005

## AD-016 – Normative Content Ownership Model

**Status**

Accepted

**Entscheidungsdatum**

2026-08-17

**Betroffene Dokumente**

- PB-001
- PB-002
- PB-003
- CTX-000
- PB-998

**Kontext**

`GOV-B-016` aus `GA-001` stellt fest, dass PB-001, PB-002, PB-003 und
CTX-000 wiederkehrende projektweite Grundsatzaussagen enthalten, ohne deren
normative Ownership formal und trennscharf zuzuweisen. Der genehmigte
Resolution Plan `GA-001-RES` ordnet das Finding `WP-006` zu und verlangt vor
jeder Bereinigung eine Architecture Decision über normative Heimat sowie die
Regeln für Wiederholung, Zitat und abgeleitete Zusammenfassung.

Die vorhandenen Purpose- und Inhaltsgrenzen bestätigen bereits eine fachliche
Staffelung: PB-001 beantwortet das unverlierbare Warum des Projekts, PB-002
beschreibt die langfristige Produktrichtung und das angestrebte Produktbild,
und PB-003 übersetzt diese Richtung in Designphilosophie, Heuristiken und
fachliche Design-Requirements. Produktbezogene Requirements in PB-002 sind
dabei operationalisierte Produktziele; fachliche Design-Requirements in
PB-003 sind Regeln für die Gestaltung und Bewertung von Systemen, Features und
Designentscheidungen. Gleichlautende Passagen ändern diese Zuständigkeiten
nicht.

`GOV-B-017` wird ausschließlich als Preservation Constraint berücksichtigt.
Die bestätigte kreative und technische Grundrichtung – Scenario-First,
Emergent History, Simulation Authority, Offline-First, optionale KI und
politische Transformation – wird weder neu bewertet noch fachlich verändert.
Diese Decision bestimmt nur, **wo** solche bestehenden Aussagen normativ
beheimatet sind und **wie** ihre Wiederholungen behandelt werden.

**Entscheidung**

### Normative Heimat und ausschließliche Ownership

Die **normative Heimat** einer projektweiten Grundsatzaussage ist genau das
kanonische Governance-Dokument, das für ihren Themenbereich die primäre
inhaltliche Definition, Pflege und Änderung besitzt. Jede normative Aussage
hat genau eine solche primäre Heimat. Eine wortgleiche, sinngleiche oder
verkürzte Wiedergabe außerhalb dieser Heimat überträgt oder teilt die Ownership
nicht und begründet keine zweite normative Definition.

Bei Überschneidungen wird die Aussage nach ihrer normativen Funktion, nicht
nach einzelnen Schlagworten oder ihrem Ablageort, zugeordnet. Eine Aussage
über den unverlierbaren Projektcharakter gehört deshalb PB-001, eine Aussage
über das angestrebte Produktbild PB-002 und eine Regel zur Bewertung oder
Gestaltung von Design PB-003. Soll eine Aussage künftig ihre normative
Funktion wechseln, erfordert dies eine ausdrückliche Governance-Änderung; eine
Wiederholung bewirkt diesen Wechsel niemals stillschweigend.

### Verbindliche Ownership-Matrix

| Themenbereich | Normative Heimat | Eigentumsgrenze |
|---|---|---|
| Projektidentität und unverlierbares Warum | PB-001 | Besitzt Projektzweck, fundamentalen Projektcharakter und die Grundprinzipien, die bei der Umsetzung nicht verloren gehen dürfen. |
| Langfristige Produktvision | PB-002 | Besitzt langfristige Produktrichtung, Vision und angestrebtes Produktbild. |
| Produktziele | PB-002 | Besitzt Produktambition, Design Goals und produktbezogene Ziel- beziehungsweise Erfolgsanforderungen; in PB-002 formulierte Requirements sind in dieser Matrix operationalisierte Produktziele. |
| Designphilosophie | PB-003 | Besitzt die fachliche Übersetzung der Vision in Regeln dafür, wie das Produkt gestaltet und Designkonflikte beurteilt werden. |
| Designheuristiken | PB-003 | Besitzt Prüfkriterien und Gestaltungsheuristiken für Systeme, Features, Inhalte und Spielerentscheidungen. |
| Fachliche Requirements | PB-003 | Besitzt verbindliche fachliche Designanforderungen an Systeme und Features; dies sind keine konkurrierenden Produktziele aus PB-002. |
| Operative Kontinuitätszusammenfassungen | CTX-000 | Besitzt ausschließlich die operative Zusammenstellung als abgeleitetes Artefakt, aber keine normative Content Ownership an den zusammengefassten Inhalten. |

Die letzte Zeile bezeichnet ausschließlich die Verantwortung für Form und
Nutzbarkeit der operativen Zusammenfassung. Sie macht CTX-000 weder zur
normativen Heimat eines Themenbereichs noch zu einer Source of Truth.

### Wiederholungs- und Ableitungsregeln

Normative Inhalte dürfen außerhalb ihrer Heimat nur in einer der folgenden
Formen erscheinen:

1. **Zitat:** Eine inhaltlich identische Übernahme muss als Übernahme aus der
   eindeutig bezeichneten Quelle erkennbar sein. Wortlaut und normative
   Authority verbleiben bei der Heimat; das zitierende Dokument besitzt weder
   Änderungsrecht noch eine parallele Definition.
2. **Abgeleitete Zusammenfassung:** Eine verkürzte, umformulierte oder
   kontextbezogene Wiedergabe muss als Ableitung erkennbar sein und ihre
   normative Quelle eindeutig referenzieren. Sie darf die Quelle weder
   erweitern noch einschränken und besitzt keine eigenständige normative
   Authority. Bei Abweichung gilt ausschließlich die normative Heimat.
3. **Eigene normative Aussage:** Eine neue oder eigenständig definierende
   normative Aussage ist nur in dem Dokument zulässig, dem die Matrix für
   ihre normative Funktion Ownership zuweist. Ein anderes Dokument muss sie
   entweder als Zitat oder als abgeleitete Zusammenfassung behandeln oder in
   die zuständige Heimat überführen lassen.

Eine Wiederholung erzeugt unabhängig von Häufigkeit, Formulierung oder
Dokumentstatus niemals stillschweigend gemeinsame Ownership. Die Herkunft
muss so ausdrücklich und stabil bezeichnet sein, dass sie später
maschinenlesbar aufgelöst werden kann. Diese Decision legt dafür weder ein
neues Metadatenfeld noch eine konkrete Auszeichnung fest.

### Vorrang der normativen Quelle

Für jede normative Aussage und jeden normativen Themenbereich gibt es genau
eine primäre normative Heimat. Ein Zitat, eine abgeleitete Zusammenfassung
oder eine kontextbezogene Wiedergabe außerhalb dieser Heimat:

- erlangt keine eigenständige normative Authority,
- begründet keine gemeinsame Ownership,
- muss auf die normative Quelle zurückführbar bleiben und
- darf die Quellaussage nicht eigenständig erweitern, einschränken oder neu
  definieren.

Widerspricht eine abgeleitete Wiedergabe ihrer normativen Quelle, hat die
**normative Quelle ausnahmslos Vorrang**. Die abgeleitete Wiedergabe muss
korrigiert werden; der Konflikt darf nicht dadurch aufgelöst werden, dass
beide Dokumente als gleich autoritativ behandelt werden.

### Änderungs-Ownership

Ein normatives Konzept darf inhaltlich nur in dem Dokument geändert werden,
das seine normative Heimat besitzt. Ein Zitat oder eine abgeleitete
Zusammenfassung ist kein eigenständiger Änderungspunkt.

Ändert sich die beabsichtigte Projektbedeutung, wird zuerst die normative
Heimat durch den jeweils anwendbaren Governance-Prozess geändert. Abhängige
Zitate und abgeleitete Zusammenfassungen werden anschließend mit der
geänderten Quelle synchronisiert. Diese Regel bestimmt ausschließlich die
Ownership. Sie führt weder einen Synchronisationsprozess noch einen Generator
oder einen Mechanismus zur automatischen Propagation ein.

### Ableitung, Referenzen und Authority

Für die Auflösbarkeit von Quellen gilt unverändert AD-014. Eine verwendete
Quellenreferenz nutzt einen dort bereits definierten passenden Reference Type;
diese Decision führt keinen Reference Type ein. Die Aussage, dass ein Inhalt
Zitat oder abgeleitete Zusammenfassung einer normativen Heimat ist, ist eine
Ownership- beziehungsweise Ableitungssemantik und bleibt sowohl vom
Reference Type als auch von Authority getrennt:

`Reference Type` ≠ `Relationship Semantics` ≠ `Authority`

Eine auflösbare Referenz weist die Herkunft nach, überträgt aber keine
Authority. Umgekehrt ersetzt eine bloße textliche Ähnlichkeit keinen
eindeutigen Herkunftsnachweis. Die spätere WP-006-Umsetzung muss die
Ableitungsbeziehung maschinenlesbar referenzierbar machen, ohne aus einem
Reference Type die Beziehung oder Authority abzuleiten. Konkrete Felder,
Migrationen, Schemas und Validatorimplementierungen sind nicht Gegenstand
dieser vorbereiteten Decision.

### CTX-Grenze

AD-009 bleibt vollständig und unverändert maßgeblich: CTX ist ein **Derived
Operational Continuity Artifact**. CTX besitzt keine normative Content
Ownership, definiert keine Projektgrundsätze, keine Produktvision, keine
Designheuristiken und keine Requirements. Es darf normative Inhalte nur
ableiten, zusammenfassen, zitieren oder referenzieren. Informationen, die
ausschließlich in CTX existieren, erhalten dadurch keine normative Authority.

Die Verantwortung von CTX für operative Kontinuitätszusammenfassungen umfasst
nur Auswahl, Verdichtung und Nutzbarkeit des Handoffs. Alle darin
wiedergegebenen normativen Aussagen bleiben Eigentum ihrer jeweiligen Heimat
in PB-001, PB-002 oder PB-003.

### Preservation Constraint und Content Preservation

GOV-B-017 schützt Scenario-First, Emergent History, Simulation Authority,
Offline-First, optionale KI und politische Transformation als bestehende
kreative und technische Grundrichtung. AD-016 entscheidet nicht neu, ob diese
Grundsätze gelten, und ändert weder ihre Bedeutung noch ihren fachlichen
Geltungsanspruch. Eine spätere WP-006-Umsetzung darf ausschließlich Ownership,
Ableitungskennzeichnung und Quellenbezug bereinigen.

Eine Ownership-Bereinigung darf keinen fachlichen Bedeutungsverlust erzeugen.
Bevor eine redundante normative Aussage später entfernt oder als abgeleitet
umklassifiziert wird, muss sichergestellt sein, dass:

- der vollständige bestehende Grundsatz in seiner normativen Heimat erhalten
  ist,
- jedes abgeleitete Dokument semantisch korrekt auf diese Heimat verweist,
- weder Umfang noch Bedeutung der bestätigten Aussage unbeabsichtigt geändert
  werden und
- keine durch GOV-B-017 geschützte kreative oder technische Richtung neu
  entschieden, abgeschwächt oder erweitert wird.

Diese Architekturgrenze autorisiert jetzt keine Textmigration oder
Umklassifizierung.

### Architekturvertrag für die spätere WP-006-Verification

Die spätere Verification muss deterministische Struktur- und Referenzprüfungen
von manueller semantischer Inhaltsprüfung trennen.

**Deterministisch maschinenlesbar** muss geprüft werden können:

1. Jeder deklarierte wiederkehrende normative Themenbereich besitzt genau eine
   primäre normative Heimat aus der Ownership-Matrix.
2. Jede außerhalb dieser Heimat deklarierte Wiederholung ist eindeutig als
   Zitat oder abgeleitete Zusammenfassung klassifiziert; sie wird nicht als
   eigene normative Definition gezählt.
3. Jede solche Wiederholung besitzt einen eindeutigen, nach AD-014
   auflösbaren Quellenbezug auf ihre normative Heimat, wobei Reference Type,
   Ableitungsbeziehung und Authority getrennt ausgewertet werden.
4. CTX-000 kann für keinen Themenbereich als normative Heimat oder normative
   Quelle deklariert werden.
5. Für denselben Themenbereich kann keine zweite konkurrierende normative
   Heimat registriert werden.

Diese Prüfungen setzen explizite, strukturierte Deklarationen voraus. Eine
heuristische Auswertung von Prosa auf vermeintliche Normativität,
Sinnähnlichkeit oder Bedeutungsänderung ist ausdrücklich kein Bestandteil der
Validatorarchitektur.

**Manuelle semantische Content Verification** muss zusätzlich anhand eines
inhaltlichen Vergleichs bestätigen:

1. Der bestehende Grundsatz ist in seiner Heimat vollständig und ohne
   Bedeutungsverlust erhalten.
2. Zitate sind inhaltlich identisch; abgeleitete Zusammenfassungen geben die
   Quelle korrekt wieder und verändern ihren Geltungsumfang nicht.
3. Keine konkurrierende normative Definition verbleibt in einem anderen
   Dokument.
4. Scenario-First, Emergent History, Simulation Authority, Offline-First,
   optionale KI und politische Transformation wurden gemäß GOV-B-017 fachlich
   nicht verändert.

Dieser Vertrag beschreibt nur die Nachweise der späteren Verification. Er
implementiert weder Klassifikationsfelder, Migration, Validator noch
WP-006 und gibt das Work Package nicht zur Umsetzung frei.

**Begründung**

Die Matrix formalisiert die bereits aus den Dokumentzwecken und tatsächlichen
Inhalten erkennbare Kette vom Projekt-Warum über das Produktziel zu dessen
fachlicher Designanwendung. Genau eine Heimat verhindert divergierende
Definitionen, ohne notwendige Wiederholungen für Lesbarkeit und operative
Kontinuität zu verbieten. Die Unterscheidung zwischen Zitat, abgeleiteter
Zusammenfassung und eigener normativer Aussage hält Ownership auch dann
eindeutig, wenn derselbe Grundsatz in mehreren Kontexten sichtbar bleiben
muss.

Die Trennung der explizit prüfbaren Struktur von der manuellen
Bedeutungsprüfung ermöglicht deterministische Validation, ohne unzuverlässige
Prosaheuristiken zur Governance-Authority zu machen. Die ausdrückliche
Preservation Constraint stellt sicher, dass eine spätere Bereinigung nur die
Dokumentarchitektur korrigiert und nicht die bereits bestätigte Produkt- und
Designrichtung neu eröffnet.

**Konsequenzen**

- AD-016 ist nach Architecture Review `Accepted` und damit projektweit
  verbindlich; diese Acceptance implementiert WP-006 nicht.
- Eine spätere, gesondert freigegebene WP-006-Umsetzung darf ausschließlich
  die hier abgegrenzte Ownership-, Ableitungs- und Preservation-Semantik
  operationalisieren.
- Diese Acceptance verändert PB-001, PB-002, PB-003, CTX-000, AD-009 und
  AD-014 nicht und führt keine Textmigration, Umklassifizierung, kein Schema
  und keinen Validator aus.
- Es werden keine kreativen Grundsätze, Designprinzipien, Produktziele,
  Reference Types, State Dimensions oder Governance-Prozesse eingeführt oder
  verändert.
- Inhalte und Implementierungen aus WP-002, WP-004 und WP-007 werden weder
  entschieden noch vorweggenommen.

**Verwandte Entscheidungen**

- AD-005
- AD-007
- AD-009
- AD-010
- AD-012
- AD-013
- AD-014
- AD-015

**Traceability**

- GA-001
- GA-001-RES
- GOV-B-016
- WP-006
- GOV-B-017 — Preservation Constraint

# Versionshistorie

| Version | Datum | Status | Zusammenfassung |
|---|---|---|---|
| 1.17.1 | 2026-08-17 | Canonical | WP-007 als Direct Fix umgesetzt: AD-005 auf die eindeutige Reihenfolge Entwurf, Registrierung, Pending, Architecture Review, Accepted, Umsetzung und Verifikation präzisiert; keine neue Architecture Decision oder Lifecycle-Stufe eingeführt. |
| 1.17.0 | 2026-08-17 | Canonical | AD-016 nach Architecture Review angenommen und den ausnahmslosen Vorrang der einzigen normativen Quelle sowie die ausschließliche Änderungs-Ownership ihrer normativen Heimat klargestellt; keine Synchronisationsmechanik oder WP-006-Umsetzung eingeführt. |
| 1.16.0 | 2026-08-17 | Canonical | AD-016 als Pending Decision zum Normative Content Ownership Model für GOV-B-016 und WP-006 vorbereitet; GOV-B-017 ausschließlich als Preservation Constraint berücksichtigt und keine Content-Migration oder WP-006-Umsetzung vorgenommen. |
| 1.15.0 | 2026-08-16 | Canonical | WP-005 operationalisiert: unmittelbar anwendbare Decision-Referenzen bereinigt und AD-014-Referenzmodell zur automatisierten Prüfung aktiviert. |
| 1.14.0 | 2026-08-16 | Canonical | AD-015 nach Architecture Review angenommen und klargestellt, dass `canonical_sources` die relevante kanonische Quellenmenge als Provenienz identifiziert, ohne einen deterministischen Build-, Reproduzierbarkeits- oder Synchronisationsvertrag zu begründen; keine Umsetzung von WP-005 vorgenommen. |
| 1.13.0 | 2026-08-16 | Canonical | AD-015 als Pending Decision zum Frontmatterprofil für Derived Operational Continuity Artifacts vorbereitet; keine CTX-Migration, Schema- oder Validatorimplementierung vorgenommen. |
| 1.12.0 | 2026-08-16 | Canonical | AD-014 nach Architecture Review angenommen und Reference Type, Relationship Semantics und Authority als orthogonale Konzepte mit getrennten Validierungsfolgen präzisiert; keine Umsetzung oder Referenzmigration vorgenommen. |
| 1.11.0 | 2026-08-16 | Canonical | AD-014 als Pending Decision zum Governance Reference Model für GOV-B-012 und WP-005 vorbereitet; keine Umsetzung oder Referenzmigration vorgenommen. |
| 1.10.0 | 2026-08-07 | Canonical | AD-013 nach Governance-Review angenommen und die Orthogonalität aller Governance-Zustandsdimensionen sowie ausschließlich explizit definierte dimensionenübergreifende Interaktionen festgelegt. |
| 1.9.0 | 2026-08-07 | Canonical | AD-013 als Pending Decision zum Unified Governance State Model für GOV-B-014 und WP-003 vorbereitet; keine Umsetzung vorgenommen. |
| 1.8.0 | 2026-08-07 | Canonical | AD-012 nach Governance-Review angenommen und das Process Ownership Model durch die Trennung von Authority, Ownership und Execution sowie eindeutige Dokumentzuständigkeiten präzisiert. |
| 1.7.0 | 2026-08-07 | Canonical | AD-012 als Pending Decision zum Process Ownership Model für GOV-B-006 und WP-003 vorbereitet; keine Umsetzung vorgenommen. |
| 1.6.0 | 2026-08-07 | Canonical | AD-009 bis AD-011 umgesetzt: zentrales AD-Register, verbindlicher Lifecycle, Supersession, Frontmatter-Referenzen und vollständige WP-001-Traceability konsolidiert. |
| 1.5.0 | 2026-08-07 | Canonical | AD-009 bis AD-011 als Accepted Decisions für WP-001 registriert. |
