---
document_id: PB-000
title: Project Bible Specification
version: 1.0.2
status: Canonical
category: Governance
created: 2026-08-05
updated: 2026-08-07
owners:
  - Project Lead
reviewers: []
audience:
  - Human Collaborators
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
related_documents:
  - PB-001
  - PB-002
  - PB-003
  - PB-004
systems: []
requirements:
  - REQ-DOC-001
  - REQ-DOC-002
  - REQ-DOC-003
  - REQ-DOC-004
  - REQ-DOC-005
  - REQ-DOC-006
  - REQ-DOC-007
  - REQ-DOC-008
  - REQ-DOC-009
  - REQ-DOC-010
design_goals:
  - DG-DOC-001
  - DG-DOC-002
  - DG-DOC-003
  - DG-DOC-004
architecture_decisions:
  - AD-010
  - AD-011
tags:
  - governance
  - documentation
  - project-bible
  - traceability
  - ai-context
  - standards
canonical_path: project-bible/governance/PB-000_Project_Bible_Specification.md
---

# PB-000 – Project Bible Specification

## 1. Purpose

This document defines the canonical documentation system for Project 4X.

The Project Bible is the project's Single Source of Truth. It defines what the product is, why it exists, how its systems are intended to work, how those systems are implemented, and how decisions are traced from idea to code and tests.

This specification governs all future canonical documents.

> The Project Bible defines the product. The code implements it.

PB-000 exists to prevent four recurring failures:

1. design decisions being lost across chats, tools or contributors,
2. code being implemented without an agreed product definition,
3. scenario-specific assumptions leaking into the generic engine,
4. documentation becoming either too vague for development or too bureaucratic for practical work.

---

## 2. Scope

PB-000 defines:

- repository documentation structure,
- document categories and ID families,
- YAML frontmatter,
- naming conventions,
- status and version lifecycle,
- human, developer and machine-readable layers,
- requirement and design-goal traceability,
- relationships between design, architecture, implementation and tests,
- ADR and RFC usage,
- GitHub integration,
- AI assistant usage,
- templates,
- migration rules,
- generated outputs,
- scope control,
- prototyping exceptions.

PB-000 does not define individual game systems. Those belong in Game Design, Technical, Content, Balancing and Development documents.

---

## 3. Normative Language

The terms **MUST**, **MUST NOT**, **SHOULD**, **SHOULD NOT** and **MAY** are normative.

- **MUST / MUST NOT**: mandatory rule,
- **SHOULD / SHOULD NOT**: expected rule unless a documented reason exists,
- **MAY**: optional rule.

A contradiction between canonical documents MUST be resolved explicitly. The newer or more specific document does not silently override the older one unless its frontmatter declares that relationship.

---

## 4. Project Bible Principles

### 4.1 Single Source of Truth

Canonical product decisions MUST exist in the Project Bible.

Chats, issue comments, code comments, whiteboards and temporary notes MAY contain ideas, but they are not authoritative until migrated into a canonical document.

### 4.2 Human and Machine Readability

Every canonical document MUST be readable by humans and retrievable by tools.

Markdown is the canonical source format.

YAML frontmatter provides machine-readable metadata.

### 4.3 Systems Before Content

Generic systems MUST be defined before large amounts of scenario content depend on them.

Scenario content MUST NOT be used to hide missing engine design.

### 4.4 Scenario Independence

Engine and generic game-system documents MUST NOT hardcode Kaiserreich-specific entities, assumptions or terminology.

Kaiserreich is the first official scenario, not the identity of the engine.

### 4.5 Traceability Without Paralysis

Major features MUST be traceable from design to implementation and tests.

Minor experiments and prototypes MAY use a reduced process under the prototyping exception defined in this document.

### 4.6 Explicit Decisions

Important decisions MUST be written down.

Rejected alternatives SHOULD be preserved when their rejection matters for future work.

### 4.7 Documentation Supports Development

Documentation MUST help implementation, review, testing and maintenance.

Documentation MUST NOT become an excuse to avoid prototyping or shipping validated work.

---

## 5. Design Goals

### DG-DOC-001 – Continuity

A new contributor or AI assistant should be able to identify the current project state and next task without restarting completed work.

### DG-DOC-002 – Traceability

A major implementation should be traceable to its design intent, technical definition, requirements, decisions and tests.

### DG-DOC-003 – Modularity

Engine, scenario, content and implementation documentation should remain separable and reusable.

### DG-DOC-004 – Low Friction

The process should be rigorous enough for continuity and implementation, but lightweight enough for active development.

---

## 6. Canonical Repository Structure

The recommended repository structure is:

```text
legacyofempires_design_bible/
├── README.md
├── project-bible/
│   ├── governance/
│   ├── game-design/
│   ├── technical/
│   ├── content/
│   │   ├── shared/
│   │   └── scenarios/
│   │       └── kaiserreich/
│   ├── balancing/
│   ├── development/
│   └── appendix/
├── decisions/
│   ├── adr/
│   └── rfc/
├── schemas/
├── templates/
├── context-maps/
├── generated/
│   ├── website/
│   ├── pdf/
│   ├── indexes/
│   └── ai-context/
└── archive/
```

### 6.1 Directory Rules

- `project-bible/` contains canonical product documentation.
- `decisions/adr/` contains accepted architectural decisions.
- `decisions/rfc/` contains substantial proposals under discussion.
- `schemas/` contains JSON Schema, YAML schema or equivalent machine-readable definitions.
- `templates/` contains canonical document templates.
- `context-maps/` contains curated retrieval maps for humans and AI assistants.
- `generated/` contains derived artifacts and MUST NOT be edited manually.
- `archive/` contains superseded or historical material that remains useful for reference.

---

## 7. Document Categories and ID Families

### 7.1 Canonical Document Families

| Prefix | Category | Purpose | Example |
|---|---|---|---|
| PB | Governance | Project rules, vision, terminology and documentation governance | PB-000 |
| GD | Game Design | Player experience, mechanics and gameplay systems | GD-100 |
| TECH | Technical | Architecture, data, interfaces, runtime and implementation design | TECH-100 |
| CNT | Content | Scenarios, countries, characters, events, projects and world data | CNT-200 |
| BAL | Balancing | Values, formulas, weights, thresholds and tuning policy | BAL-100 |
| DEV | Development | Roadmaps, workflows, contribution, testing and release processes | DEV-001 |

### 7.2 Decision and Specification Families

| Prefix | Category | Purpose | Example |
|---|---|---|---|
| ADR | Architecture Decision Record | Accepted technical or structural decision | ADR-001 |
| RFC | Request for Comments | Proposal requiring review before acceptance | RFC-001 |
| API | API Specification | Contract between modules or external interfaces | API-001 |
| SAVE | Savegame Specification | Persistent-state schema and migration rules | SAVE-001 |
| TEST | Test Specification | Testable acceptance, integration or simulation behavior | TEST-001 |

### 7.3 Atomic Identifier Families

| Prefix | Purpose | Example |
|---|---|---|
| SYS | Stable game or engine system identifier | SYS-POLITICS |
| REQ | Requirement | REQ-AI-001 |
| DG | Design goal | DG-SANDBOX-001 |
| RULE | Normative game rule | RULE-DIPLOMACY-001 |
| EVT | Event definition | EVT-KR-GER-001 |
| ACT | Player or AI action type | ACT-DIPLOMATIC-PROPOSAL |
| MOD | Modifier definition | MOD-LEGITIMACY-LOW |

### 7.4 Numbering Rules

Canonical documents use three-digit numeric identifiers.

Recommended ranges:

- `000–099`: governance, overview and foundations,
- `100–199`: core systems,
- `200–299`: secondary systems or scenario foundations,
- `300–799`: detailed subsystems and content,
- `800–899`: tooling and generated interfaces,
- `900–999`: experimental, deprecated or migration material.

Numbers are stable identifiers, not ordering instructions.

A deleted or superseded ID MUST NOT be reused.

---

## 8. File Naming Standard

Canonical Markdown files MUST use:

```text
<ID>_<Readable_Title_With_Underscores>.md
```

Examples:

```text
PB-000_Project_Bible_Specification.md
GD-100_Core_Gameplay_Loop.md
TECH-100_Engine_Architecture.md
ADR-001_Simulation_Authority.md
```

Rules:

- the file name MUST begin with the canonical ID,
- spaces MUST be represented by underscores,
- the title SHOULD be concise and stable,
- file names SHOULD use ASCII characters,
- renaming a title MUST NOT change the document ID,
- generated files MAY use different naming rules but MUST reference their canonical source.

---

## 9. YAML Frontmatter Standard

Every canonical document MUST begin with YAML frontmatter.

### 9.1 Required Fields

```yaml
document_id: GD-100
title: Core Gameplay Loop
version: 1.0.0
status: Draft
category: Game Design
created: 2026-08-05
updated: 2026-08-05
owners:
  - Project Lead
audience:
  - Designers
  - Developers
source_of_truth: true
depends_on: []
related_documents: []
systems: []
requirements: []
design_goals: []
tags: []
canonical_path: project-bible/game-design/GD-100_Core_Gameplay_Loop.md
```

### 9.2 Optional Fields

```yaml
reviewers: []
supersedes: []
superseded_by: null
scenario: null
implementation_repositories: []
implementation_paths: []
github_issues: []
github_projects: []
adr_references: []
rfc_references: []
test_references: []
schema_references: []
context_priority: standard
confidentiality: internal
```

### 9.3 Field Rules

- `document_id` MUST match the file name prefix.
- `title` MUST match the top-level heading in meaning.
- `version` MUST use semantic versioning.
- `status` MUST use the lifecycle defined in Section 13.
- `category` MUST use an approved category.
- `created` and `updated` MUST use ISO `YYYY-MM-DD` format.
- `source_of_truth` MUST be `true` for canonical documents.
- references SHOULD use stable IDs rather than file paths where possible.
- scenario-specific documents MUST set `scenario`.
- `canonical_path` MUST match the intended repository path.

---

## 10. Required Document Layers

Canonical system documents SHOULD contain three integrated layers.

### 10.1 Human Layer

Explains:

- purpose,
- player experience,
- design intent,
- examples,
- non-goals,
- tradeoffs.

The Human Layer answers:

> Why does this exist and what should it feel like?

### 10.2 Developer Layer

Defines:

- modules,
- responsibilities,
- state,
- interfaces,
- data flow,
- algorithms,
- edge cases,
- performance constraints,
- savegame implications,
- test expectations.

The Developer Layer answers:

> What must be implemented and how do components interact?

### 10.3 Machine Layer

Provides:

- frontmatter,
- stable IDs,
- structured requirement blocks,
- dependency references,
- schemas,
- context maps,
- explicit normative statements.

The Machine Layer answers:

> How can tools retrieve, validate and trace this information?

### 10.4 Practical Exception

Governance, narrative or short decision documents MAY omit a separate Developer Layer when it would add no value.

The omission SHOULD be explicit.

---

## 11. Standard Document Structure

A major Game Design or Technical document SHOULD use this structure:

```text
1. Purpose
2. Scope
3. Design Goals
4. Non-Goals
5. Player Experience or System Intent
6. Core Concepts
7. Rules and Mechanics
8. State and Data Model
9. Interfaces and Dependencies
10. AI Behavior
11. UI and Feedback
12. Performance and Offline Behavior
13. Savegame and Compatibility
14. Edge Cases and Failure Modes
15. Requirements
16. Test Expectations
17. Open Questions
18. Decisions and Change History
```

Sections MAY be omitted when not applicable.

A document MUST NOT contain empty boilerplate sections solely to satisfy a template.

---

## 12. Requirement System

### 12.1 Requirement Format

Each requirement MUST have:

- stable ID,
- normative statement,
- rationale or source,
- verification method,
- status.

Recommended format:

```markdown
### REQ-AI-001 – Simulation Authority

**Statement:** The narrative AI MUST NOT directly modify authoritative game state.

**Rationale:** Deterministic simulation must remain the source of truth.

**Verification:** Integration tests verify that AI output is parsed into proposals and validated before state changes.

**Status:** Accepted
```

### 12.2 Requirement Categories

Recommended namespaces:

- `REQ-SIM-*` – simulation,
- `REQ-AI-*` – AI and narrative,
- `REQ-SCN-*` – scenario architecture,
- `REQ-POL-*` – politics,
- `REQ-ECON-*` – economy,
- `REQ-MIL-*` – military,
- `REQ-DIP-*` – diplomacy,
- `REQ-UI-*` – user interface,
- `REQ-PERF-*` – performance,
- `REQ-SAVE-*` – persistence,
- `REQ-MOD-*` – modding,
- `REQ-DOC-*` – documentation.

### 12.3 Requirement Lifecycle

Requirements use:

- Proposed,
- Accepted,
- Implemented,
- Verified,
- Deferred,
- Rejected,
- Superseded.

### 12.4 Atomicity

A requirement SHOULD describe one independently verifiable obligation.

Compound requirements SHOULD be split when separate verification is possible.

### 12.5 Traceability

A major requirement SHOULD reference:

```text
Design Goal
  → Requirement
  → Technical Design
  → GitHub Issue
  → Implementation
  → Test
```

---

## 13. Document Status Lifecycle

Approved document statuses are:

### Idea

A captured concept with no commitment.

### Draft

Actively being written. Not authoritative for implementation unless explicitly approved for prototype use.

### Review

Substantially complete and awaiting review.

### Accepted

Approved direction. May still receive non-breaking clarification.

### Canonical

Current authoritative source of truth.

### Implemented

Canonical and substantially represented in the codebase.

### Deprecated

Still valid for existing systems but should not be used for new work.

### Superseded

Replaced by another document or version.

### Archived

Retained for history and excluded from current guidance.

### 13.1 Status Transition

Recommended flow:

```text
Idea → Draft → Review → Accepted → Canonical → Implemented
```

Alternative terminal transitions:

```text
Draft → Rejected
Canonical → Deprecated → Superseded → Archived
```

A status change to `Canonical` SHOULD require review by the Project Lead or an explicitly delegated owner.

---

## 14. Versioning

Canonical documents use semantic versioning:

```text
MAJOR.MINOR.PATCH
```

### MAJOR

Use when a change:

- changes core intent,
- breaks compatibility,
- invalidates previous implementation assumptions,
- changes authoritative ownership or boundaries.

### MINOR

Use when a change:

- adds a significant mechanic,
- adds requirements,
- expands scope without invalidating the core design.

### PATCH

Use when a change:

- clarifies wording,
- fixes errors,
- improves examples,
- adds references without changing behavior.

Git history remains the detailed change log. The document SHOULD contain a concise change-history section for significant versions.

---

## 15. References and Linking

### 15.1 Stable References

Documents SHOULD reference IDs rather than only file paths.

Example:

```markdown
See [TECH-100 – Engine Architecture](../technical/TECH-100_Engine_Architecture.md).
```

The visible reference SHOULD include both ID and title.

### 15.2 Dependency Types

Use these relationships:

- `depends_on`: cannot be correctly understood or implemented without the referenced document,
- `related_documents`: useful association,
- `supersedes`: replaces earlier authority,
- `superseded_by`: identifies replacement,
- `implements`: technical document or code implementing a design,
- `verified_by`: tests validating requirements.

### 15.3 Broken References

Automated validation SHOULD fail when:

- a canonical ID is duplicated,
- a referenced canonical ID does not exist,
- a canonical path does not match the file,
- frontmatter cannot be parsed.

---

## 16. Context Maps

Context maps define which documents should be loaded for a particular task.

Examples:

```text
context-maps/
├── project-foundation.yaml
├── politics-system.yaml
├── scenario-authoring.yaml
├── savegame-work.yaml
└── ai-narrative.yaml
```

Example:

```yaml
context_id: CTXMAP-POLITICS
purpose: Implement or modify the politics system
required:
  - PB-001
  - PB-002
  - PB-003
  - GD-200
  - TECH-200
optional:
  - BAL-200
  - CNT-KR-POL-001
exclude:
  - archive
```

Context maps MUST distinguish required from optional material.

They SHOULD remain small enough to prevent unnecessary AI context loading.

---

## 17. Architecture Decision Records

ADRs record important accepted decisions that should not be rediscovered repeatedly.

### 17.1 ADR Use Cases

Create an ADR when deciding:

- simulation authority,
- engine boundaries,
- data-oriented versus object-oriented architecture,
- savegame format,
- scripting language,
- deterministic random-number strategy,
- event execution model,
- mod-loading rules,
- major external dependency choices.

### 17.2 ADR Structure

```text
1. Context
2. Decision
3. Consequences
4. Alternatives Considered
5. Status
6. References
```

### 17.3 ADR Rules

- Accepted ADRs MUST NOT be edited to hide old reasoning.
- A changed decision MUST create a new ADR that supersedes the old one.
- ADRs SHOULD be concise.

---

## 18. Requests for Comments

RFCs are used for substantial proposals that require discussion before becoming canonical.

RFCs are appropriate when:

- multiple systems are affected,
- implementation cost is high,
- alternatives are genuinely open,
- modding or save compatibility may be affected,
- the proposal introduces a new architectural pattern.

RFC statuses:

- Draft,
- Open,
- Accepted,
- Rejected,
- Withdrawn,
- Superseded.

An accepted RFC MUST either:

1. be migrated into canonical Project Bible documents,
2. create one or more ADRs,
3. explicitly state that the RFC itself remains the authoritative specification.

The preferred approach is migration into canonical documents.

---

## 19. GitHub Integration

### 19.1 Development Flow

The standard flow is:

```text
Idea
  ↓
Project Bible
  ↓
Review
  ↓
Technical Design
  ↓
Implementation Plan
  ↓
GitHub Issue
  ↓
Code
  ↓
Tests
  ↓
Merge
```

### 19.2 Issue Requirements

A major GitHub issue SHOULD reference:

- canonical document IDs,
- requirement IDs,
- relevant ADRs,
- acceptance criteria,
- test expectations.

### 19.3 Pull Request Requirements

A pull request implementing canonical behavior SHOULD state:

- which requirements it implements,
- which tests verify them,
- whether documentation changed,
- whether savegame or mod compatibility changed.

### 19.4 Documentation-Only Changes

Documentation changes MAY use lightweight review when they do not alter product behavior.

Changes to canonical rules, ownership or interfaces SHOULD receive the same seriousness as code changes.

---

## 20. AI Assistant Usage

### 20.1 Authority

AI assistants MAY help draft, review, classify, summarize and validate documentation.

AI output is not canonical until committed and reviewed under the same rules as human-authored changes.

### 20.2 Required Context Behavior

Before working on a task, an AI assistant SHOULD load:

1. the active continuity handoff,
2. PB-000,
3. the relevant context map,
4. directly referenced canonical documents,
5. only then any optional background material.

### 20.3 Continuity Rule

An AI assistant MUST NOT restart completed foundational work when the active context identifies a later milestone.

When instructed with only `GO`, it SHOULD continue the next documented unfinished task.

### 20.4 Retrieval Discipline

AI context generation SHOULD:

- prefer canonical documents,
- exclude superseded and archived material by default,
- load only relevant sections where possible,
- use stable IDs,
- preserve normative wording,
- distinguish source content from inference.

### 20.5 AI-Generated Changes

AI-generated documentation MUST:

- follow PB-000,
- preserve scenario/engine boundaries,
- identify unresolved questions,
- avoid silently inventing decisions,
- not mark itself Canonical without human approval.

### 20.6 Prompt and Token Efficiency

Generated AI context SHOULD use:

- context maps,
- summaries linked to source IDs,
- state diffs,
- requirement subsets,
- compact machine-readable indexes.

Full repository dumps SHOULD be avoided.

---

## 21. Scenario Documentation Rules

Scenario-specific content MUST live below:

```text
project-bible/content/scenarios/<scenario-id>/
```

A scenario package SHOULD define:

- metadata,
- starting date,
- countries,
- regions,
- governments,
- ideologies,
- characters,
- factions,
- events,
- projects,
- technologies,
- resources,
- AI profiles,
- localization,
- graphics references,
- starting state.

Scenario documents MUST reference generic systems by stable IDs.

Generic system documents MAY use scenario examples, but examples MUST be labeled as examples and MUST NOT become hidden engine requirements.

---

## 22. Schemas and Machine Validation

Machine-readable schemas SHOULD exist for:

- canonical frontmatter,
- scenario package metadata,
- requirements,
- system definitions,
- events,
- actions,
- modifiers,
- savegames,
- context maps.

Recommended formats:

- JSON Schema for JSON/YAML data,
- Markdown lint rules for document structure,
- custom repository validation for IDs and references.

Validation SHOULD run in continuous integration.

A failed documentation validation SHOULD block merge when the change affects canonical sources.

---

## 23. Automatic Generation Targets

The canonical Markdown source MAY generate:

- documentation website,
- PDF Project Bible,
- searchable indexes,
- dependency graphs,
- requirement traceability matrix,
- system map,
- scenario reference manuals,
- modding documentation,
- AI context bundles,
- release documentation.

Generated artifacts MUST identify:

- source document versions,
- generation date,
- generator version where practical.

Generated output MUST NOT become a competing source of truth.

---

## 24. Templates

The repository SHOULD provide at least these templates:

```text
templates/
├── PB_Document_Template.md
├── Game_Design_System_Template.md
├── Technical_System_Template.md
├── Content_Definition_Template.md
├── Balancing_Template.md
├── ADR_Template.md
├── RFC_Template.md
├── Requirement_Template.md
└── Context_Map_Template.yaml
```

Templates SHOULD contain guidance comments that are removed from completed documents.

Templates MUST NOT force irrelevant sections into every document.

---

## 25. Migration of Existing Documents

Existing drafts contain useful project knowledge but are not automatically canonical.

Known migration sources include:

- `00_Vision_v2.md`,
- `01_Design_Philosophy_v2.md`,
- `TECH-000_Engine_Architecture_Overview.md`,
- `PaxHistoria_Kaiserreich_Game_Design_Concept.md`,
- `PaxHistoria_Kaiserreich_Grand_Strategy_Vision.md`,
- `PaxHistoria_Next_Steps_Roadmap.md`.

### 25.1 Migration Procedure

For each legacy document:

1. inventory valuable concepts,
2. map concepts to canonical target documents,
3. identify contradictions and duplicates,
4. preserve unresolved alternatives as open questions or RFCs,
5. rewrite content under the current standard,
6. add source references in the migration record,
7. mark the old file as migrated, superseded or archived,
8. do not delete the old file until the canonical replacement is reviewed.

### 25.2 No Blind Copy Rule

Legacy wording MUST NOT be copied blindly when it conflicts with current project decisions.

However, valuable concepts MUST NOT be discarded merely because the old structure is obsolete.

### 25.3 Migration Record

A migration index SHOULD track:

```yaml
source: 00_Vision_v2.md
targets:
  - PB-002
status: Migrated
notes: Core vision preserved; Kaiserreich-specific wording moved to scenario content.
```

---

## 26. Scope Control

Every major document SHOULD define:

- in scope,
- out of scope,
- dependencies,
- non-goals,
- open questions.

New ideas MAY be recorded without interrupting the active milestone.

Recommended idea capture:

```text
project-bible/appendix/idea-backlog/
```

An idea entry SHOULD include:

- summary,
- motivation,
- affected systems,
- urgency,
- whether it blocks current work.

The default assumption is that a new idea does not block current work unless a contradiction or critical dependency is identified.

---

## 27. Prototyping Exception

The project explicitly allows prototypes before full canonical specification when learning is required.

### 27.1 Prototype Eligibility

A prototype MAY precede full documentation when:

- feasibility is unknown,
- user experience requires experimentation,
- performance must be measured,
- an external dependency must be tested,
- the cost of formal design exceeds the cost of a disposable experiment.

### 27.2 Prototype Requirements

A prototype MUST still record:

- its question,
- its scope,
- what is intentionally non-production,
- expected disposal or migration path,
- outcome.

Recommended lightweight file:

```text
DEV-9XX_Prototype_<Name>.md
```

### 27.3 Prototype Limitations

Prototype code MUST NOT silently become production architecture.

Before promotion, successful prototype findings MUST be migrated into:

- canonical design,
- technical specification,
- ADRs where needed,
- implementation requirements,
- tests.

### 27.4 Timebox Principle

A prototype SHOULD be timeboxed by question and scope, not by arbitrary polish.

---

## 28. Review Process

### 28.1 Review Levels

#### Lightweight Review

For:

- spelling,
- links,
- examples,
- formatting,
- non-behavioral clarification.

#### Standard Review

For:

- new mechanics,
- changed requirements,
- system boundaries,
- scenario authoring rules,
- balancing policy.

#### Architecture Review

For:

- engine authority,
- persistence,
- mod compatibility,
- deterministic simulation,
- interfaces shared across major systems.

### 28.2 Review Checklist

Reviewers SHOULD verify:

- purpose is clear,
- scope is bounded,
- terminology matches PB-004 when available,
- requirements are testable,
- scenario assumptions are isolated,
- dependencies are identified,
- offline-first behavior is addressed where relevant,
- AI authority follows the golden architecture principle,
- open questions are explicit,
- version and status are correct.

---

## 29. Conflict Resolution

When documents conflict:

1. stop treating both statements as simultaneously authoritative,
2. identify whether one explicitly supersedes the other,
3. prefer the more specific canonical document only when the higher-level document permits specialization,
4. create an RFC or direct review item if the conflict affects design,
5. update all impacted references after resolution,
6. preserve the decision in change history or an ADR.

An AI assistant MUST report material contradictions rather than silently choosing one.

---

## 30. Documentation Quality Standard

Canonical documents SHOULD be:

- precise,
- concise where possible,
- explicit about uncertainty,
- free from unnecessary duplication,
- written in stable terminology,
- actionable for implementation,
- testable where normative,
- understandable without hidden chat context.

Avoid:

- vague aspirational wording without rules,
- implementation detail in high-level vision documents,
- narrative examples presented as universal mechanics,
- duplicate definitions across many documents,
- unexplained acronyms,
- large unstructured idea dumps.

---

## 31. Canonical Documentation Requirements

### REQ-DOC-001 – Canonical Markdown

**Statement:** Canonical Project Bible documents MUST use Markdown as their source format.

**Rationale:** Markdown is human-readable, versionable and suitable for automated processing.

**Verification:** Repository validation confirms canonical files use `.md` unless an approved schema file is required.

**Status:** Accepted

### REQ-DOC-002 – YAML Frontmatter

**Statement:** Every canonical document MUST contain valid YAML frontmatter with the required fields defined in PB-000.

**Rationale:** Tools and AI assistants require stable metadata.

**Verification:** CI parses and validates frontmatter.

**Status:** Accepted

### REQ-DOC-003 – Stable IDs

**Statement:** Every canonical document and major requirement MUST have a stable, unique ID.

**Rationale:** Traceability must survive file renames and structural changes.

**Verification:** CI rejects duplicate IDs.

**Status:** Accepted

### REQ-DOC-004 – Canonical Authority

**Statement:** Chats, issues and code comments MUST NOT override canonical Project Bible documents without a documented update.

**Rationale:** The project requires one authoritative product definition.

**Verification:** Review process checks that behavioral changes update the Bible.

**Status:** Accepted

### REQ-DOC-005 – Scenario Isolation

**Statement:** Generic engine documentation MUST NOT contain hardcoded Kaiserreich-specific requirements.

**Rationale:** The engine must support multiple scenarios.

**Verification:** Architecture and design review checks scenario boundaries.

**Status:** Accepted

### REQ-DOC-006 – Traceable Major Features

**Statement:** Major features MUST be traceable from design goals or requirements to implementation work and tests.

**Rationale:** Intent, code and verification must remain aligned.

**Verification:** GitHub issues and pull requests reference canonical IDs.

**Status:** Accepted

### REQ-DOC-007 – Explicit Supersession

**Statement:** A canonical document that replaces another MUST declare the supersession relationship.

**Rationale:** Older material must not remain ambiguously authoritative.

**Verification:** Frontmatter validation and review.

**Status:** Accepted

### REQ-DOC-008 – AI Continuity

**Statement:** AI assistants working on the project MUST load current continuity and relevant canonical context before creating or modifying foundational work.

**Rationale:** The project must not repeatedly restart across chats.

**Verification:** AI context workflow and contribution review.

**Status:** Accepted

### REQ-DOC-009 – Generated Output Is Derived

**Statement:** Generated websites, PDFs, indexes and AI bundles MUST be treated as derived artifacts rather than independent sources of truth.

**Rationale:** Multiple editable authorities would create divergence.

**Verification:** Generated files identify canonical sources and are not manually edited.

**Status:** Accepted

### REQ-DOC-010 – Prototype Promotion

**Statement:** Prototype code MUST NOT become production architecture without migration of validated findings into canonical design and technical documentation.

**Rationale:** Experimental shortcuts must not become undocumented foundations.

**Verification:** Production pull request review checks prototype lineage.

**Status:** Accepted

---

## 32. Initial Canonical Roadmap After PB-000

After acceptance of PB-000, the immediate documentation sequence is:

1. `PB-001 – Project Manifest`
2. `PB-002 – Vision`
3. `PB-003 – Design Philosophy`
4. `TECH-100 – Engine Architecture`
5. `GD-100 – Core Gameplay Loop`

Existing drafts MUST be used as migration sources during this sequence.

The project MUST NOT restart the Manifest from an unrelated new foundation. It should be rewritten into this standard using already agreed project motivation and principles.

---

## 33. Open Questions

The following items remain intentionally open for later governance documents:

- final project and engine names,
- complete terminology catalog,
- exact ownership and reviewer model for a larger team,
- automated documentation toolchain,
- preferred static-site generator,
- exact schema implementation language,
- final GitHub label and project-board taxonomy,
- localization policy for canonical documentation.

These questions do not block adoption of PB-000.

---

## 34. Change History

| Version | Date | Status | Summary |
|---|---|---|---|
| 1.0.2 | 2026-08-07 | Canonical | Removed the redundant local decision list; its statements remain normative in their subject-matter sections, with originating Architecture Decisions referenced through `architecture_decisions`. |
| 1.0.0 | 2026-08-05 | Canonical | Initial Project Bible specification defining structure, metadata, IDs, lifecycle, traceability, AI usage, migration and prototyping rules. |

---

## 35. Final Rule

> Document the intent. Define the rules. Trace the implementation. Preserve the history. Keep building.
