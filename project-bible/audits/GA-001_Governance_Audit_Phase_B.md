---
document_id: GA-001
title: "Governance Audit – Phase B: Cross-Document Consistency Audit"
document_type: Governance Audit
status: Archived
version: 1.0.0
audit_scope: Governance
audit_phase: Phase B
audit_type: Cross-Document Consistency
related_documents:
  - PB-000
  - PB-001
  - PB-002
  - PB-003
  - PB-004
  - PB-997
  - PB-998
  - PB-999
source_of_truth: false
canonical: false
---

# Governance Audit – Phase B  
## Cross-Document Consistency Audit

**Auditmodus:** ausschließlich lesend  
**Repository:** `/workspace/legacyofempires_design_bible`  
**Auditdatum:** 7. August 2026  
**Ergebnis:** **Nicht freigabereif**

---

## 1. Executive Summary

Geprüft wurden der Context Handoff sowie sämtliche acht angeforderten Governance-Dokumente, insgesamt also **neun Dokumente mit 19.720 Zeilen**.

Die Dokumente besitzen bereits eine erkennbare Governance-Architektur:

- PB-000 definiert grundsätzlich das Dokumentationssystem.
- PB-001 beschreibt den unveränderlichen Projektcharakter.
- PB-002 formuliert die langfristige Produktvision.
- PB-003 operationalisiert diese Vision als Designprinzipien.
- PB-004 soll Terminologie und Benennung normieren.
- PB-997 definiert Review und Freigabe.
- PB-998 registriert Architecture Decisions.
- PB-999 sammelt nicht-kanonische redaktionelle Aufgaben.
- CTX-000 soll ausschließlich die arbeitspraktische Kontinuität gewährleisten.

Diese Zielstruktur ist grundsätzlich tragfähig. In ihrem aktuellen Zustand sind die Dokumente jedoch nicht konsistent genug, um als geschlossenes Governance-System zu gelten.

Die schwerwiegendsten Probleme sind:

1. **CTX-000 beansprucht weiterhin kanonische Autorität, enthält aber einen objektiv veralteten Projektstand.**
2. **PB-000 und PB-998 definieren zwei konkurrierende Architecture-Decision-Systeme** (`ADR-XXX` gegenüber `AD-XXX`).
3. **PB-004 erklärt einen erfolgreich bestandenen Review, obwohl PB-999 weiterhin genau die vom Review abzudeckenden Prüfungen als offen führt.**
4. **PB-004 befindet sich nur im Status `Review`, wird von PB-997 und PB-998 aber bereits wie eine kanonische Terminologiequelle behandelt.**
5. **Review-, Release- und Freigaberegeln liegen gleichzeitig in PB-000, PB-004 und PB-997**, obwohl diese Verantwortung eindeutig PB-997 beziehungsweise der DEV-Dokumentfamilie zugeordnet werden sollte.
6. **Mehrere bestehende oder künftige Dokumentreferenzen sind nicht auflösbar oder semantisch unzureichend klassifiziert.**
7. **Accepted Architecture Decisions sind nicht systematisch in den Frontmattern der betroffenen Dokumente nachgewiesen.**

### Auditkennzahlen

| Kennzahl | Ergebnis |
|---|---:|
| Vollständig geprüfte Dokumente | **9** |
| Geprüfte Zeilen | **19.720** |
| Geprüfte ID-Referenzvorkommen | **1.302** |
| Unterschiedliche referenzierte ID-Tokens | **149** |
| Findings insgesamt | **17** |
| Critical | **3** |
| Major | **9** |
| Minor | **4** |
| Info | **1** |

> **Zählmethode für Referenzen:** Erfasst wurden alle Vorkommen projektinterner stabiler oder vorgesehen stabiler IDs der Familien `CTX`, `PB`, `GD`, `TECH`, `CNT`, `BAL`, `DEV`, `REQ`, `DG`, `AD`, `ADR`, `RFC`, `SYS`, `TEST`, `API` und `SAVE`. Deklarationen und Beispiele sind enthalten, weil auch sie für einen Cross-Document-Audit semantisch und syntaktisch konsistent sein müssen.

---

# 2. Dokumentinventar und Verantwortlichkeiten

## 2.1 Beabsichtigte Zuständigkeiten

| Dokument | Erkennbare Hauptverantwortung | Bewertung |
|---|---|---|
| CTX-000 | Chat- und Arbeitskontinuität | Zweck klar, Autoritätsgrenze fehlerhaft |
| PB-000 | Meta-Spezifikation der Project Bible | Zweck klar, überschneidet sich mit PB-997 und PB-998 |
| PB-001 | Projektmanifest und unverlierbare Grundsätze | Zweck grundsätzlich klar |
| PB-002 | Langfristige Produktvision | Zweck klar, erhebliche inhaltliche Nähe zu PB-001 |
| PB-003 | Designphilosophie und Feature-Bewertungsregeln | Zweck klar, teilweise normative Wiederholung von PB-001/PB-002 |
| PB-004 | Terminologie und Naming | Zweck formal klar, tatsächlicher Umfang überschreitet die Grenze |
| PB-997 | Governance Review und Freigabe | Zweck klar, aber Abgrenzung zu PB-000/PB-004 unvollständig |
| PB-998 | Zentrales Architecture-Decision-Register | Zweck sehr klar, widerspricht dem älteren ADR-Modell aus PB-000 |
| PB-999 | Nicht-kanonischer redaktioneller Backlog | Zweck klar, aber seine Rolle als Release-Gate ist problematisch |

PB-001 formuliert seine Aufgabe als dauerhafte Antwort auf das „Warum“ und schließt vollständige Mechaniken und technische Implementierung ausdrücklich aus. 【F:project-bible/governance/PB-001_Projektmanifest.md†L53-L76】 PB-002 erklärt sich dagegen zur autoritativen langfristigen Produktrichtung. 【F:project-bible/governance/PB-002_Vision.md†L74-L82】 PB-003 definiert, wie Systeme und Entscheidungen gestaltet und bewertet werden müssen. 【F:project-bible/governance/PB-003_Designphilosophie.md†L78-L90】 Diese Dreiteilung ist grundsätzlich sinnvoll.

Die größten Zuständigkeitsprobleme liegen nicht zwischen PB-001 bis PB-003, sondern zwischen:

- CTX-000 und den kanonischen PB-Dokumenten,
- PB-000 und PB-998,
- PB-000, PB-004 und PB-997,
- PB-997 und dem nicht-kanonischen PB-999.

---

# 3. Source-of-Truth-Matrix

| Zentraler Begriff | Vorgesehene kanonische Heimat | Tatsächliche zusätzliche Heimat(en) | Auditbewertung |
|---|---|---|---|
| **Vision** | PB-002 | CTX-000, PB-001, PB-003 | Inhalt weitgehend kompatibel, aber stark dupliziert |
| **Design Philosophy** | PB-003 | PB-001, PB-002, CTX-000 | Kanonische Heimat erkennbar |
| **Governance** | PB-000 | PB-997, PB-998, PB-999, CTX-000 | Auf mehrere Spezialdokumente verteilt; Vorrangregeln fehlen teilweise |
| **Canonical** | PB-000 | CTX-000, PB-004, PB-997 | Konkurrierende beziehungsweise unklare Anwendung |
| **Requirement** | PB-000 | PB-002, PB-003, PB-004 | Formatheimat PB-000; Requirement-Heimat je Fachdomäne nicht vollständig festgelegt |
| **Review** | PB-997 | PB-000, PB-004 | Mehrere normative Definitionen und Checklisten |
| **Release** | PB-997 beziehungsweise künftig DEV | PB-004, PB-000 | Verantwortungsüberschneidung |
| **Proposal** | PB-004 Kapitel 10 | PB-998/AD-008 | Inhaltlich abgestimmt, aber PB-004 noch nicht autoritativ |
| **Decision** | PB-004 für Gameplay-Terminologie; PB-998 für Architecture Decisions | PB-000 enthält eigene Decisions | Mehrere Bedeutungen und ID-Systeme |
| **Terminology** | PB-004 | PB-000, PB-997 | Heimat klar, Status jedoch nicht kanonisch |
| **Architecture Decision** | PB-998 nach AD-007 | PB-000 ADR-Kapitel und PB-000-D01–D06 | Direkter Governance-Konflikt |

PB-000 beansprucht die Meta-Autorität für alle künftigen kanonischen Dokumente. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L58-L64】 PB-998 bestimmt später jedoch ausdrücklich, dass Architecture Decisions ausschließlich in PB-998 dokumentiert werden dürfen. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L339-L370】 Weil beide Dokumente `Canonical` sind und kein Supersessionsverhältnis dokumentieren, ist dieser Konflikt nicht automatisch auflösbar.

---

# 4. Findings

## GOV-B-001 — CTX-000 ist eine veraltete konkurrierende Source of Truth

- **Kategorie:** Source of Truth / Cross References
- **Schweregrad:** **Critical**
- **Betroffene Dokumente:** CTX-000, PB-000, PB-001, PB-002, PB-003, PB-004
- **Beschreibung:**  
  CTX-000 setzt `source_of_truth: true` und nennt die Bereitstellung kanonischer Entscheidungen als eigenen Zweck. 【F:PROJECT_4X_CONTEXT_HANDOFF.md†L1-L16】 Gleichzeitig behauptet es weiterhin, PB-000, PB-001, PB-002 und PB-003 seien noch nicht kanonisch fertiggestellt, und benennt die Erstellung von PB-000 als nächsten Arbeitsschritt. 【F:PROJECT_4X_CONTEXT_HANDOFF.md†L687-L722】 Tatsächlich besitzen PB-000 bis PB-003 bereits den Status `Canonical`. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L1-L6】【F:project-bible/governance/PB-001_Projektmanifest.md†L1-L7】【F:project-bible/governance/PB-002_Vision.md†L1-L6】【F:project-bible/governance/PB-003_Designphilosophie.md†L1-L6】
- **Auswirkung:**  
  Ein Assistent, der der verpflichtenden Continuity Rule folgt, wird zu einer bereits erledigten Aufgabe zurückgeführt und kann kanonische Dokumente unnötig neu erstellen.
- **Empfehlung:**  
  CTX-000 künftig ausschließlich als abgeleitete Kontinuitätsansicht behandeln. Seine Autoritätsgrenze, Aktualisierungsverantwortung und Ableitung aus kanonischen Dokumenten müssen explizit festgelegt werden. Der aktuelle Stand darf erst nach einer kontrollierten Governance-Entscheidung aktualisiert werden.

## GOV-B-002 — Zwei konkurrierende Architecture-Decision-Systeme

- **Kategorie:** Architecture Decisions / Normative Regeln
- **Schweregrad:** **Critical**
- **Betroffene Dokumente:** PB-000, PB-998
- **Beschreibung:**  
  PB-000 definiert `ADR` als Dokumentfamilie, verwendet `ADR-001` als Format und beschreibt eigenständige ADR-Dateien. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L240-L248】【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L281-L296】 PB-998 verlangt dagegen global eindeutige IDs im Format `AD-XXX` und erklärt PB-998 zur einzigen kanonischen Ablage für Architecture Decisions. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L55-L63】【F:project-bible/governance/PB-998_Architecture_Decisions.md†L73-L90】【F:project-bible/governance/PB-998_Architecture_Decisions.md†L339-L370】
- **Auswirkung:**  
  Neue Entscheidungen können nicht eindeutig gemäß Governance angelegt werden: entweder als `ADR-XXX`-Datei oder als `AD-XXX`-Registereintrag.
- **Empfehlung:**  
  Durch eine neue Architecture Decision ausdrücklich festlegen, welches Modell gilt und wie bestehende Regeln supersediert werden. Anschließend müssen ID-Familie, Speicherort, Frontmatter-Feld und Referenzformat einheitlich definiert werden.

## GOV-B-003 — PB-004 behauptet bestandenen Review trotz offener Review-Blocker

- **Kategorie:** Governance Workflow / Release
- **Schweregrad:** **Critical**
- **Betroffene Dokumente:** PB-004, PB-997, PB-999
- **Beschreibung:**  
  PB-004 trägt gleichzeitig `status: Review`, `release_stage: RC1` und `review_status: Passed`. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L1-L8】 Am Dokumentende wird erklärt, alle fünf Reviewphasen seien erfolgreich abgeschlossen. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L14080-L14084】 PB-999 führt dagegen für PB-004 weiterhin offene Prüfungen zu Sprache, Cross References und Begriffsdopplungen sowie serienweite offene Frontmatter-, Versions- und Referenzvalidierungen. 【F:project-bible/governance/PB-999_Editorial_Backlog.md†L56-L70】 PB-997 verbietet die Freigabe, solange einschlägige Aufgaben in PB-999 offen sind. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L298-L310】
- **Auswirkung:**  
  Der nach PB-997 verlangte nachvollziehbare Releasezustand ist nicht gegeben. Der RC1-/Passed-Status ist mit seinen eigenen Gate-Bedingungen unvereinbar.
- **Empfehlung:**  
  Den Reviewstand nicht als bestanden behandeln, bis ein eindeutig identifizierter Auditstand, geschlossene Findings, Wiederholungsprüfungen und eine ausdrückliche Freigabeentscheidung nachgewiesen sind.

## GOV-B-004 — PB-004 ist noch nicht autoritativ, wird aber als kanonische Terminologiequelle vorausgesetzt

- **Kategorie:** Source of Truth / Terminologie
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-004, PB-997, PB-998
- **Beschreibung:**  
  PB-004 erklärt selbst, ein Begriff werde erst kanonisch, wenn das Dokument in einen autoritativen Status überführt wurde. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L70-L80】 Das Dokument steht jedoch lediglich auf `Review`. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L2-L7】 PB-997 erklärt gleichzeitig PB-004 zur maßgeblichen Terminologiequelle. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L97-L109】 AD-008 bezeichnet `Proposal` bereits als kanonischen Begriff und verweist auf die verbindliche Definition in PB-004. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L419-L428】
- **Auswirkung:**  
  Es ist unklar, ob PB-004-Begriffe im Audit verbindlich oder nur Kandidaten sind.
- **Empfehlung:**  
  Bis zur formalen Kanonisierung Terminologie aus PB-004 ausdrücklich als Review-Baseline kennzeichnen oder PB-004 erst nach geschlossenem Review zur verbindlichen Quelle machen.

## GOV-B-005 — PB-000 enthält eigene Decisions entgegen AD-007

- **Kategorie:** Architecture Decisions / Dokumentgrenzen
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-000, PB-998
- **Beschreibung:**  
  PB-000 enthält sechs eigene Einträge `PB-000-D01` bis `PB-000-D06`. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L1351-L1375】 AD-007 verlangt hingegen, dass andere Dokumente Architecture Decisions ausschließlich per AD-ID referenzieren und nicht selbst führen. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L358-L370】
- **Auswirkung:**  
  Die kanonische Heimat dieser Entscheidungen ist unklar. Zudem besitzen die PB-000-D-Einträge weder das Pflichtformat noch Status, Entscheidungsdatum, Konsequenzen oder Supersessionsbeziehungen.
- **Empfehlung:**  
  Inhaltlich klassifizieren, welche Einträge echte Architecture Decisions sind. Solche Entscheidungen müssten über den geregelten PB-998-Prozess behandelt werden; rein dokumentinterne Beschlüsse benötigen eine klar davon getrennte Kategorie.

## GOV-B-006 — Review-Verantwortung ist zwischen PB-000 und PB-997 doppelt normiert

- **Kategorie:** Dokumentverantwortlichkeiten / Normative Regeln
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-000, PB-997
- **Beschreibung:**  
  PB-000 definiert Lightweight, Standard und Architecture Review sowie eine Review Checklist. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L1124-L1171】 PB-997 definiert parallel einen verbindlichen Fünf-Phasen-Prozess mit Structure, Terminology, Editorial, Technical und Release Review. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L79-L109】【F:project-bible/governance/PB-997_Governance_Review_Process.md†L111-L154】 Eine explizite Abbildung der drei Review-Level auf die fünf Review-Phasen fehlt.
- **Auswirkung:**  
  Für eine Änderung ist nicht eindeutig, ob sie nur eines der PB-000-Level oder immer den vollständigen PB-997-Prozess durchlaufen muss.
- **Empfehlung:**  
  PB-000 auf Meta-Regeln und Klassifikation begrenzen; PB-997 als Prozessheimat festlegen. Eine normative Matrix muss Änderungsklasse, Review-Level, anwendbare Phasen und Freigaberolle verbinden.

## GOV-B-007 — Release-Governance liegt zusätzlich in PB-004

- **Kategorie:** Dokumentgrenzen / Release
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-000, PB-004, PB-997
- **Beschreibung:**  
  PB-004 enthält ein eigenes umfangreiches Kapitel „Akzeptanzkriterien und Release Gate“ und einen dokumentinternen Release-Candidate-Abschnitt. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L13954-L14084】 PB-997 beansprucht dagegen ausdrücklich die Verantwortung für Review und Freigabe von Governance-Dokumenten. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L57-L69】
- **Auswirkung:**  
  Änderungen am allgemeinen Releaseprozess müssten an mehreren Stellen synchron gepflegt werden. Das verletzt die in PB-997 selbst geforderte Vermeidung unnötiger Doppelpflege.
- **Empfehlung:**  
  PB-004 sollte ausschließlich terminologiespezifische Akzeptanzkriterien enthalten und für Prozess, Statusübergänge und Release Gate normativ auf PB-997 verweisen.

## GOV-B-008 — PB-997 hängt normativ von einem nicht-kanonischen Backlog ab

- **Kategorie:** Governance Workflow / Source of Truth
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-997, PB-999
- **Beschreibung:**  
  PB-999 erklärt sich ausdrücklich zur nicht-kanonischen Arbeitsliste und setzt `source_of_truth: false`. 【F:project-bible/governance/PB-999_Editorial_Backlog.md†L1-L19】【F:project-bible/governance/PB-999_Editorial_Backlog.md†L33-L46】 PB-997 führt PB-999 dennoch in `depends_on` und macht dessen offene Aufgaben zu einer verbindlichen Freigabebedingung. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L22-L30】【F:project-bible/governance/PB-997_Governance_Review_Process.md†L300-L310】
- **Auswirkung:**  
  Ein nicht-kanonisches, veränderliches Arbeitsartefakt kann einen kanonischen Release blockieren, obwohl seine eigene Verlässlichkeit und Historie nicht denselben Anforderungen unterliegen.
- **Empfehlung:**  
  Unterscheiden zwischen informativem Editorial Backlog und einem versionierten, prüfstandbezogenen Finding-/Release-Nachweis. Nur letzterer sollte Gate-Autorität besitzen.

## GOV-B-009 — Reviewnachweise und Finding-Lifecycle besitzen keine definierte kanonische Heimat

- **Kategorie:** Verantwortlichkeitslücke / Governance Workflow
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-997, PB-999, PB-000
- **Beschreibung:**  
  PB-997 verlangt dokumentierte Prüfergebnisse, Findings, Korrekturen, Wiederholungsprüfungen und Freigabeentscheidungen. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L57-L63】【F:project-bible/governance/PB-997_Governance_Review_Process.md†L156-L170】 Es legt jedoch weder ID-Familie, Ablageort, Format, Versionierung noch Aufbewahrungsdauer dieser Reviewartefakte fest. PB-999 ist laut eigener Definition nur eine kleine, nicht-kanonische Liste und daher kein vollständiger Audit Trail. 【F:project-bible/governance/PB-999_Editorial_Backlog.md†L35-L46】
- **Auswirkung:**  
  Der verlangte Review kann nicht reproduzierbar nachgewiesen werden.
- **Empfehlung:**  
  Eine kanonische oder kontrolliert versionierte Heimat für Review Runs, Finding IDs, Prüfnachweise und Freigabeentscheidungen definieren.

## GOV-B-010 — Accepted Decisions werden nicht systematisch referenziert

- **Kategorie:** Architecture Decisions / Traceability
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-000, PB-003, PB-004, PB-997, PB-998
- **Beschreibung:**  
  PB-000 sieht im optionalen Frontmatter `adr_references` vor. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L338-L354】 PB-998 verwendet jedoch `AD-XXX`, nicht `ADR-XXX`. Die betroffenen Dokumente führen keine entsprechende AD-Referenzliste. Besonders AD-004 bis AD-008 betreffen PB-003, PB-004, PB-997 oder alle Project-Bible-Dokumente, ohne dass dies in deren Frontmatter nachvollziehbar ist.
- **Auswirkung:**  
  Die Einhaltung Accepted Decisions kann nur über Volltextsuche und Interpretation geprüft werden; maschinelle Traceability fehlt.
- **Empfehlung:**  
  Das Frontmatter-Modell mit dem endgültigen Decision-ID-System synchronisieren und betroffene Dokumente ausdrücklich mit allen anwendbaren Accepted Decisions verbinden.

## GOV-B-011 — AD-005 ist intern widersprüchlich formuliert

- **Kategorie:** Architecture Decisions / Normative Regeln
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** PB-998
- **Beschreibung:**  
  Der Titel und die Konsequenzen verlangen, dass eine Architecture Decision vor ihrer Umsetzung in PB-998 festgehalten wird. Die zentrale Entscheidungsformulierung lautet dagegen, Entscheidungen würden zuerst getroffen und „anschließend“ in PB-998 dokumentiert. Dadurch kann „anschließend“ sowohl vor als auch nach der Umsetzung verstanden werden. Die Verwendung von PB-998 erklärt ansonsten ausdrücklich, beschlossene Entscheidungen würden vor der Umsetzung als `Accepted` dokumentiert. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L55-L63】
- **Auswirkung:**  
  Eine Architekturentscheidung könnte faktisch umgesetzt werden, bevor sie eine AD-ID und einen registrierten Accepted-Stand besitzt.
- **Empfehlung:**  
  Den Lifecycle atomar definieren: Entscheidungsentwurf → dokumentierter AD-Eintrag → Status `Accepted` → Umsetzung.

## GOV-B-012 — Nicht auflösbare beziehungsweise veraltete Dokumentreferenzen

- **Kategorie:** Cross References
- **Schweregrad:** **Major**
- **Betroffene Dokumente:** CTX-000, PB-002, PB-000
- **Beschreibung:**  
  CTX-000 verweist auf nicht vorhandene PB-005, PB-006 und PB-007 und stellt diese als Governance-Plan dar. 【F:PROJECT_4X_CONTEXT_HANDOFF.md†L636-L654】 PB-002 erklärt zwei nicht im Repository vorhandene Dateien als superseded. 【F:project-bible/governance/PB-002_Vision.md†L21-L28】 PB-000 verlangt, dass automatisierte Validierung bei nicht existierenden kanonischen IDs fehlschlägt. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L663-L670】
- **Auswirkung:**  
  Referenzen auf geplante, historische und aktuelle Dokumente sind nicht unterscheidbar; Auflösbarkeit hängt von implizitem Wissen ab.
- **Empfehlung:**  
  Referenztypen für `planned`, `historical`, `external`, `archived` und `canonical` definieren. Historische superseded Quellen sollten entweder auffindbar archiviert oder mit einer nachvollziehbaren Migrationsreferenz versehen werden.

## GOV-B-013 — Redundante Dependency- und Related-Document-Beziehungen

- **Kategorie:** Cross References
- **Schweregrad:** **Minor**
- **Betroffene Dokumente:** PB-997
- **Beschreibung:**  
  PB-997 führt PB-004, PB-998 und PB-999 gleichzeitig in `depends_on` und `related_documents`. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L22-L30】 PB-000 definiert `depends_on` als notwendige Verständigungs- oder Implementierungsabhängigkeit und `related_documents` lediglich als nützliche Assoziation. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L652-L661】
- **Auswirkung:**  
  Die Beziehungstypen verlieren semantische Trennschärfe und erzeugen doppelte Referenzen.
- **Empfehlung:**  
  Jede Beziehung nur in der stärksten zutreffenden Kategorie führen, sofern keine explizite Regel Mehrfachklassifikation erlaubt.

## GOV-B-014 — Projektweite Versionierungsregel und Releaseprozess sind nicht vollständig synchronisiert

- **Kategorie:** Versionierung / Release
- **Schweregrad:** **Minor**
- **Betroffene Dokumente:** PB-000, PB-997, PB-004
- **Beschreibung:**  
  PB-000 definiert den Statusfluss `Idea → Draft → Review → Accepted → Canonical → Implemented` und Semantic Versioning. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L541-L596】【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L600-L634】 PB-997 verwendet zusätzlich die nicht als Dokumentstatus definierten Stufen Feature Complete, Editorial Review, Governance Review, Bugfixes und Release Candidate. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L173-L215】 PB-004 ergänzt wiederum `release_stage` und `review_status`, die PB-000 nicht standardisiert. 【F:project-bible/governance/PB-004_Naming_And_Terminology.md†L2-L8】
- **Auswirkung:**  
  Dokumentstatus, Prozessphase, Release Stage und Reviewstatus sind nicht eindeutig voneinander getrennt.
- **Empfehlung:**  
  Ein gemeinsames Zustandsmodell definieren und für jedes Feld zulässige Werte, Übergänge sowie Verantwortlichkeiten festlegen.

## GOV-B-015 — Das Context-Handoff-Frontmatter entspricht nicht dem PB-000-Standard

- **Kategorie:** Frontmatter / Dokumentgrenzen
- **Schweregrad:** **Minor**
- **Betroffene Dokumente:** CTX-000, PB-000
- **Beschreibung:**  
  CTX-000 besitzt unter anderem keine Felder für `created`, `updated`, `owners`, `depends_on`, `related_documents`, `systems`, `requirements`, `design_goals`, `tags` oder `canonical_path` und verwendet die nicht standardisierte Version `1.0`. 【F:PROJECT_4X_CONTEXT_HANDOFF.md†L1-L17】 PB-000 verlangt für kanonische Dokumente vollständiges Frontmatter und Semantic Versioning. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L309-L368】
- **Auswirkung:**  
  CTX-000 kann nicht zugleich als kanonische Source of Truth und als Ausnahme außerhalb des Governance-Standards gelten, solange diese Ausnahme nicht ausdrücklich definiert ist.
- **Empfehlung:**  
  Entweder CTX-000 vollständig in den Standard aufnehmen oder es ausdrücklich als nicht-kanonisches, generiertes beziehungsweise operationales Handoff-Artefakt klassifizieren.

## GOV-B-016 — Manifest, Vision und Designphilosophie wiederholen normative Grundsätze ohne explizite Ownership-Matrix

- **Kategorie:** Dokumentverantwortlichkeiten / Normative Regeln
- **Schweregrad:** **Minor**
- **Betroffene Dokumente:** CTX-000, PB-001, PB-002, PB-003
- **Beschreibung:**  
  Die vier Pfeiler, Scenario-First, Offline-First, Simulation Authority, optionale KI und Emergent History werden in allen vier Dokumenten wiederholt. Die Abgrenzung von „Projektidentität“, „Produktrichtung“, „Designregel“ und „Requirement“ ist zwar aus den Purpose-Abschnitten ableitbar, aber nicht formal festgelegt.
- **Auswirkung:**  
  Eine spätere inhaltliche Änderung kann mehrere gleichlautende normative Stellen auseinanderlaufen lassen.
- **Empfehlung:**  
  Eine Ownership-Matrix etablieren: PB-001 besitzt das unveränderliche Warum, PB-002 die Produktziele, PB-003 die Designheuristiken und Requirements; CTX-000 zitiert oder verlinkt ausschließlich.

## GOV-B-017 — Die grundlegende kreative und technische Richtung ist bemerkenswert konsistent

- **Kategorie:** Positive Beobachtung
- **Schweregrad:** **Info**
- **Betroffene Dokumente:** CTX-000, PB-001, PB-002, PB-003, PB-998
- **Beschreibung:**  
  Trotz struktureller Governance-Konflikte sind Scenario-First, Emergent History, Simulation Authority, Offline-First, optionale KI, politische Transformation und die Trennung von Absicht und Ausführung inhaltlich weitgehend widerspruchsfrei. CTX-000 beschreibt die Project Bible als Single Source of Truth. 【F:PROJECT_4X_CONTEXT_HANDOFF.md†L396-L428】 PB-001, PB-002 und PB-003 grenzen ihre Zwecke grundsätzlich sinnvoll voneinander ab. 【F:project-bible/governance/PB-001_Projektmanifest.md†L53-L76】【F:project-bible/governance/PB-002_Vision.md†L74-L82】【F:project-bible/governance/PB-003_Designphilosophie.md†L78-L90】
- **Empfehlung:**  
  Diese gemeinsame inhaltliche Basis bewahren. Die Behebung sollte überwiegend Autorität, Referenzen, Status und Dokumentgrenzen betreffen, nicht die kreative Grundrichtung neu eröffnen.

---

# 5. Prüfung der Accepted Architecture Decisions

PB-998 enthält **acht Accepted Decisions** und keine Pending, Rejected oder Superseded Decisions.

| Decision | Berücksichtigung | Ergebnis |
|---|---|---|
| AD-001 – Glossarbegriffe nach Domänen | PB-004 ist domänenorientiert strukturiert | **Erfüllt**, PB-999-Aufgabe dazu veraltet |
| AD-002 – Population Group | In PB-004 berücksichtigt | **Erfüllt** |
| AD-003 – Ethnicity nicht kanonisch | Keine kanonische PB-004-Definition festgestellt | **Erfüllt** |
| AD-004 – Inkrementelle Entwicklung | Arbeitsmodi definiert | **Grundsätzlich erfüllt**, keine systematische Änderungsmetadaten-Spur |
| AD-005 – Entscheidungen vor Umsetzung | Absicht klar, zentrale Formulierung mehrdeutig | **Teilweise erfüllt** |
| AD-006 – PB-004 ausschließlich Terminologie | PB-004 enthält zusätzlich eigenes Release Gate und Governanceprozess | **Nicht vollständig erfüllt** |
| AD-007 – Decisions ausschließlich in PB-998 | PB-000 enthält ADR-System und PB-000-D01–D06 | **Nicht erfüllt** |
| AD-008 – Proposal allgemein | PB-004/PB-998 inhaltlich abgestimmt | **Inhaltlich erfüllt**, Autoritätsstatus von PB-004 ungeklärt |

AD-006 zieht die Dokumentgrenze ausdrücklich bei Terminologie und weist Abläufe, Formeln, Zustandsänderungen und Mechaniken anderen Dokumentfamilien zu. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L301-L332】 AD-007 erklärt PB-998 zum einzigen kanonischen Decision-Register. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L339-L370】 Diese beiden Decisions sind die wichtigsten noch nicht vollständig berücksichtigten Accepted Decisions.

## Implizite, noch nicht dokumentierte Architecture Decisions

Folgende bereits praktisch verwendete Festlegungen haben Architekturwirkung, sind aber nicht als eigene AD dokumentiert:

1. **PB-997 ist die zentrale Heimat des Governance-Review- und Releaseprozesses.**
2. **PB-999 darf als nicht-kanonisches Dokument ein Release blockieren.**
3. **CTX-000 ist entweder autoritativ oder nur eine abgeleitete Kontinuitätsansicht.**
4. **Architecture Decisions verwenden `AD-XXX` im Register statt `ADR-XXX` als separate Dateien.**
5. **Reviewartefakte benötigen eine eigene persistente Ablage und Finding-ID-Systematik.**
6. **`release_stage` und `review_status` sind zusätzliche Frontmatter-Zustände.**
7. **PB-004 darf terminologiespezifische Releasekriterien enthalten, obwohl AD-006 es auf Terminologie beschränkt.**

Diese Punkte sollten nicht stillschweigend durch redaktionelle Korrekturen entschieden werden.

---

# 6. Logische Verbindung PB-000 / PB-997 / PB-998 / PB-999

## Aktueller Workflow

```text
PB-000
  definiert Dokumentstandard, Status, Versionierung und grobe Review-Level
        ↓
PB-997
  definiert verbindlichen Fünf-Phasen-Review und Release
        ↓
PB-998
  liefert Accepted Architecture Decisions als Releasekriterien
        ↓
PB-999
  liefert offene redaktionelle Aufgaben als zusätzliche Releaseblocker
```

## Bewertung

Die Dokumente sind **inhaltlich miteinander verbunden**, aber nicht vollständig sauber gekoppelt:

- PB-997 referenziert PB-000, PB-004, PB-998 und PB-999 ausdrücklich. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L22-L30】
- PB-997 prüft Accepted Decisions aus PB-998 und offene Punkte aus PB-999. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L141-L154】
- PB-998 verweist auf PB-000 und die übrigen Grundlagen, besitzt aber keine explizite Beziehung zu PB-997 oder PB-999. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L23-L31】
- PB-999 verweist nur auf PB-000 und PB-004, obwohl PB-997 seine Inhalte normativ als Releasekriterium verwendet. 【F:project-bible/governance/PB-999_Editorial_Backlog.md†L18-L29】
- PB-000 kennt PB-997, PB-998 und PB-999 im eigenen Frontmatter überhaupt nicht, obwohl diese später wesentliche Teile seiner Governance operationalisieren. 【F:project-bible/governance/PB-000_Project_Bible_Specification.md†L22-L29】

Die Kette funktioniert daher nur durch Volltextwissen, nicht durch konsistente maschinenlesbare Beziehungen.

---

# 7. Positive Beobachtungen

1. **Die zentralen kreativen Prinzipien widersprechen sich nicht.**  
   Scenario-First, Emergent History, politische Transformation, optionale KI und autoritative Simulation bilden eine konsistente Linie.

2. **PB-001, PB-002 und PB-003 haben grundsätzlich unterscheidbare Purpose-Statements.**  
   Manifest = Warum und unverlierbare Prinzipien; Vision = langfristige Produktrichtung; Designphilosophie = Bewertungs- und Gestaltungsregeln.

3. **PB-998 besitzt ein gut nachvollziehbares Decision-Format.**  
   Status, Datum, betroffene Dokumente, Kontext, Entscheidung, Begründung, Konsequenzen und verwandte Entscheidungen sind ausdrücklich vorgesehen. 【F:project-bible/governance/PB-998_Architecture_Decisions.md†L73-L104】

4. **PB-997 trennt Review von fachlicher Neuentwicklung.**  
   Neue Inhalte und Architecture Decisions dürfen nicht als Reviewkorrekturen eingeschleust werden. 【F:project-bible/governance/PB-997_Governance_Review_Process.md†L156-L170】

5. **PB-999 begrenzt seinen beabsichtigten Umfang klar.**  
   Architecture Decisions, Game-Design-Entscheidungen und offene Designfragen sind ausdrücklich ausgeschlossen. 【F:project-bible/governance/PB-999_Editorial_Backlog.md†L35-L46】

6. **Die meisten aktuellen internen PB-Dokument-IDs sind eindeutig.**  
   Es wurden keine doppelten `document_id`-Deklarationen unter den neun geprüften Dokumenten festgestellt.

7. **Die kanonischen Pfade der acht PB-Dokumente stimmen mit ihren tatsächlichen Repositorypfaden überein.**

---

# 8. Empfohlene Maßnahmen

Es wurden keine Korrekturen vorgenommen. Für einen späteren Behebungszyklus wird folgende Reihenfolge empfohlen.

## Priorität 1 — Autorität und Decision-System stabilisieren

1. **CTX-000-Autorität klären.**
   - Kanonische Source of Truth oder abgeleitete Kontinuitätsansicht?
   - Keine inhaltliche Aktualisierung vor dieser Entscheidung.

2. **AD-/ADR-Konflikt durch neue Architecture Decision auflösen.**
   - ID-Familie
   - Speicherort
   - Dateimodell versus Registermodell
   - Supersessionsverfahren
   - Frontmatter-Referenzfeld

3. **PB-000-D01–D06 klassifizieren.**
   - echte Architecture Decisions,
   - allgemeine normative Regeln,
   - oder reine Zusammenfassung.

## Priorität 2 — PB-004-Release stoppen und Governancezustand bereinigen

4. **PB-004 nicht als erfolgreich freigeprüft behandeln**, solange die Critical Findings und die offenen PB-999-Prüfungen bestehen.

5. **Statusmodell synchronisieren.**
   - `status`
   - `release_stage`
   - `review_status`
   - Version
   - Freigabeentscheidung

6. **Kanonizität der Terminologie explizit klären.**
   - Review-Baseline oder autoritative Glossarquelle.

## Priorität 3 — Dokumentgrenzen schärfen

7. **Review- und Releaseprozess vollständig PB-997 zuordnen.**

8. **PB-000 auf Meta-Spezifikation begrenzen.**
   - Änderungsklassen und Grundregeln dürfen dort verbleiben.
   - Prozessdetails sollten auf PB-997 verweisen.

9. **PB-004 auf Terminologie und Benennungsregeln begrenzen.**
   - Dokumenteigene terminologiespezifische Akzeptanzkriterien dürfen bleiben.
   - Allgemeine Release-Governance sollte nicht dupliziert werden.

10. **Ownership-Matrix für PB-001/PB-002/PB-003 erstellen.**

## Priorität 4 — Reviewnachweise und Backlog-Rolle definieren

11. **Persistente Heimat für Audit- und Reviewartefakte definieren.**
    - Review Run ID
    - Finding ID
    - Dokumentstand oder Commit
    - Schweregrad
    - Status
    - Korrektur
    - Wiederholungsprüfung
    - Freigabeentscheidung

12. **PB-999 von einem verbindlichen Release-Nachweis trennen.**
    - PB-999 kann Arbeitsliste bleiben.
    - Releaseblocker benötigen einen versionierten und prüfstandbezogenen Nachweis.

## Priorität 5 — Referenzen und Metadaten konsolidieren

13. Nicht auflösbare und historische Referenzen klassifizieren.
14. Redundante `depends_on`-/`related_documents`-Einträge entfernen.
15. Accepted Decisions maschinenlesbar mit betroffenen Dokumenten verbinden.
16. CTX-000 entweder PB-000-konform machen oder ausdrücklich vom kanonischen Frontmatterstandard ausnehmen.
17. Erst danach den Cross-Document-Audit wiederholen.

---

# 9. Abschlussbewertung

## Gesamturteil

**Governance Audit – Phase B: nicht bestanden.**

Die kreative und produktstrategische Grundlage ist konsistent. Das Governance-System leidet jedoch unter mehreren Konflikten genau in den Bereichen, die Autorität und Freigabe bestimmen:

- konkurrierende Sources of Truth,
- zwei Architecture-Decision-Modelle,
- widersprüchliche Reviewmetadaten,
- offene Releaseblocker trotz `Passed`,
- unklare Kanonizität der Terminologie,
- doppelte Review- und Releasezuständigkeiten,
- fehlende persistente Reviewnachweise.

Daher darf insbesondere PB-004 auf Basis des geprüften Stands nicht als erfolgreich auditierter oder freigabereifer Release Candidate betrachtet werden.

---

## Prüfungen und Auditkommandos

- ✅ `find .. -name AGENTS.md -print` — keine anwendbaren `AGENTS.md`-Dateien gefunden.
- ✅ `find . -maxdepth 3 -type f -printf '%p\n' | sort` — angeforderte Dokumente und Repositoryumfang inventarisiert.
- ✅ `wc -l PROJECT_4X_CONTEXT_HANDOFF.md project-bible/governance/*.md` — 9 Dokumente mit insgesamt 19.720 Zeilen gezählt.
- ✅ `cat PROJECT_4X_CONTEXT_HANDOFF.md project-bible/governance/*.md` — sämtliche angeforderten Dokumente vollständig gelesen; die Terminaldarstellung war bei der kombinierten Ausgabe gekürzt, daher wurden Struktur und relevante Bereiche anschließend mit separaten zeilenweisen Prüfungen vollständig ausgewertet.
- ✅ `python3`-basierte Heading-, ID- und Referenzinventarisierung — 1.302 ID-Referenzvorkommen und 149 unterschiedliche ID-Tokens erfasst.
- ✅ `rg -n -i 'source of truth|single source|kanonisch|canonical|Architecture Decision|\bReview\b|\bRelease\b|\bProposal\b|\bDecision\b|\bRequirement\b|Terminolog|Governance' ...` — zentrale Source-of-Truth-, Terminologie-, Review-, Release- und Decision-Aussagen dokumentübergreifend geprüft.
- ✅ `nl -ba <datei> | sed -n '<bereiche>p'` — Findings gegen genaue Zeilen und Dokumentkontexte verifiziert.
- ✅ `git diff --exit-code` — bestätigt, dass durch den Audit keine Dateien verändert wurden.
- ✅ `git status --short` — sauberer Arbeitsbaum; keine Änderungen, keine Commits und keine Pull Requests erstellt.
