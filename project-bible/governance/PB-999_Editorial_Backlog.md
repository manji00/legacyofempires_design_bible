---
document_id: PB-999
title: Editorial Backlog
version: 1.1.0
status: Draft
category: Governance
created: 2026-08-06
updated: 2026-08-17
owners:
  - Project Lead
reviewers: []
audience:
  - Human Collaborators
  - AI Assistants
source_of_truth: false
supersedes: []
superseded_by: null
depends_on:
  - PB-000
related_documents:
  - PB-004
architecture_decisions:
  - AD-017
systems: []
requirements: []
design_goals: []
tags:
  - governance
  - editorial
  - backlog
canonical_path: project-bible/governance/PB-999_Editorial_Backlog.md
context_priority: optional
---

# PB-999 – Editorial Backlog

# Zweck

PB-999 ist eine kleine, nicht-kanonische Arbeitsliste für offene Dokumentationsarbeiten, spätere Verbesserungen, Editorial Reviews, Konsistenzprüfungen und kleine Refactorings.

Das Dokument enthält keine Architekturentscheidungen, keine Game-Design-Entscheidungen und keine offenen Designfragen.

# Arbeitsweise

- Neue Punkte werden als konkrete, redaktionelle Aufgaben mit Checkbox erfasst.
- Abgeschlossene Punkte werden entfernt.
- Die Liste bleibt bewusst klein und dient ausschließlich als Arbeitsliste.
- Entscheidungen und offene Designfragen werden in den dafür vorgesehenen Dokumenten festgehalten, nicht in PB-999.

PB-999 ist mutable, non-canonical und besitzt keine Gate Authority. Ein Punkt
darf eine kontrollierte Finding-ID ausschließlich informativ referenzieren.
Checkbox, Änderung, Entfernung oder Abschluss eines Punkts schließt kein
Finding, setzt weder `review_status` noch `release_stage`, erteilt keine
Release Approval und ersetzt keinen kontrollierten Evidence Record. Normative
Gate-Prüfungen verwenden ausschließlich die in PB-997 geführte Evidence-Familie.

# Prioritäten

- **Hoch:** blockiert die redaktionelle Fertigstellung eines Dokuments.
- **Mittel:** wird beim nächsten passenden Editorial Review bearbeitet.
- **Niedrig:** wird bei einer späteren Konsistenz- oder Refactoring-Runde bearbeitet.

Sofern ein Punkt keine ausdrückliche Priorität nennt, gilt **Mittel**.

# Offene Punkte

## PB-004

- [ ] Kapitel 2 ergänzen: Glossarbegriffe werden nach fachlichen Domänen statt alphabetisch strukturiert.
- [ ] Gesamtes PB-004 nach Fertigstellung auf einheitliche Sprache prüfen.
- [ ] Cross References prüfen.
- [ ] Begriffsdopplungen prüfen.

## PB-Serie

- [ ] Nach Abschluss aller PB-Dokumente vollständigen Editorial Review durchführen.
- [ ] Einheitliche Versionierung prüfen.
- [ ] Frontmatter validieren.
- [ ] Querverweise validieren.

## TECH-Serie

- [ ] Nach Erstellung der ersten TECH-Dokumente Terminologie gegen PB-004 validieren.

## GD-Serie

- [ ] Nach Erstellung von GD-100 Glossarreferenzen prüfen.
