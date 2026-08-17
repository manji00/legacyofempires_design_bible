# Controlled Review and Release Evidence

This directory is the retained repository home defined by PB-000 and executed by
PB-997. YAML records use only the six AD-017 evidence classes. Records are
append-only historical evidence; corrections create new records or history
entries. `ruby scripts/validate_wp002.rb` validates their deterministic contract.

## Retained WP-002 Test Run

`RVR-000001` reviews the PB-999 1.0.1 authority-boundary baseline, records
`FND-000001`, and links `COR-000001` to implementation commit
`19cc9527f238d46b651c3b9833cc9e39e6dcba72`. Versioned amendment histories in
the affected records retain the superseded, non-persisted workspace reference
`94f797ce1fa604e487254d54362e8aa352ff9e67`. `RVR-000002` independently binds
PB-999 1.1.0 at the persisted implementation commit, re-verifies and closes the same persistent Finding.
`RES-000001` records the authorized Passed result only for that corrected
baseline; `REL-000001` records the Project Lead's explicit `Unreleased` decision because
the reviewed PB-999 revision remains `Draft`; it does not claim an invalid
Release Candidate transition. These retained records demonstrate the AD-017 chain and
do not create GA-001 Findings or release the Project Bible.

Manual verification confirmed that the Finding is understandable, the explicit
non-authority correction addresses it, the re-verification method and review
scope are adequate, Passed and the test-only release decision are justified,
and no terminology release-boundary or other WP-004 question was changed.
Traceability is WP002-V1-A → GOV-B-003; WP002-V1-B → GOV-B-009 / AD-017
Baseline & Traceability; WP002-V1-C → AD-017 / PB-997 Release Gate; and
WP002-V1-D → AD-017 Validation Contract / PB-997. The retained execution chain
is GA-001 → GA-001-RES → GOV-B-003/GOV-B-008/GOV-B-009 → AD-017 → WP-002
→ `19cc9527f238d46b651c3b9833cc9e39e6dcba72` → RVR-000001/RVR-000002 →
RES-000001 → REL-000001.
