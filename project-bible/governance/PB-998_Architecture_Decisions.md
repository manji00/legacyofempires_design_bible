---
document_id: PB-998
title: Architecture Decisions
version: 1.2.0
status: Living Document
category: Governance
created: 2026-08-06
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
  - PB-004
related_documents:
  - PB-004
systems: []
requirements: []
design_goals: []
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

PB-998 ist das zentrale Register sämtlicher Architecture Decisions von Project 4X. Es bewahrt ihren Kontext, ihren Status, ihre Begründung und ihre Konsequenzen, damit Architekturfragen nachvollziehbar bleiben, dieselben Grundsatzfragen nicht unbeabsichtigt wiederholt entschieden und bestehende Festlegungen nicht stillschweigend umgangen werden.

Jede dokumentierte Entscheidung besitzt genau einen Status: `Accepted`, `Pending`, `Rejected` oder `Superseded`. Nur `Accepted` kennzeichnet eine beschlossene und projektweit verbindliche Entscheidung. `Pending` hält eine bewusst zurückgestellte Architekturfrage für eine spätere Bewertung ausdrücklich fest. `Rejected` bewahrt eine diskutierte und ausdrücklich verworfene Entscheidung zur Nachvollziehbarkeit. `Superseded` kennzeichnet eine früher gültige Entscheidung, die durch eine neuere Entscheidung ersetzt wurde; auch sie bleibt dauerhaft im Register erhalten.

Unstrukturierte Diskussionen, Brainstorming-Ideen, TODOs und Entwürfe gehören nicht in dieses Register. Eine bewusst zurückgestellte Architekturfrage wird dagegen als vollständige Architecture Decision mit dem Status `Pending` dokumentiert.

# Verwendung

Eine Architecture Decision wird erstellt, sobald eine Architekturfrage die fachliche oder technische Struktur, die Zuständigkeit eines kanonischen Dokuments, einen verbindlichen Arbeitsablauf oder eine projektweit geltende Benennung betrifft. Beschlossene Entscheidungen werden vor ihrer Umsetzung als `Accepted` dokumentiert; bewusst zurückgestellte Fragen werden als `Pending` festgehalten, ausdrücklich verworfene Lösungen als `Rejected`. Ihre AD-ID ist global eindeutig.

Neue Entscheidungen erhalten immer die nächste freie AD-ID. Bereits vergebene IDs werden niemals geändert oder erneut vergeben. Die fachlichen Themenbereiche dienen ausschließlich der Lesbarkeit: Sie bestimmen weder die ID noch eine chronologische Reihenfolge.

Bestehende Entscheidungen dürfen ergänzt werden, sofern ihre Aussage dadurch nicht verändert wird. Eine inhaltliche Änderung oder ein Statuswechsel ist nur mit dokumentierter Begründung zulässig. Eine veraltete Entscheidung wird nicht gelöscht, sondern als `Superseded` markiert und mit der sie ablösenden Entscheidung verknüpft. Frühere Begründungen und Konsequenzen bleiben nachvollziehbar erhalten.

Die Entscheidungen in PB-998 sind Bestandteil der Project Bible. Alle späteren Project-Bible-Dokumente, technischen Spezifikationen, Implementierungspläne und Umsetzungen müssen sich an `Accepted` Decisions orientieren und dürfen sie referenzieren. `Pending` Decisions dürfen nicht als verbindliche Grundlage für andere Dokumente verwendet werden. Auch `Rejected` und `Superseded` sind nicht verbindlich. Ein Widerspruch zu einer `Accepted` Decision darf nicht stillschweigend entstehen, sondern muss durch eine neue dokumentierte Architecture Decision und die ausdrückliche Aktualisierung der betroffenen Dokumente aufgelöst werden.

Für das Register gelten folgende Projektregeln:

- Architecture Decisions werden niemals gelöscht.
- `Rejected` Decisions bleiben zur Dokumentation erhalten.
- `Superseded` Decisions bleiben historisch erhalten.
- `Pending` Decisions dürfen nicht als verbindliche Grundlage für andere Dokumente verwendet werden.
- `Accepted` Decisions dürfen von allen zukünftigen Dokumenten referenziert werden.

# Entscheidungsformat

Jede Entscheidung besitzt eine global eindeutige ID im Format `AD-XXX` und wird unter dem passenden fachlichen Themenbereich geführt. Jede Entscheidung verwendet mindestens folgende Struktur:

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

Jeder Eintrag enthält genau einen der nachfolgend definierten Status. Die übrigen Pflichtfelder dokumentieren das Entscheidungsdatum, die betroffenen Dokumente, den auslösenden Kontext, die Entscheidung beziehungsweise den bewerteten Entscheidungsvorschlag, ihre Begründung, die daraus folgenden Konsequenzen und Verweise auf verwandte Entscheidungen.

- `Accepted`: Die Entscheidung ist beschlossen, projektweit verbindlich und darf von allen zukünftigen Dokumenten als Grundlage referenziert werden.
- `Pending`: Die Architekturfrage wurde bewusst zurückgestellt und wird zu einem späteren Zeitpunkt erneut bewertet. Sie ist ausdrücklich dokumentiert, aber nicht verbindlich und darf nicht als verbindliche Grundlage anderer Dokumente dienen.
- `Rejected`: Die Entscheidung wurde diskutiert und ausdrücklich verworfen. Ihr Eintrag bleibt erhalten, damit die geprüfte Option und die Gründe ihrer Ablehnung nachvollziehbar bleiben.
- `Superseded`: Die Entscheidung war früher gültig und wurde durch eine neuere Entscheidung ersetzt. Sie ist nicht mehr verbindlich, wird niemals gelöscht und nennt ihren Nachfolger unter „Verwandte Entscheidungen“.

Nur Entscheidungen mit dem Status `Accepted` sind verbindlich. Änderungen an einer Entscheidung und Wechsel ihres Status müssen in ihrem Eintrag begründet und über die Beziehungen zwischen den Entscheidungen nachvollziehbar sein.

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
