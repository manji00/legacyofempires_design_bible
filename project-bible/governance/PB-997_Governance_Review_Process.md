---
document_id: PB-997
title: Governance Review Process
version: 2.0.1
status: Canonical
category: Governance
created: 2026-08-06
updated: 2026-08-16
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
  - PB-000
  - PB-998
related_documents:
  - GA-001
  - GA-001-RES
  - WP-001-CLOSE
systems: []
requirements: []
design_goals: []
architecture_decisions:
  - AD-005
  - AD-010
  - AD-012
  - AD-013
tags:
  - governance
  - review
  - audit
  - resolution
  - work-package
  - verification
  - traceability
canonical_path: project-bible/governance/PB-997_Governance_Review_Process.md
context_priority: critical
---

# PB-997 – Governance Review Process

## 1. Purpose and Process Boundary

PB-997 is the sole canonical process home for governance reviews, Work Packages
and releases. It operationalizes the rules, change classes, review levels and
role authority owned by PB-000; it MUST NOT redefine, extend or replace them.
PB-998 remains the sole Architecture-Decision register and status authority.

Audit reports, resolution plans, review records, finding lists, verification
results, commit references, release records and closure reports are evidence.
They demonstrate execution and decisions but possess no independent rule,
process or Architecture-Decision authority. The controlled evidence family and
its full lifecycle remain outside WP-003 pending GOV-B-008 and GOV-B-009.

## 2. Process Ownership Model

Governance execution uses the following ownership boundary:

| Information | Canonical owner | PB-997 responsibility |
|---|---|---|
| Governance rules, change classes, review levels and role authority | PB-000 | Apply without alteration |
| Review, Work-Package and release processes | PB-997 | Define and execute |
| Architecture Decisions and `ad_status` | PB-998 | Reference only |
| Audit and execution evidence | GA and controlled evidence artifacts | Produce and reference; never treat as authority |

A conflict is not resolved by recency or detail. The rule or classification is
corrected in PB-000 and the corresponding execution flow in PB-997; until that
explicit resolution, conflicting statements MUST NOT be treated as jointly
valid.

## 3. Unified Governance State Model

Each state belongs to one identified object. The dimensions below are
orthogonal: a transition checks cross-dimensional gates but MUST NOT silently
set another dimension.

| Field | State object | Allowed values | State keeper |
|---|---|---|---|
| `status` | Versioned Project-Bible document revision | `Idea`, `Draft`, `Review`, `Accepted`, `Canonical`, `Implemented`, `Superseded` | Document frontmatter under PB-000 rules |
| `review_phase` | Identified review run | `Planned`, `In Review`, `Rework`, `Decision`, `Completed`, `Cancelled` | Responsible Reviewer in controlled review evidence |
| `review_status` | Result of an identified review run | `Pending`, `Changes Required`, `Passed`, `Rejected`, `Cancelled` | Approval role in controlled review evidence |
| `ad_status` | Individual `AD-XXX` | `Draft`, `Pending`, `Architecture Review`, `Accepted`, `Implemented`, `Verified`, `Superseded` | Exclusively PB-998 |
| `work_package_status` | Bounded Work Package | `Planned`, `Ready`, `In Progress`, `Verification`, `Closed`, `Cancelled` | Named Work-Package Owner in Work-Package or closure evidence |
| `release_stage` | Named release line or candidacy | `Unreleased`, `Release Candidate`, `Released`, `Withdrawn` | Project Lead in release evidence |

Every transition record MUST identify the state object, previous and new value,
time, responsible role and evidence reference. Review, Work-Package and release
evidence MUST bind document references to an exact ID and version and, once
available, commit ID.

## 4. Review Process

### 4.1 Trigger and Classification

A review starts when a proposed change or immutable baseline is submitted. The
Document Owner records its scope and classifies it using the binding PB-000
matrix. The highest review level triggered by any part of the change applies;
changes MUST NOT be split to avoid it.

The process then assigns the approval role defined by PB-000:

- `Lightweight Review`: Document Owner or explicitly delegated Reviewer,
- `Standard Review`: Document Owner and Project Lead,
- `Architecture Review`: Architecture Board, with acceptance recorded on the
  applicable Architecture Decision in PB-998.

These mappings are references to PB-000 rules, not independently owned PB-997
classifications.

### 4.2 Required Input

Before `In Review`, the review run MUST record:

- a stable review-run identity,
- immutable document version or commit baseline,
- scope and applicable change class,
- derived review level and approval role,
- applicable requirements and Accepted Architecture Decisions,
- intended verification and required evidence.

### 4.3 Review-Phase State Machine

The normal phase flow is:

```text
Planned → In Review → Rework → In Review → Decision → Completed
```

`Rework → In Review` may repeat. `Cancelled` is a terminal transition from any
phase before `Completed`. All other rollback is prohibited; a materially changed
baseline requires a new review run or an explicitly recorded repeated review.

The responsible Reviewer moves `review_phase`. During `In Review`, the Reviewer
executes level-appropriate checks. Higher levels include the objectives of lower
levels. Checks MUST cover the scoped intent, consistency, dependencies,
applicable requirements and Decisions, state/version metadata and the stated
verification method. Findings requiring changes move the run to `Rework`.

### 4.4 Review-Result State Machine and Decision

The independent result flow is:

```text
Pending → Changes Required → Pending
Pending → Passed | Rejected
```

`Cancelled` is terminal while the run has not produced a final result. Only the
PB-000 approval role for the applicable level may set the result. The role and
approval MUST be recorded separately even when one person holds multiple roles.

At `Decision`, the approval role sets `Passed` or `Rejected`; unresolved
required changes instead set `Changes Required` and return the phase to
`Rework`. The responsible Reviewer moves the phase to `Completed` only after the
result and evidence are recorded. `Passed` applies only to the immutable
baseline reviewed and is never inherited by a changed revision.

### 4.5 Escalation and Repeated Review

If scope expands, classification is uncertain, or any part triggers a higher
level, the run MUST be escalated to that level before a passing decision. A
change after review requires a new or explicitly repeated review against the
new immutable baseline. The evidence retains prior findings and results as
history; it MUST NOT rewrite them to imply approval of the new revision.

## 5. Work-Package Process

The normal Work-Package flow is:

```text
Planned → Ready → In Progress → Verification → Closed
```

The named Work-Package Owner keeps `work_package_status`. `Cancelled` is a
terminal transition only from `Planned`, `Ready` or `In Progress`.

- `Planned` records scope, owner, findings, dependencies and Definitions of Done.
- `Ready` requires every prerequisite Architecture Decision to be `Accepted` in
  PB-998.
- `In Progress` permits only the approved bounded implementation.
- `Verification` requires implementation to be complete and checks every
  assigned Definition of Done, Decision and scope boundary.
- `Closed` requires the PB-000 approval role applicable to the Work Package and
  a closure record against all assigned Definitions of Done.

A Work Package does not set document, review, Decision or release state. Closure
proves only that the identified Work Package met its own scoped criteria.

## 6. Release Process

The normal release flow is:

```text
Unreleased → Release Candidate → Released → Withdrawn
```

After failed Release-Candidate checks, `Release Candidate → Unreleased` is the
only permitted return transition. Any other retry creates a new release
candidacy. The Project Lead keeps `release_stage`.

`Release Candidate` requires canonical document revisions for the release scope
and completion of all required review runs. `Released` requires passed release
checks and the recorded approval of the Project Lead; an Architecture-Review
scope additionally requires Architecture Board approval. `Withdrawn` requires a
reason and evidence and does not alter historical document, review,
Architecture-Decision or Work-Package state.

A release record references exact document versions and baselines. If a document
revision changes after creation of a Release Candidate, that revision requires a
new or explicitly repeated review before release. Release Stage never replaces
Semantic Versioning.

## 7. Architecture-Decision Gate

PB-997 does not move `ad_status`. It reads the state exclusively from PB-998.
Architecture-dependent work may become `Ready` only when every prerequisite
Decision is `Accepted`. `Implemented`, `Verified` and `Superseded` require the
references and transitions defined by PB-998 and cannot be inferred from a
review result, Work-Package closure or release.

## 8. Versioning and Cross-Dimensional Gates

Semantic Versioning belongs to the document revision under PB-000. It is
independent from all PB-997 state fields. The process enforces only these
cross-dimensional gates:

- document `Canonical` requires an `Accepted` revision and a referenced review
  run at `review_phase: Completed` and `review_status: Passed`,
- Work Package `Ready` requires all prerequisite Decisions at `Accepted`,
- Work Package `Verification` requires completed implementation,
- Work Package `Closed` requires scoped approval and closure evidence,
- `Release Candidate` requires canonical revisions and completed required
  reviews,
- `Released` requires passed release checks and the required role approvals.

A gate checks a prerequisite; it does not transition the prerequisite object.
No `Passed`, `Accepted`, `Closed` or `Released` value proves the state of any
other object.

## 9. Validation Requirements

Automated validation of this model MUST be derivable as one finite-state machine
per dimension. A validator must be able to reject:

1. values outside the enumerations in Section 3,
2. transitions without object ID, previous/new value, role, time or evidence,
3. edges not explicitly allowed by this document, PB-000 or PB-998,
4. an approval role inconsistent with the PB-000 change class and review level,
5. a cross-dimensional gate whose prerequisites are not met,
6. review or release evidence not bound to an exact baseline, and
7. any attempt by evidence or another dimension to set an object's canonical
   state.

This section defines the validation contract required by WP-003; creation of a
schema or validator implementation is outside WP-003 and remains deferred to
its separately approved scope.

## 10. Traceability and Scope Control

Every execution chain MUST remain reconstructible from the initiating scope to
its immutable baseline, applicable Decisions, review and approval evidence,
implementation commits, verification and closure or release decision. Evidence
records what occurred; it does not change PB-000 rules, PB-997 processes or
PB-998 Decisions.

Execution MUST stop at the approved Work-Package boundary. Findings assigned to
another package remain outside scope even when they are adjacent. For WP-003,
this process implements only GOV-B-006 and GOV-B-014 under GA-001-RES and
AD-012/AD-013; it does not define the controlled evidence family reserved for
GOV-B-008/GOV-B-009 or modify the terminology release boundary assigned to
WP-004.

# Versionshistorie

| Version | Datum | Status | Zusammenfassung |
|---|---|---|---|
| 2.0.1 | 2026-08-16 | Canonical | GOV-B-010 Decision-Traceability vervollständigt und die bereits trennscharfen Beziehungen aus GOV-B-013 validiert. |
| 2.0.0 | 2026-08-07 | Canonical | AD-012 und AD-013 umgesetzt: PB-997 als alleinige Prozessheimat etabliert und Review-, Work-Package- und Releaseprozesse mit orthogonalen Zustandsautomaten, Rollen, Gates, Versionbindungen und Validierungsvertrag synchronisiert. |
| 1.1.0 | 2026-08-07 | Canonical | Den mit GA-001, GA-001-RES und WP-001 erprobten Governance-Lifecycle einschließlich AD-Lifecycle, Implementation, Verification, Closure, Work-Package-DoD und vollständiger Traceability dokumentiert. |
| 1.0.0 | 2026-08-06 | Canonical | Ursprünglicher Review- und Freigabeprozess. |
