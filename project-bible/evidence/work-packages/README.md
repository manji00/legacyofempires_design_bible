# Work-Package State Evidence

This directory contains the controlled AD-018 state-evidence carrier family.
Each stable Work-Package ID has exactly one YAML carrier named `<WP-ID>.yml`.
The carrier records state evidence; it does not own governance rules, process,
state authority, approval authority, or closure authority. The named
Work-Package owner remains the state keeper. Closure reports remain separate,
historical evidence and are referenced by a `Closed` carrier.

Carrier revisions use Semantic Versioning. The initial migration is `1.0.0`.
Later factual carrier corrections increment the carrier version according to
the existing evidence versioning rules and retain rather than silently rewrite
supported transition history.

The remediation trace is:

```text
GA-001
  → GA-001-RES
  → GOV-B-014
  → AD-013
  → WP-003
  → WP003-V1-A
  → AD-018
  → WP-003 Remediation #2
  → Verification #2
```

`Verification #2` is the next focused verification step; this directory does
not assert that it has occurred or passed.
