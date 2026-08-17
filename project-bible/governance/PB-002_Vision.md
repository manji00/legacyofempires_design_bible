---
document_id: PB-002
title: Vision
version: 1.2.0
status: Canonical
category: Governance
created: 2026-08-05
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
supersedes:
  - reference_type: historical_evidence
    target: 00_Vision_v2.md
    provenance: Historical source draft recorded during the initial Project Bible migration.
  - reference_type: historical_evidence
    target: PaxHistoria_Kaiserreich_Grand_Strategy_Vision.md
    provenance: Historical source draft recorded during the initial Project Bible migration.
superseded_by: null
depends_on:
  - reference_type: canonical
    target: PB-000
  - reference_type: canonical
    target: PB-001
related_documents:
  - reference_type: canonical
    target: PB-003
systems:
  - SYS-SIMULATION
  - SYS-POLITICS
  - SYS-ECONOMY
  - SYS-DIPLOMACY
  - SYS-MILITARY
  - SYS-SANDBOX
  - SYS-NARRATIVE
  - SYS-SCENARIO
requirements:
  - REQ-VIS-001
  - REQ-VIS-002
  - REQ-VIS-003
  - REQ-VIS-004
  - REQ-VIS-005
  - REQ-VIS-006
  - REQ-VIS-007
  - REQ-VIS-008
  - REQ-VIS-009
  - REQ-VIS-010
architecture_decisions:
  - AD-016
design_goals:
  - DG-VIS-001
  - DG-VIS-002
  - DG-VIS-003
  - DG-VIS-004
  - DG-VIS-005
  - DG-VIS-006
tags:
  - vision
  - grand-strategy
  - emergent-history
  - sandbox
  - political-simulation
  - scenario-driven
  - offline-first
  - ai-assisted
canonical_path: project-bible/governance/PB-002_Vision.md
context_priority: critical
---

# PB-002 – Vision

## 1. Purpose

This document defines the long-term product vision of Project 4X.

It describes what kind of game and framework the project is intended to become, what experience it must create, which qualities distinguish it from existing Grand Strategy games, and which boundaries must remain stable as detailed design and implementation evolve.

PB-002 is not a feature list, roadmap or technical architecture. It is the authoritative product direction against which future systems, scenarios and implementation choices are evaluated.

> Project 4X is a scenario-driven Grand Strategy sandbox in which societies, governments, ideologies, countries and power structures can emerge, transform and collapse through simulation.

### 1.1 Normative Content Ownership

PB-002 is the sole normative home, under AD-016, for the long-term product
vision, product goals, product-oriented target requirements and
product-oriented success requirements. The vision, success criteria, design
goals and `REQ-VIS-*` requirements in this document are therefore classified
as **OWNED NORMATIVE STATEMENT** for those product functions.

Section 3.1 restates the fundamental project identity owned by PB-001 in a
product-vision context and is classified as a **DERIVED SUMMARY — normative
source: PB-001, sections 3 and 11**. The translated manifesto line “Build systems. Let history emerge.” in
section 2 is a **DERIVED SUMMARY — normative source: PB-001, heading and
section 19**. These classifications grant PB-002 no parallel ownership of the
project WHY. Where either representation conflicts with PB-001, PB-001
prevails; PB-002 remains authoritative only within its product-vision domain.

---

## 2. Vision Statement

Project 4X aims to create a Grand Strategy experience where the player does not merely guide an existing country through predefined historical branches.

The player shapes the political, social, economic and strategic forces from which new histories emerge.

The world must be mechanically coherent enough to resist arbitrary wishes, yet open enough to permit outcomes that no designer explicitly scripted.

The project combines three qualities that are rarely achieved together:

1. the systemic stability of a traditional strategy game,
2. the transformative freedom of a true sandbox,
3. the interpretive and narrative flexibility of optional AI.

The intended result is not simply alternate history.

It is **Emergent History**.

> Build systems. Let history emerge.

---

## 3. Product Identity

### 3.1 Core Identity

Project 4X is a:

> **Scenario-driven Grand Strategy Sandbox Engine**

The engine provides reusable simulation systems.

Scenario packages provide worlds, maps, starting conditions, countries, ideologies, characters, events, technologies and other setting-specific content.

The first official scenario is based on the Kaiserreich timeline, but Kaiserreich is not the permanent identity of the engine.

### 3.2 Scenario Independence

The engine must remain capable of supporting:

- historical scenarios,
- alternate-history scenarios,
- fictional worlds,
- total conversions,
- community-created scenarios,
- scenarios with different political, technological or geographic assumptions.

The engine understands generic concepts such as countries, regions, governments, alliances, resources, ideologies, projects and characters.

It must not depend on hardcoded scenario entities or ask whether the current scenario is Kaiserreich.

### 3.3 Working Name

The final game title has not yet been selected.

Project 4X and Legacy of Empires are working identifiers only. Naming must not constrain the design before the product identity is sufficiently mature.

---

## 4. The Player Fantasy

The core fantasy is not merely to command a country.

It is to shape a political civilization under pressure.

The player acts as the strategic guiding intelligence of a state, movement, government or comparable political entity. The exact in-world interpretation may vary by scenario and political system.

The player should be able to attempt transformations such as:

- reforming or replacing a constitution,
- redistributing power between institutions,
- creating a new political movement,
- transforming an ideology,
- federalizing, decentralizing or centralizing a state,
- abolishing or restoring a monarchy,
- creating a new country,
- reorganizing an empire or alliance,
- integrating conquered or autonomous regions,
- creating unusual forms of government,
- reshaping economic ownership,
- pursuing peaceful, coercive or revolutionary transformation,
- constructing political systems not predefined by the designers.

These actions must be possible as strategic projects rather than console commands or narrative wishes.

The world may accept, resist, distort or violently reject the player's plans according to its actual conditions.

---

## 5. Emergent History

### 5.1 Beyond Branching History

Traditional alternate-history design often presents a fixed set of authored branches.

Project 4X should instead model forces from which historical change can emerge:

- institutional power,
- legitimacy,
- public support,
- ideology,
- class and interest-group conflict,
- regional loyalty,
- economic capacity,
- military loyalty,
- diplomatic pressure,
- administrative reach,
- leadership and organization,
- information and propaganda,
- crisis and opportunity.

Pre-authored content may create context, pressure and distinctive flavor, but it must not be the sole mechanism of transformation.

### 5.2 Plausible Freedom

The player may attempt unexpected or radical actions.

Freedom does not mean automatic success.

Every meaningful action should encounter some combination of:

- material cost,
- political opposition,
- institutional resistance,
- time requirements,
- administrative capacity,
- risk of escalation,
- domestic and foreign consequences,
- partial success,
- unintended outcomes.

The engine should make surprising outcomes believable because they arise from understandable causes.

### 5.3 History as State Change

Historical transformation is represented through persistent changes in the simulation, not merely through event text.

A revolution, reform, economic collapse, diplomatic realignment or social transformation must alter relevant systems and future possibilities.

Narrative presentation explains history. It does not substitute for it.

---

## 6. The Four Product Pillars

All four pillars are mandatory and complementary.

No pillar may replace the others.

### 6.1 Grand Strategy Core

The game must possess a complete mechanical strategy foundation, including:

- economy,
- production,
- resources,
- trade,
- diplomacy,
- warfare,
- logistics,
- research,
- intelligence,
- projects,
- strategic planning,
- map interaction,
- country AI,
- time progression.

The game must remain playable and strategically meaningful without an LLM.

### 6.2 Political Grand Strategy

Internal politics and society must have systemic depth equal to their importance in the vision.

This includes:

- governments,
- constitutions,
- parties,
- movements,
- interest groups,
- factions,
- ministries,
- cabinets,
- legitimacy,
- political capital,
- regional loyalty,
- reforms,
- coups,
- revolutions,
- civil conflict,
- social transformation.

Politics must create capabilities, restrictions, conflicts and strategic tradeoffs. It may not exist only as flavor or percentage modifiers detached from player decisions.

### 6.3 Sandbox

The sandbox is the freedom layer through which the player can pursue both expected and unexpected strategies.

The game should support:

- structured actions for common gameplay,
- configurable actions for complex plans,
- free-form proposals for unusual intentions.

Free-form input must be converted into explicit, reviewable and mechanically validated action proposals.

The sandbox expands what the player may attempt. It does not bypass game rules.

### 6.4 Narrative Layer

The narrative layer gives human meaning to simulation outcomes.

It may provide:

- diplomatic dialogue,
- advisors,
- speeches,
- newspapers,
- reports,
- event descriptions,
- character interaction,
- campaign histories,
- explanations of consequences.

The narrative layer is optional, replaceable and subordinate to the authoritative simulation.

---

## 7. Core Experience

### 7.1 The Strategic Rhythm

The intended experience alternates between:

1. understanding the current world,
2. defining strategic intentions,
3. selecting or constructing actions,
4. committing resources and political capital,
5. advancing time,
6. observing systemic reactions,
7. adapting to consequences.

The player should feel that plans unfold within a living world rather than executing instantly through menus or prompts.

### 7.2 Meaningful Transformation

A campaign should create visible differences between its beginning and end.

These differences may include:

- new borders,
- new states,
- new institutions,
- new ideologies,
- altered social structures,
- transformed alliances,
- changed economic systems,
- collapsed or revived powers,
- new centers of global influence.

The game should preserve enough historical continuity to make transformation meaningful, but enough systemic freedom to prevent every campaign from converging on the same outcomes.

### 7.3 A Living World

Non-player countries and political actors must pursue their own interests.

The world should not wait passively for the player.

AI-controlled actors must be capable of:

- pursuing reforms,
- resisting internal change,
- initiating diplomacy,
- exploiting crises,
- forming rival blocs,
- changing strategy,
- reacting to the player's reputation and behavior,
- generating independent historical developments.

The player is influential, not universally central.

---

## 8. Simulation Authority

The project's golden architecture principle is:

> **The simulation decides. The AI narrates.**

The authoritative simulation determines:

- whether an action is valid,
- costs and resource commitments,
- success, failure and partial success,
- state changes,
- political consequences,
- economic consequences,
- diplomatic responses,
- battles and military outcomes,
- event conditions,
- project progression,
- AI-controlled country actions.

Narrative AI may:

- interpret player language,
- propose structured actions,
- explain options,
- write dialogue,
- summarize developments,
- provide atmosphere,
- narrate validated outcomes.

Narrative AI must never silently alter authoritative game state.

Every state-changing action must pass through deterministic or explicitly controlled simulation rules.

---

## 9. AI as an Optional Capability

### 9.1 Purpose of AI

AI exists to improve interaction, interpretation and presentation.

It does not exist to replace gameplay systems.

Appropriate uses include:

- translating natural-language intent into structured proposals,
- generating contextual dialogue,
- summarizing complex state,
- explaining consequences,
- adapting narrative tone,
- producing historical reports from simulation data.

### 9.2 Operating Modes

The project should support:

1. fully offline mode without an LLM,
2. lightweight local LLM mode,
3. hybrid local and remote mode,
4. richer cloud or high-end local narrative mode.

The same authoritative simulation result must remain valid regardless of narrative provider.

### 9.3 Offline-First Requirement

Every core feature must have a non-LLM path.

No essential gameplay system may become unavailable because an AI service is disabled, unaffordable, slow, unsupported or offline.

### 9.4 Performance Direction

The product should minimize AI cost and latency through:

- relevance-filtered context,
- state diffs instead of complete world dumps,
- structured inputs and outputs,
- cached stable context,
- deterministic preprocessing,
- limited response scope,
- asynchronous narrative presentation where appropriate without delaying simulation,
- compatibility with small local models.

The game should remain practical on older consumer hardware within the limits of its simulation scope.

---

## 10. Political and Social Transformation

Political transformation is a central product capability, not a special-event exception.

The game should model the difference between declaring a goal and realizing it.

A government may announce reform immediately, but actual transformation may depend on:

- constitutional authority,
- parliamentary or institutional support,
- bureaucracy,
- military loyalty,
- public legitimacy,
- organized opposition,
- economic conditions,
- regional compliance,
- foreign pressure,
- implementation time.

The most radical paths should be possible when sufficient conditions are created, but should produce proportionate instability, resistance and consequences.

A small state may become a major power, an empire may peacefully federalize, a republic may become a monarchy, or an established ideology may fragment into something new—but only through sustained strategic play.

---

## 11. War and Expansion

War remains an important Grand Strategy system, but it must not dominate every campaign or reduce all strategic success to territorial conquest.

Military power should interact with:

- economic capacity,
- logistics,
- political legitimacy,
- social cohesion,
- diplomacy,
- intelligence,
- technology,
- occupation and integration,
- war aims,
- domestic tolerance for conflict.

The project should support meaningful strategies based on:

- internal development,
- political influence,
- diplomatic leadership,
- trade and economic power,
- ideological expansion,
- alliance construction,
- covert action,
- limited war,
- deterrence,
- territorial conquest.

No single path should be universally optimal.

---

## 12. Scenario and Modding Vision

Scenarios are first-class packages rather than collections of hardcoded exceptions.

A scenario package may define:

- metadata,
- maps and regions,
- countries and political entities,
- governments and constitutions,
- ideologies,
- parties and movements,
- characters,
- resources,
- technologies,
- projects,
- events,
- AI profiles,
- localization,
- graphics,
- starting state.

The long-term goal is to make scenario creation accessible without requiring changes to core engine code for ordinary content.

Community scenarios should be able to reuse generic systems, override approved data and add content through stable interfaces.

Modding capability is therefore part of the product identity, not an optional afterthought.

---

## 13. User Interface Vision

The interface must make complex systems understandable without forcing the player to communicate everything through chat.

The game should combine:

- map interaction,
- dashboards,
- ledgers,
- alerts,
- timelines,
- structured action panels,
- project planning views,
- political and economic reports,
- optional conversational interfaces.

Natural-language interaction should be one powerful tool among several.

The interface must clearly distinguish:

- current facts,
- forecasts,
- proposals,
- committed actions,
- uncertain information,
- narrative interpretation.

The player should understand why an action is difficult, what it requires, what risks it carries and what changed after resolution.

---

## 14. Accessibility of Complexity

Project 4X should contain deep systems without requiring the player to manually operate every low-level detail.

Complexity should be managed through:

- layered information,
- delegation,
- automation policies,
- strategic priorities,
- advisors,
- configurable defaults,
- clear causal explanations.

The player should be able to intervene deeply where desired while delegating routine administration.

Depth must come from meaningful relationships between systems, not from unnecessary repetitive input.

---

## 15. Non-Goals

Project 4X is not intended to become:

- a chat interface with a map attached,
- an AI storyteller that invents authoritative world state,
- a fixed Kaiserreich-only game engine,
- a collection of disconnected scripted focus trees,
- a pure military command simulator,
- a conquest game where all systems primarily serve expansion,
- a nation roleplay experience without strategic mechanics,
- a fully deterministic puzzle with no uncertainty,
- a simulation so detailed that ordinary strategic decisions become inaccessible,
- a documentation project that never reaches playable prototypes.

These non-goals are product boundaries. Individual scenarios may emphasize some themes more strongly, but they must not redefine the engine's core identity.

---

## 16. Success Criteria

The vision is being realized when the following statements are true:

### 16.1 Campaign Diversity

Two campaigns beginning from the same scenario can produce meaningfully different political, economic, diplomatic and territorial worlds without relying only on random event selection.

### 16.2 Systemic Transformation

The player can create political and social outcomes not explicitly authored as fixed branches, and the simulation produces understandable resistance and consequences.

### 16.3 Strategic Completeness Without AI

A full campaign remains playable, coherent and enjoyable without an LLM.

### 16.4 Useful Optional AI

AI improves natural-language interaction, explanation and narrative richness without controlling authoritative state.

### 16.5 Living Non-Player World

Non-player actors pursue independent strategies and create developments that matter even when the player does not interact with them directly.

### 16.6 Scenario Reusability

A second substantially different scenario can be implemented without rewriting core systems around the assumptions of the first.

### 16.7 Understandable Causality

The player can identify the major reasons for success, failure, opposition and systemic change.

### 16.8 Meaningful Non-Military Play

Political, economic, diplomatic and internal-development strategies are capable of producing major campaign outcomes.

---

## 17. Design Goals

### DG-VIS-001 – Emergent History

The game should generate new historical developments through interacting systems rather than relying primarily on predefined branches.

### DG-VIS-002 – Transformative Agency

The player should be able to reshape states, institutions, ideologies and societies through sustained strategic action.

### DG-VIS-003 – Plausible Resistance

The world should evaluate and resist player intentions according to political, economic, social, military and diplomatic conditions.

### DG-VIS-004 – Systemic Stability

Authoritative state and outcomes should be governed by coherent simulation rules rather than narrative improvisation.

### DG-VIS-005 – Optional Intelligence

AI should improve usability and narrative depth while remaining replaceable, cost-aware and non-authoritative.

### DG-VIS-006 – Scenario Reusability

Core systems should support multiple historical, alternate and fictional scenarios without scenario-specific engine hardcoding.

---

## 18. Requirements

### REQ-VIS-001 – Scenario-Driven Engine

**Statement:** The engine MUST separate generic simulation systems from scenario-specific content.

**Rationale:** The project must support settings beyond the first Kaiserreich scenario.

**Verification:** A scenario architecture review confirms that scenario entities and events are loaded through scenario packages rather than required by core engine code.

**Status:** Accepted

### REQ-VIS-002 – Simulation Authority

**Statement:** Authoritative game-state changes MUST be resolved by validated simulation systems and MUST NOT be silently created by narrative AI.

**Rationale:** Mechanical consistency is fundamental to player trust and reproducibility.

**Verification:** Integration tests confirm that AI output can only create proposals which pass validation before state mutation.

**Status:** Accepted

### REQ-VIS-003 – Offline Core Gameplay

**Statement:** Every core gameplay feature MUST remain functional without an LLM or remote AI service.

**Rationale:** The product is offline-first and must not depend on recurring external inference.

**Verification:** An automated or manual offline-mode campaign test covers all core systems.

**Status:** Accepted

### REQ-VIS-004 – Political Transformation

**Statement:** The player MUST be able to pursue systemic political and institutional transformation through gameplay mechanics rather than only through predefined events.

**Rationale:** Transformative political agency is central to the product identity.

**Verification:** Game-design tests demonstrate at least one non-scripted institutional transformation produced through generic systems.

**Status:** Accepted

### REQ-VIS-005 – Consequential Freedom

**Statement:** Unusual player actions MUST be evaluated for validity, cost, support, time, risk and consequences before resolution.

**Rationale:** Sandbox freedom must remain believable and strategically meaningful.

**Verification:** Action-validation tests cover rejection, partial success, delayed resolution and unintended consequences.

**Status:** Accepted

### REQ-VIS-006 – Multiple Interaction Modes

**Statement:** Core gameplay MUST provide structured non-chat interfaces, while natural-language input MAY supplement them.

**Rationale:** The game must not reduce play to prompting.

**Verification:** UI acceptance tests confirm that standard strategic actions can be completed without conversational input.

**Status:** Accepted

### REQ-VIS-007 – Independent World Actors

**Statement:** Non-player political entities MUST be capable of pursuing independent goals and reacting to systemic conditions without requiring direct player interaction.

**Rationale:** The world must remain active and credible beyond the player's immediate sphere.

**Verification:** Simulation tests demonstrate autonomous reforms, diplomacy, conflict or strategic realignment by non-player actors.

**Status:** Accepted

### REQ-VIS-008 – Persistent Consequences

**Statement:** Major political, economic, diplomatic and military outcomes MUST produce persistent simulation-state changes that affect future gameplay.

**Rationale:** Historical transformation must exist mechanically rather than only narratively.

**Verification:** Save-and-reload tests confirm persistence and downstream effects of major state changes.

**Status:** Accepted

### REQ-VIS-009 – Strategic Diversity

**Statement:** The game MUST support viable non-military paths to major strategic influence and campaign success.

**Rationale:** The project must not collapse into a conquest-only strategy game.

**Verification:** Balance and campaign tests demonstrate meaningful political, diplomatic or economic success without large-scale territorial expansion.

**Status:** Accepted

### REQ-VIS-010 – Explainable Outcomes

**Statement:** The player MUST receive sufficient feedback to understand the principal causes, requirements and consequences of major actions and outcomes.

**Rationale:** Deep simulation remains playable only when its causality is legible.

**Verification:** UX tests confirm that players can identify the main reasons for representative successes and failures.

**Status:** Accepted

---

## 19. Evaluation Rule for Future Work

Every major proposed feature should be evaluated against the following questions:

1. Does it create or strengthen meaningful strategic decisions?
2. Does it support emergent rather than exclusively scripted outcomes?
3. Does it increase transformative player agency without removing resistance or consequence?
4. Does it preserve simulation authority?
5. Does it remain usable without an LLM?
6. Does it avoid scenario-specific engine hardcoding?
7. Does it make the world more active, understandable or reusable?
8. Is its complexity justified by player-facing depth?

A feature that fails several of these questions should be redesigned, narrowed or rejected even when it is individually interesting.

---

## 20. Open Questions

The following questions require dedicated documents and do not block this vision:

- What is the precise player role across different political systems?
- What constitutes campaign success, continuation or conclusion?
- How are structured, configurable and free-form actions unified?
- How much military detail belongs in the core experience?
- How are political entities below and above the country level represented?
- How should delegation and automation preserve player agency?
- Which minimum systems define the first playable vertical slice?
- What final name should identify the game and what separate name, if any, should identify the engine?

These questions must be resolved through subsequent Project Bible documents rather than silently embedded in implementation.

---

## 21. Related Future Documents

This vision should be elaborated by:

- `PB-003 – Design Philosophy`,
- `PB-004 – Naming & Terminology`,
- `GD-100 – Core Gameplay Loop`,
- a dedicated Player Role document,
- system documents for politics, economy, diplomacy, military and sandbox actions,
- `TECH-100 – Engine Architecture`.

These documents may refine implementation and scope, but they must remain consistent with the product identity and boundaries defined here.

---

## 22. Decisions and Change History

### Version 1.2.0 – 2026-08-17

Operationalized AD-016 by identifying PB-002 as the normative home of product vision, product goals, product target requirements and product success requirements, and by classifying the project-identity restatement and translated manifesto summary without changing their meaning.

### Version 1.1.0 – 2026-08-16

- Classified unavailable migration sources as `historical_evidence` with provenance for GOV-B-012.
- Removed CTX-000 as a normative dependency in accordance with AD-009.

### Version 1.0.0 – 2026-08-05

- Established the canonical product vision.
- Defined Emergent History as the preferred product concept.
- Confirmed the four mandatory product pillars.
- Confirmed scenario independence and Kaiserreich as the first scenario only.
- Confirmed simulation authority and optional AI.
- Defined offline-first, interaction, political-transformation and strategic-diversity requirements.
- Superseded earlier non-canonical vision drafts as authoritative guidance.
