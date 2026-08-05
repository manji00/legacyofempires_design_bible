---
document_id: CTX-000
title: Project 4X Context Handoff
version: 1.0
status: Active
category: Governance
purpose:
  - Preserve project continuity across new chats
  - Prevent restarting completed work
  - Provide canonical project decisions and next steps
audience:
  - Human collaborators
  - ChatGPT
  - Coding assistants
  - Future maintainers
source_of_truth: true
---

# Project 4X – Context & Continuity Handoff

## 1. Purpose of This File

This file exists to prevent loss of context when starting a new chat.

A new chat must **not** restart the project, recreate already completed documents, or reinterpret the project from scratch.

The assistant must first read this file and continue from the documented current state.

## Mandatory Continuity Rule

> Do not restart at PB-001, do not recreate the Manifest, and do not invent a new structure unless explicitly requested.

When the user writes only:

> GO

the assistant must:

1. read this file,
2. identify the documented current milestone,
3. continue with the next unfinished document or task,
4. avoid proposing a new foundation unless a contradiction is found.

---

# 2. Project Identity

## Temporary Project Name

The working game name is temporary.

Earlier working names included:

- Pax Historia Local Kaiserreich Mod
- Project Kaiserreich Grand Strategy
- Legacy of Empires

No final title has been selected.

The game name must remain separate from the framework or engine name.

## Current Concept

The project is a:

> **Scenario-driven Grand Strategy Sandbox Engine**

The first official scenario is based on the **Kaiserreich timeline**.

Kaiserreich is not the permanent identity of the engine.

Future scenarios may include:

- historical scenarios
- alternate-history scenarios
- fictional worlds
- total conversions
- community-created scenarios

## Core Scenario Rule

> Kaiserreich is the first scenario, not the engine.

The engine must not contain hardcoded Kaiserreich-specific assumptions.

---

# 3. Core Creative Motivation

The user wants to create a very open Grand Strategy sandbox.

The player should not be restricted to existing countries, political paths, government systems or historical outcomes.

The player should be able to:

- create or transform political systems,
- radically reform states,
- create new countries,
- form unusual governments,
- reshape ideologies,
- cause believable but extreme alternate worlds,
- pursue strategies that were never predefined by the designers.

The desired experience is more open than traditional Grand Strategy games.

## Problems Identified in Existing Games

### Hearts of Iron IV

- too heavily focused on military simulation,
- too much detailed military management for the user's taste,
- changing the political identity of countries is difficult without cheats or mods,
- many campaigns play similarly,
- large parts of the world remain passive,
- the world feels too constrained by scripted paths.

### Europa Universalis IV

- insufficient internal political and economic depth,
- too much focus on expansion and exploration,
- national transformations often depend on rigid external conditions,
- the player has limited tools to transform society internally.

### Stellaris

- good foundation, but many systems still feel predefined,
- insufficient freedom to fundamentally redefine society and governance,
- not played enough by the user to serve as the primary reference.

### Victoria

The user has not played Victoria and no design conclusions should be assumed from it.

### Pax Historia

Pax Historia is an important inspiration but also a negative reference.

Problems identified:

- too few real gameplay systems,
- the player mainly prompts instead of playing,
- too much authority is given to the AI,
- scenarios become inconsistent,
- world facts may change unpredictably,
- the AI may allow actions too easily depending on the model,
- no stable mechanical red line exists,
- insufficient dashboards, systems and structured actions.

## Core Opportunity

Traditional Grand Strategy games provide stable mechanics but restrict creativity.

AI-driven games provide creativity but lack stable simulation.

This project combines both strengths:

> **Deterministic systems provide consistency. AI provides interpretation, atmosphere and flexibility.**

---

# 4. Project Vision

## Primary Vision

> Create a scenario-driven Grand Strategy sandbox where societies, governments, ideologies, countries and power structures can emerge, transform and collapse through simulation rather than only through predefined scripts.

## Important Interpretation

This is not only an alternate-history game.

The preferred concept is:

> **Emergent History**

The player should not merely select alternate historical branches.

The player should influence systems from which new histories emerge.

## Player Role

The player is not only a president, monarch, general or party leader.

The player acts more broadly as the strategic guiding intelligence of the state or political entity.

The exact role may vary by scenario and political system.

This topic still requires a dedicated design document.

---

# 5. The Four Project Pillars

All four pillars are required.

None should replace the others.

## 5.1 Grand Strategy Core

The mechanical foundation of the game.

Includes:

- economy,
- production,
- trade,
- diplomacy,
- warfare,
- logistics,
- research,
- intelligence,
- projects,
- strategic planning,
- country AI,
- map interaction,
- time progression.

The game must be playable and enjoyable without an LLM.

## 5.2 Political Grand Strategy

The internal political and societal depth.

Includes:

- governments,
- constitutions,
- parties,
- interest groups,
- factions,
- ministries,
- cabinets,
- legitimacy,
- regional loyalty,
- political reform,
- coups,
- revolutions,
- civil conflict,
- social transformation.

Politics must affect real gameplay and may not be flavor-only.

## 5.3 Sandbox

The freedom layer.

The player uses:

- structured actions for normal gameplay,
- configurable actions for complex gameplay,
- free-form actions for unusual plans.

The sandbox must allow the player to attempt unexpected actions.

Player freedom does not guarantee success.

The engine evaluates plausibility, cost, support, risk and consequences.

## 5.4 Narrative Layer

The optional narrative and roleplay layer.

May include:

- diplomacy,
- advisors,
- speeches,
- newspapers,
- event descriptions,
- character dialogue,
- reports,
- campaign summaries.

The Narrative Layer never owns authoritative game state.

---

# 6. Golden Architecture Principle

> **The simulation decides. The AI narrates.**

The simulation engine decides:

- costs,
- success and failure,
- state changes,
- political consequences,
- economic consequences,
- battles,
- diplomacy,
- event triggers,
- projects,
- country AI actions.

AI may:

- translate natural language into structured action proposals,
- write dialogue,
- summarize events,
- create atmosphere,
- provide advice,
- narrate outcomes.

AI must never directly and silently modify authoritative game state.

---

# 7. AI and Performance Principles

The project must support:

1. fully offline mode,
2. lightweight local LLM mode,
3. hybrid mode,
4. richer cloud or high-end local narrative mode.

The same simulation result must remain valid regardless of narrative provider.

## Token and Performance Goals

- reduce LLM calls,
- avoid full-world prompts,
- use relevance filtering,
- send state diffs,
- cache stable context,
- use structured output,
- limit response length,
- allow small local models,
- support older hardware.

## Offline-First Rule

Every core feature must have a non-LLM fallback.

If a feature stops working without AI, it is incomplete.

---

# 8. Scenario-First Architecture

The engine knows generic concepts only.

Examples:

- Country
- Government
- Alliance
- Character
- Region
- Resource
- Event
- Project
- Technology
- Ideology
- Scenario

The engine must not know specific scenario content such as:

- Germany,
- Austria,
- Reichspakt,
- Black Monday,
- Syndicalism,
- Kaiserreich-specific events.

These belong in scenario packages.

## Scenario Package Concept

A scenario package may define:

- metadata,
- countries,
- maps,
- governments,
- ideologies,
- characters,
- events,
- projects,
- technologies,
- resources,
- AI profiles,
- localization,
- graphics,
- starting state.

The engine asks:

> Which scenario is loaded?

It must never ask:

> Is this Kaiserreich?

---

# 9. Project Bible

The documentation is no longer treated as only a GDD or Developer Handbook.

The official concept is:

> **Project Bible**

The Project Bible is the Single Source of Truth for the project.

It is intended for:

- humans,
- developers,
- AI assistants,
- modders,
- testers,
- future maintainers.

## Project Bible Philosophy

> The Project Bible defines the product.  
> The code implements it.

The Bible should be:

- human-readable,
- machine-readable,
- versioned,
- cross-referenced,
- suitable for Git,
- suitable for future website/PDF generation,
- suitable for AI retrieval and context loading.

## Project Bible Areas

### Governance

Project rules and documentation standards.

### Game Design

Gameplay systems and player experience.

### Technical

Architecture and implementation design.

### Content

Scenarios, countries, characters, events and projects.

### Balancing

Values, formulas, modifiers, costs and AI weights.

### Development

Roadmap, standards, testing, releases and contribution workflow.

### Appendix

Research, references, archived concepts and future ideas.

---

# 10. Project Bible Driven Development

The agreed development workflow is:

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

## Important Rules

- no major gameplay system without a Bible entry,
- no engine component without technical specification,
- no scenario content without content specification,
- no AI implementation without the required Bible context,
- no scenario-specific engine hardcoding,
- systems before content,
- mechanics before large event collections.

## Important Warning

The Bible must support development.

It must not become bureaucracy that prevents prototyping.

This balance still needs to be defined in PB-000.

---

# 11. Human and Machine Readability

Every future canonical document should support three audiences.

## Human Layer

Explains:

- why the system exists,
- intended player experience,
- design reasoning,
- examples,
- non-goals.

## Developer Layer

Defines:

- modules,
- interfaces,
- data flow,
- schemas,
- savegame data,
- edge cases,
- tests.

## Machine Layer

Provides:

- YAML frontmatter,
- document IDs,
- tags,
- dependencies,
- requirements,
- system IDs,
- references,
- status,
- version.

All three layers belong in the same Markdown file where practical.

---

# 12. Identification System

The following ID families were agreed in principle.

## Documents

- PB – Governance / Project Bible
- GD – Game Design
- TECH – Technical
- CNT – Content
- BAL – Balancing
- DEV – Development

Examples:

- PB-000
- PB-001
- GD-100
- TECH-100
- CNT-200
- BAL-100
- DEV-001

## Systems

Examples:

- SYS-ECONOMY
- SYS-POLITICS
- SYS-MILITARY
- SYS-DIPLOMACY
- SYS-INTELLIGENCE
- SYS-NARRATIVE

## Requirements

Examples:

- REQ-SIM-001
- REQ-AI-001
- REQ-SCN-001
- REQ-POL-001
- REQ-UI-001

## Other Future IDs

Agreed as useful but not yet fully specified:

- ADR – Architecture Decision Record
- RFC – Request for Comments
- DG – Design Goal
- TEST – Test specification
- API – API specification
- SAVE – Savegame schema

Exact syntax must be finalized in PB-000.

---

# 13. Existing Documents and Their Status

The following documents were already created during earlier work.

They are useful source drafts but are not yet canonical under the final Project Bible standard.

## Draft Documents

- `00_Vision_v2.md`
- `01_Design_Philosophy_v2.md`
- `TECH-000_Engine_Architecture_Overview.md`
- `PaxHistoria_Kaiserreich_Game_Design_Concept.md`
- `PaxHistoria_Kaiserreich_Grand_Strategy_Vision.md`
- `PaxHistoria_Next_Steps_Roadmap.md`

## Important Status Rule

These files contain valuable content.

They must be reviewed and migrated into the canonical Project Bible structure.

They must not simply be discarded.

They must not be treated as final until rewritten under PB-000.

---

# 14. Current Governance Plan

The proposed governance sequence is:

- PB-000 – Project Bible Specification
- PB-001 – Project Manifest
- PB-002 – Vision
- PB-003 – Design Philosophy
- PB-004 – Naming & Terminology
- PB-005 – Documentation Standard
- PB-006 – Requirement System
- PB-007 – Project Structure

However, the most recent working direction was:

1. create PB-001 Project Manifest,
2. use practical experience from the first documents,
3. finalize PB-000 Project Bible Specification,
4. migrate PB-001, PB-002, PB-003 and TECH-100 to the final standard.

This ordering may be adjusted, but the assistant must not repeatedly recreate PB-001 from scratch.

---

# 15. Project Manifest Direction

The Project Manifest must be based on the user's actual motivation.

It should express that the project exists because:

- traditional Grand Strategy games are mechanically stable but creatively rigid,
- AI-only games are flexible but mechanically unstable,
- the player should be able to reshape political and social systems,
- worlds should be transformed through simulation,
- history should emerge from systems,
- AI should enhance interaction rather than replace gameplay.

Important possible manifesto statements include:

> Build systems. Let history emerge.

> The player shapes history. The engine makes it believable.

> Players should shape civilizations, not merely command countries.

> Grand Strategy should not simulate only a fixed world. It should simulate how worlds are created, transformed and reinvented.

These are candidate statements, not all necessarily final.

---

# 16. Current Work State

## Completed in Discussion

The following conceptual work is already agreed:

- scenario-driven engine,
- Kaiserreich as first scenario only,
- four pillars,
- deterministic simulation,
- optional AI,
- offline-first,
- sandbox actions,
- political transformation,
- Project Bible concept,
- human + machine readability,
- Bible-driven development,
- need for formal documentation standard.

## Not Yet Canonically Completed

- PB-000 Project Bible Specification,
- final PB-001 Project Manifest,
- canonical PB-002 Vision,
- canonical PB-003 Design Philosophy,
- canonical TECH-100 Engine Architecture,
- Core Gameplay Loop,
- final project title.

---

# 17. Exact Next Step

## Current Next Task

> **Create PB-000 – Project Bible Specification as the canonical documentation standard.**

PB-000 should define:

- folder structure,
- document categories,
- YAML frontmatter,
- document IDs,
- system IDs,
- requirement IDs,
- design goal IDs,
- references,
- context maps,
- versioning,
- status lifecycle,
- review process,
- human/developer/machine layers,
- traceability,
- ADRs,
- RFCs,
- relationship to GitHub,
- AI usage,
- templates,
- migration rules for existing documents,
- automatic generation targets,
- scope control,
- prototyping exceptions.

## After PB-000

1. rewrite PB-001 Project Manifest,
2. rewrite PB-002 Vision,
3. rewrite PB-003 Design Philosophy,
4. rewrite TECH-100 Engine Architecture,
5. continue with GD-100 Core Gameplay Loop.

## Critical Continuity Instruction

When the user starts a new chat and provides this file, do not ask what the project is.

Do not propose another new manifesto structure.

Do not restart with introductory brainstorming.

Continue with the exact next task above unless the user explicitly changes it.

---

# 18. Suggested New-Chat Prompt

The user can upload this file and write:

```text
Read PROJECT_4X_CONTEXT_HANDOFF.md.
Continue from the documented current state.
GO.
```

The assistant should then begin PB-000.

---

# 19. Collaboration Style

The user welcomes new ideas.

However:

> New ideas must not repeatedly replace the agreed next step.

Ideas should be recorded without preventing progress.

The assistant may suggest improvements, but it must still complete the active task.

This is a critical collaboration rule.

---

# 20. Final Continuity Summary

This project is building:

> A moddable, scenario-driven Grand Strategy sandbox engine focused on emergent history, political and societal transformation, deterministic simulation, player freedom and optional AI narrative.

The first scenario is Kaiserreich.

The documentation system is the Project Bible.

The immediate task is PB-000.

Do not restart.

Continue.
