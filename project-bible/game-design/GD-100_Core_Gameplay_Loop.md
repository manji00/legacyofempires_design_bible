---
document_id: GD-100
title: Core Gameplay Loop
version: 0.1.0
status: Draft
category: Game Design
created: 2026-08-25
updated: 2026-08-25
owners:
  - Project Lead
reviewers: []
audience:
  - Designers
  - Developers
  - AI Assistants
  - Testers
source_of_truth: true
supersedes: []
superseded_by: null
depends_on:
  - reference_type: canonical
    target: PB-001
  - reference_type: canonical
    target: PB-002
  - reference_type: canonical
    target: PB-003
related_documents:
  - reference_type: canonical
    target: PB-000
  - reference_type: canonical
    target: PB-997
  - reference_type: canonical
    target: PB-998
  - reference_type: planned
    target: GD-101
  - reference_type: planned
    target: GD-102
  - reference_type: planned
    target: GD-130
systems:
  - SYS-SIMULATION
  - SYS-SANDBOX
  - SYS-NARRATIVE
requirements:
  - REQ-GD-100-001
  - REQ-GD-100-002
  - REQ-GD-100-003
  - REQ-GD-100-004
  - REQ-GD-100-005
  - REQ-GD-100-006
  - REQ-GD-100-007
  - REQ-GD-100-008
design_goals:
  - DG-GD-100-001
  - DG-GD-100-002
  - DG-GD-100-003
  - DG-GD-100-004
architecture_decisions:
  - AD-008
tags:
  - core-gameplay
  - player-agency
  - autonomous-world
  - delegation
  - information
  - causality
  - offline-first
canonical_path: project-bible/game-design/GD-100_Core_Gameplay_Loop.md
context_priority: critical
---

# GD-100 – Core Gameplay Loop

## 1. Purpose and authority

GD-100 answers the mechanical question: **what does the player actually do?** It defines the common experience contract that every later gameplay system must implement. It prevents politics, economy, population, diplomacy, military, intelligence, characters, AI, narrative and LLM interaction from silently assuming incompatible games.

This Draft is subordinate to the project identity, product vision and design philosophy owned by PB-001, PB-002 and PB-003. PB-001's four project pillars remain unchanged. The hierarchy is:

```text
PB-001 project pillars
  → GD-100 core gameplay principles and invariants
    → later system-specific design rules
```

PB-004 version 1.0.3 remains a `Review` baseline. This document uses compatible terms such as `World`, `Game State`, `Proposal`, `Action`, `Execution` and `Project` for clarity, but neither cites PB-004 as authority nor promotes its terminology. Accepted AD-008 is the binding authority for the Proposal boundary.

## 2. Scope

GD-100 defines:

- the core experience and gameplay-level player fantasy;
- strategic perspective, minute-to-minute activity and decision cadence;
- the recurring loop from assessment through adaptation;
- boundaries among player agency, autonomous simulation and narrative;
- pressure, uncertainty, delegation, failure, feedback and causality contracts;
- gameplay-level Action, Proposal and LLM boundaries;
- constraints and questions delegated to later design work.

It is a gameplay contract, not an implementation architecture or universal data schema.

## 3. Core gameplay non-goals

GD-100 does **not** decide:

- the final playable Political Entity or player-role taxonomy (GD-101);
- exact time architecture, tick model, simulation frequency or multiplayer cadence;
- complete Proposal, Action, Execution or Project semantics and schemas (GD-102);
- a complete World State or persistence schema;
- economic, population or political formulas;
- military resolution or diplomatic negotiation protocols;
- Strategic AI or delegation architecture;
- savegame or LLM runtime architecture;
- UI screens, layouts, providers, prompts or numeric balance values.

Examples in this document prove reuse of the loop. They do not establish undisclosed domain rules, fixed currencies, thresholds or guaranteed outcomes.

## 4. Core experience

### 4.1 Gameplay-level player fantasy

The player exercises limited strategic leadership over a political order under pressure. The player interprets an imperfectly known situation, chooses what matters, mobilizes finite means, authorizes consequential initiatives and remains responsible for adapting when institutions, actors and systems produce resistance or unintended results.

The fantasy is not omnipotent nation editing. Power is expressed through priorities, commitments, policies, institutions, relationships and delegation. The final taxonomy of who or what embodies that leadership is deliberately left to GD-101.

### 4.2 Strategic perspective

The player works primarily at strategic rather than routine-execution level. Individual choices matter because they alter priorities, bind capacity, expose political risk, create projects or change how autonomous systems behave. Routine activity may continue without input; strategically significant exceptions return to the player.

Legacy of Empires is therefore not primarily a game of issuing isolated commands. A command is meaningful only within an evolving situation: why it is chosen, what it displaces, how it is implemented, who reacts and how the player revises the plan.

### 4.3 Core gameplay principles

1. **Strategic transformation:** play concerns persistent political, social, economic and international change, not only temporary bonuses.
2. **Limited leadership:** player intent is powerful but mediated by authority, resources, institutions, time and autonomous actors.
3. **Causal emergence:** systemic resolution creates history; narrative communicates that history without replacing its causes.
4. **Consequential commitment:** significant initiatives entail cost, risk, delay or opportunity cost and can invite reaction.
5. **Informed uncertainty:** incomplete knowledge creates decisions; poor explanation must not masquerade as difficulty.
6. **Depth without routine micromanagement:** the player owns strategy and escalation boundaries while routine execution can be delegated.
7. **Authoritative simulation:** validated systems resolve state changes; LLM support is optional and non-authoritative.

## 5. The core gameplay loop

The recurring loop is:

```text
UNDERSTAND
  → PRIORITIZE
  → COMMIT
  → RESOLVE OVER TIME
  → OBSERVE REACTION
  → UNDERSTAND CONSEQUENCES
  → ADAPT
  ↺
```

These stages describe player attention and decision flow, not mandatory screens, turns or simulation ticks. Stages may overlap: a new crisis can demand renewed understanding while another initiative continues to resolve.

### 5.1 Understand

| Contract aspect | Definition |
|---|---|
| What happens | The player reads the strategic situation, investigates alerts and trends, inspects actors, institutions, commitments and relevant causal history. |
| Player decision | Decide what to inspect, which reports to trust, which uncertainty matters and whether intervention is warranted. |
| Simulation role | Continue applicable world processes and expose observations permitted by the information model. It does not wait for exhaustive player inspection. |
| Available information | Known facts, incomplete reports, estimates, delayed observations, acknowledged gaps and interpretations, each distinguished where relevant. |
| Uncertainty | Hidden interests, stale reports, limited intelligence, model uncertainty and future actor choices. |
| Cost or risk | Attention, delay before intervention and the possibility of acting on a mistaken interpretation. Information acquisition may later have domain-specific costs. |
| Connection | Understanding identifies competing problems and opportunities that require prioritization. |

### 5.2 Prioritize

| Contract aspect | Definition |
|---|---|
| What happens | The player compares objectives and decides which deserve scarce resources, political effort, institutional attention or tolerance for risk. |
| Player decision | Set strategic intent, select priorities, defer alternatives, establish budgets or policies, and choose what to delegate or escalate. |
| Simulation role | Present relevant constraints, current commitments and foreseeable interactions without choosing the player's strategy. |
| Available information | Expected costs, plausible effects, capacity constraints, support and opposition, time exposure and confidence ranges appropriate to current knowledge. |
| Uncertainty | Competing forecasts, uncertain implementation, unknown reactions and changing conditions. |
| Cost or risk | Opportunity cost: supporting one objective can weaken, delay or preclude another. |
| Connection | Priorities become meaningful only when translated into a configured and authorized commitment. |

### 5.3 Commit

| Contract aspect | Definition |
|---|---|
| What happens | The player configures, initiates or approves a meaningful Action or Proposal and accepts its commitments. This may be direct intervention or a longer-running Project. |
| Player decision | Choose goal, scope and permitted means; allocate applicable resources or capacity; set delegation and escalation boundaries; accept, revise or abandon the exposed risks. |
| Simulation role | Validate authority, prerequisites, costs and conflicts. Invalid intent is explained or returned for revision; a Proposal alone changes no authoritative Game State. |
| Available information | Known requirements, quoted commitments, expected duration or time exposure, visible resistance, uncertainty and predicted side effects at an appropriate confidence level. |
| Uncertainty | Validation cannot guarantee implementation, actor cooperation, future conditions or final outcome. |
| Cost or risk | Committed means become unavailable or constrained; the initiative creates exposure to resistance, delay and external reaction. |
| Connection | A validated, authorized commitment enters immediate Execution or an ongoing Project resolved by authoritative systems. |

At gameplay level, the boundary is:

```text
PLAYER INTENT
  → ACTION OR PROPOSAL
  → VALIDATION
  → COMMITMENT
  → EXECUTION OR PROJECT
  → RESULT
```

This is not a complete schema. GD-102 must define the detailed semantics.

### 5.4 Resolve over time

| Contract aspect | Definition |
|---|---|
| What happens | The player permits time to progress while immediate Actions resolve and Projects advance, stall, change or complete. |
| Player decision | Continue, pause when supported, redirect attention, intervene at meaningful checkpoints or accept continued exposure. |
| Simulation role | Advance economic, political, institutional and foreign activity; process commitments; apply validated resolution; preserve causality. |
| Available information | Progress, resource use, changed forecasts, significant blockers and intervention opportunities, subject to information visibility and delay. |
| Uncertainty | Future conditions, implementation performance, actor decisions, controlled stochastic effects and incomplete reporting. |
| Cost or risk | Time itself, ongoing resource use, locked capacity, accumulating opposition and missed opportunities elsewhere. |
| Connection | Resolution changes what autonomous actors can observe and how they respond. |

No tick length, pause model, calendar scale or exact update frequency is established here.

### 5.5 Observe reaction

| Contract aspect | Definition |
|---|---|
| What happens | Institutions, political actors, economic systems, foreign actors and crises respond to the commitment and to one another. |
| Player decision | Decide which reactions are tolerable, which require intervention and whether the original priority remains viable. |
| Simulation role | Let actors pursue interests and institutions implement, support, resist, delay or distort according to later system rules. |
| Available information | Observable reactions, reports, warnings and changes; motives may remain estimated or hidden. |
| Uncertainty | Actor intent, indirect effects, concealed coordination and delayed observation. |
| Cost or risk | Escalation, loss of support, resource disruption, diplomatic exposure or diversion of attention. |
| Connection | Reactions produce outcomes whose changes and causes must be made intelligible. |

### 5.6 Understand consequences

| Contract aspect | Definition |
|---|---|
| What happens | The player reviews what changed, how the initiative performed and which direct, indirect or delayed effects now matter. |
| Player decision | Judge success against intent, identify trade-offs and decide whether current information justifies a new response. |
| Simulation role | Record authoritative results and expose permitted causal explanations, including important contributing factors and uncertainty. Narrative may express, but not invent, those results. |
| Available information | State changes, result status, relevant causes, contributing factors and prior decisions, limited separately by legitimate visibility rules. |
| Uncertainty | Some causes or consequences can remain unknown, disputed, estimated or not yet observed. |
| Cost or risk | Misattribution can prompt a poor follow-up; delayed consequences can reverse an initially favorable assessment. |
| Connection | Consequence assessment turns the changed world into a revised strategy. |

### 5.7 Adapt

| Contract aspect | Definition |
|---|---|
| What happens | The player revises goals, budgets, policies, Projects, delegation or risk tolerance in response to the new situation. |
| Player decision | Continue, reinforce, renegotiate, scale back, cancel where possible, compensate, exploit an opportunity or select a different objective. |
| Simulation role | Preserve prior consequences, validate the new intent and continue autonomous world development. Adaptation does not erase costs already incurred. |
| Available information | Updated situation and causal record, current commitments, new options and remaining uncertainty. |
| Uncertainty | Adaptation creates its own reactions and cannot restore a known future. |
| Cost or risk | Sunk costs, credibility loss, further commitments and abandonment of other priorities. |
| Connection | The adapted world and strategy begin the next Understand stage. |

## 6. What the player does minute to minute

The player's active play alternates among these mechanical activities:

1. read the strategic situation through available map, report, alert and summary views;
2. inspect causal information behind a change instead of reacting only to a headline value;
3. compare competing objectives, forecasts, commitments and opportunity costs;
4. allocate scarce material resources, budgets, political support or institutional capacity where the relevant system permits;
5. configure an initiative's objective, scope, means, constraints and escalation conditions;
6. choose between a direct Action and a longer-term Project without assuming either guarantees an outcome;
7. validate and commit, knowingly accepting disclosed costs, risks and uncertainty;
8. delegate routine areas through goals, priorities, budgets, policies and intervention thresholds;
9. advance time while monitoring ongoing commitments rather than repeatedly issuing maintenance commands;
10. pause or intervene at strategically meaningful changes, checkpoints or exceptions where the eventual time design permits;
11. respond to support, institutional resistance, implementation delay or distortion;
12. react to economic, social, military or diplomatic consequences and autonomous initiatives;
13. revise strategy, commitments and delegation boundaries.

Healthy play does not require every activity continuously. The essential unit is a reasoned commitment followed by enough world progression and feedback to support a new decision.

## 7. Player agency and autonomous world

### 7.1 Player agency contract

The player:

- sets strategic intent and selects priorities;
- commits applicable resources, support and capacity;
- initiates or approves meaningful Actions and Projects;
- responds to consequences and changes strategy;
- controls what is delegated and the conditions that require escalation.

The player does not:

- write arbitrary authoritative Game State;
- automatically control every institution, actor or subordinate;
- receive guaranteed outcomes from valid intent;
- possess perfect or immediate information;
- manually execute every routine process.

Later systems may vary how agency is mediated, but must not turn strategic intent into unchecked state editing. GD-101 must define the player role and agency model without weakening this boundary.

### 7.2 Autonomous world contract

The World continues to act when the player is observing, committed elsewhere or taking no new action:

- institutions can support, resist, delay or distort implementation;
- political actors pursue interests using their own information and capabilities;
- production, exchange, consumption and other economic processes continue under their later rules;
- foreign actors observe, plan and react;
- crises can emerge from conditions and interactions;
- Projects continue, stall or encounter new conditions over time;
- consequences may appear long after their originating decision.

The simulation must not generate activity merely to keep the player busy. Autonomous behavior must arise from system state, actor objectives, constraints or controlled scenario content and must create observable strategic consequences when relevant.

### 7.3 Agency/world relationship

The player changes the world's direction by selecting leverage and accepting trade-offs, not by suspending autonomy. The world must offer enough resistance to make leadership meaningful and enough responsiveness that player commitments remain consequential. Neither total player control nor a self-playing simulation satisfies the contract.

## 8. Strategic pressure and trade-offs

Meaningful decisions arise from interacting pressures, not one universal resource:

| Pressure | Gameplay consequence |
|---|---|
| Scarcity | Applicable resources cannot fund every objective. Different domains may represent scarcity differently. |
| Opportunity cost | Selecting, staffing or funding one initiative reduces the ability to pursue another. |
| Time | Results can require exposure before benefit; delay can change conditions and close opportunities. |
| Institutional capacity | Formal authority does not imply unlimited administrative or implementation ability. |
| Political support | Commitments can require, consume, build or undermine support among relevant actors. |
| Information uncertainty | Decisions may rely on estimates, incomplete reports or unknown reactions. |
| External reaction | Other actors can counter, exploit, accommodate or escalate in response. |
| Delayed consequences | Costs and benefits can surface after the initiating choice and interact with later decisions. |

Every significant Action must impose at least one meaningful cost, risk, time binding or opportunity cost appropriate to its domain. Later systems must expose enough of these pressures before commitment to support an informed choice without guaranteeing the result.

## 9. Failure as continuing gameplay

Failure is normally a state transition that creates a new decision, not merely a disabled button or terminal screen. Relevant conceptual outcome classes include:

- **rejection:** authorization, acceptance or cooperation is denied;
- **delay:** resolution takes longer while exposure and opportunity costs continue;
- **stalled implementation:** progress stops until conditions or commitments change;
- **partial success:** only part of the intended outcome is achieved;
- **distorted implementation:** execution occurs but institutions or actors alter its practical effect;
- **escalation:** the attempt intensifies conflict, demands or external involvement;
- **costly success:** the intended result occurs with strategically important additional cost;
- **strategic setback:** the resulting situation is worse for the player's broader intent.

These are design categories, not a universal enum. A domain may define different or overlapping outcomes. Failed validation must explain why commitment cannot occur and offer revision when possible; post-commitment failure must ordinarily leave persistent consequences, causal evidence and meaningful responses. Campaign-ending conditions may exist later, but must not replace systemic failure during normal play.

## 10. Information as gameplay

### 10.1 Information classes

Later systems must intentionally distinguish when relevant:

- **known facts:** authoritative observations available to the player;
- **incomplete information:** a report known to omit relevant parts;
- **estimates:** inferred values or outcomes with communicated confidence or basis;
- **delayed information:** observations describing an earlier state;
- **hidden information:** facts not currently available through legitimate player knowledge;
- **interpretation:** an actor, advisor or system's reading of available evidence, not the evidence itself.

A value must not be presented as fact when the gameplay model treats it as an estimate. Delay and uncertainty should matter through decisions, forecasts and reactions rather than through indiscriminate concealment.

### 10.2 Information quality contract

Every later gameplay system must expose enough information to identify available decisions, understand significant constraints and reason about likely consequences. Difficulty must not be created primarily by hiding understandable behavior behind poor interface design.

Unknown information and causal explanation are separate. The system may truthfully explain that an observed outcome involved an unknown or estimated factor without revealing the factor's hidden authoritative value. When legitimate information later becomes available, the causal account may become more precise.

The complete Intelligence design is deferred.

## 11. Delegation

Delegation is a core anti-micromanagement mechanism. The intended division is:

- the player controls goals, priorities, budgets, policies, constraints and escalation boundaries;
- systems, institutions and subordinate actors may handle routine selection and execution within those boundaries.

Delegation does not transfer strategic responsibility or guarantee compliant results. The player must be able to discover:

- what area, authority or routine was delegated;
- which goal, priority, budget, policy and constraint governed it;
- why a significant autonomous decision occurred;
- which uncertainty and limitations applied;
- when and why intervention is requested or required;
- what changed as a consequence.

Healthy delegation reduces repetitive execution while preserving exceptions, trade-offs and revision. Later system documents must state what can be delegated, what cannot, how performance is reported and which conditions escalate. Detailed AI planning and automation architecture are outside this document.

## 12. Action, Proposal and commitment boundary

AD-008 governs this boundary. At gameplay level:

- player intent may select a defined Action or be formalized as a Proposal;
- a Proposal can be reviewed, changed, accepted, rejected or withdrawn before Execution;
- validation determines whether and under what commitments intent can proceed;
- authorization and commitment precede any resulting Execution or Project;
- **a Proposal alone must not mutate authoritative Game State**;
- only authorized system resolution produces authoritative results.

Player intent is therefore broader than available outcomes but not broader than simulation authority. GD-102 must define complete Proposal, Action, Execution and Project semantics, including validation and lifecycle behavior, without collapsing these stages.

## 13. Simulation, narrative and LLM boundary

### 13.1 Simulation and narrative

Simulation establishes state, resolution and causal relationships. Narrative selects and expresses truthful perspectives on those results: reports, dialogue, diplomatic language, headlines, summaries and other presentation. Narrative may highlight, contextualize or interpret; it must not silently replace mechanical causes or create authoritative outcomes.

Narrative interpretation may be partial or biased when represented as such. This does not permit the narrative layer to falsify authoritative state as if it were system resolution.

### 13.2 LLM gameplay contract

**The complete core game must remain playable and strategically meaningful without an LLM.** Every core input, validation, resolution, feedback and explanation function requires a non-LLM path.

An LLM may later support:

- natural-language input and Proposal interpretation;
- diplomatic expression and character dialogue;
- advisor summaries;
- narrative variation;
- explanation based on authorized information.

An LLM may propose, interpret or express. It receives no independent gameplay authority, cannot bypass validation and cannot directly mutate authoritative Game State. Authoritative systems validate and resolve normalized intent. Provider APIs, prompts, context windows, fallback implementation and runtime architecture are deferred.

## 14. Causality and feedback

Every meaningful observed consequence must be explainable enough for strategic reasoning. Subject to legitimate information limits, later systems must expose:

- what changed and when it became observable;
- relevant direct causes;
- important contributing factors;
- uncertainty, estimation or missing knowledge;
- which prior player or autonomous decisions contributed;
- ongoing effects or conditions that may require attention.

Feedback should connect commitment, reaction and consequence across time instead of presenting disconnected modifiers. It may use progressive disclosure: a concise result first, with accessible causal detail for investigation.

Explainability does not grant omniscience. A causal record can contain authoritative hidden factors while player-facing feedback reports only legitimately known effects, confidence and gaps. Narrative output must preserve this visibility boundary.

## 15. Decision cadence

The intended rhythm alternates among observation, strategic intervention, commitment, time progression and reaction. Exact time controls remain unresolved.

A healthy cadence has these qualitative properties:

1. the player regularly receives strategically distinct choices, not repeated maintenance clicks;
2. there is enough observation time to understand change and enough intervention opportunity to influence it;
3. significant commitments have time to expose implementation and reaction before their consequences are judged;
4. the player can advance quiet periods without constant high-frequency manual input;
5. significant changes, exceptions and escalation thresholds can regain attention before routine automation causes unintelligible damage;
6. concurrent Projects create prioritization rather than a demand to supervise every update;
7. waiting alone is not optimal: evolving pressures, reports and decision points require periodic reassessment;
8. rapid manual input is not inherently stronger than sound priorities and delegation.

Later time design must demonstrate these qualities across normal, crisis and high-load situations without treating this list as a prescribed tick or pause model.

## 16. Illustrative gameplay sequences

The following sequences use the same loop. Their actors, costs and outcomes are illustrative, not domain specifications.

### A. Internal political reform

1. **Understand:** Reports show an institution performing poorly, rising public demand for reform and uncertain support among governing actors. The player inspects known performance trends, estimated support and the cause of prior delays.
2. **Prioritize:** The player weighs reform against another initiative competing for administrative attention and political support.
3. **Commit:** The player configures a reform Proposal, limits its scope, allocates applicable capacity and sets an escalation boundary. Validation exposes authority, commitments and opposition; approval creates a Project, not instant reform.
4. **Resolve over time:** The institution prepares implementation while ordinary world activity continues. Progress consumes capacity and new information changes the forecast.
5. **Observe reaction:** Affected actors support, bargain against or resist; an implementing body delays or modifies part of the plan.
6. **Understand consequences:** The player sees partial implementation, improved performance in one area, increased opposition in another and causal links to the chosen scope and institutional resistance.
7. **Adapt:** The player may reinforce the Project, negotiate, accept partial success or redirect capacity. Each option begins a new assessment.

### B. Economic and resource pressure

1. **Understand:** A delayed report confirms a strategic input shortage. The player separates known reserves from estimated future supply and examines which prior commitments increased demand.
2. **Prioritize:** The player compares protecting essential production, seeking alternative supply and preserving resources for a political objective.
3. **Commit:** The player selects a constrained response: immediate allocation changes plus a longer supply-diversification Project. Validation shows cost, capacity and uncertainty.
4. **Resolve over time:** Economic activity continues; inventories, production and the Project evolve under later economic rules.
5. **Observe reaction:** Producers adjust, affected groups exert pressure and external suppliers change terms or pursue their own interests.
6. **Understand consequences:** Essential output stabilizes, another sector contracts and political support changes. Feedback identifies shortage, allocation priority and supplier reaction as contributing factors.
7. **Adapt:** The player revises allocations, changes the Project's scope, compensates an affected area or accepts the trade-off to protect the original objective.

### C. Diplomatic crisis

1. **Understand:** A foreign move creates a crisis. Some facts are confirmed, motives remain interpretations and intelligence about likely partners is incomplete.
2. **Prioritize:** The player weighs deterrence, de-escalation and domestic commitments, recognizing limited diplomatic attention and external risk.
3. **Commit:** The player submits structured terms or chooses a defined diplomatic Action, assigns support and accepts escalation risk. Any natural-language expression is normalized and validated; the Proposal itself changes no state.
4. **Resolve over time:** Authoritative diplomacy systems process responses while other actors reposition and ongoing Projects continue.
5. **Observe reaction:** The counterpart counters or rejects, a third party reacts and domestic institutions signal differing support.
6. **Understand consequences:** The player receives the validated outcome and its visible causes, while legitimately hidden motives remain uncertain rather than invented by narrative.
7. **Adapt:** The player revises terms, assembles support, reduces exposure or accepts a strategic setback and reallocates effort.

## 17. Core gameplay invariants

Later GD documents **must** respect all of these constraints:

1. Meaningful authoritative State Changes require validated, authorized system resolution.
2. Proposal is not Execution; a Proposal alone does not mutate authoritative Game State.
3. Player intent does not guarantee implementation or outcome.
4. Significant Actions impose appropriate cost, risk, time binding or opportunity cost.
5. The World and its actors continue to act and may support, resist, delay, distort or counter player initiatives.
6. Consequences are causally recorded and explained to the extent permitted by player information.
7. Causality explanation and information visibility remain distinct.
8. The complete core gameplay path functions without LLM availability.
9. LLM output has no independent gameplay or State authority.
10. Routine complexity should be delegable while strategic responsibility remains with the player.
11. Information uncertainty is represented intentionally; poor explanation is not a substitute for challenge.
12. Failure normally changes the strategic situation and produces further decisions rather than only preventing input or ending play.
13. Narrative communicates validated simulation outcomes and does not replace their mechanical causes.
14. No gameplay system may depend on constant high-frequency manual input as its principal source of depth.

## 18. Requirements for later gameplay-system documents

Every major gameplay-system GD document must answer, at design-contract level:

| Required question | Required design content |
|---|---|
| State | What state does the system own or influence, and where is authority located? |
| Player information | What facts, estimates, delays, unknowns and interpretations are exposed? |
| Player decisions | Which decisions are meaningful and how do they enter this core loop? |
| Autonomous behavior | Which actors or processes act without player input, and why? |
| Inputs and outputs | What does the system consume, produce and communicate to other systems? |
| Pressure | What costs, scarcity, risk, capacity and opportunity costs make choices meaningful? |
| Time | How do commitments progress, change, stall and surface decision points? |
| Failure | Which pre- and post-commitment failure modes change the situation? |
| Interactions | Which systems constrain or are affected by it, and how are conflicts surfaced? |
| Causality | How are changes, contributing factors, uncertainty and prior decisions explained? |
| Delegation | What routine behavior may be delegated, under which constraints and escalation rules? |
| LLM | Is LLM support present, what is the non-LLM path, and how is authority excluded? |
| Persistence | Which consequences and causal links matter across save/load, without prescribing a schema here? |

Each system must also show how its decisions pass from understanding and prioritization through commitment, resolution, reaction, consequences and adaptation. This table is not a technical schema.

## 19. First strategic-slice validation target

A later first strategic slice must demonstrate the complete loop without an LLM in a small, systemically coherent scenario containing:

- scarce resources and a real opportunity cost;
- an institutional or political objective;
- player configuration and validated commitment;
- time progression without a time architecture being assumed here;
- autonomous resistance or reaction;
- visible, causally intelligible consequences;
- at least one failure or compromised-outcome path that permits adaptation.

Success means a tester can explain what they inspected, why they prioritized one objective, what they committed, how the world reacted, what changed and why they adapted. Map size, factions and numeric values remain outside this target.

## 20. Formal requirements

### REQ-GD-100-001 – Complete recurring loop

**Statement:** Every major gameplay system MUST support or explicitly locate its contribution to Understand → Prioritize → Commit → Resolve over Time → Observe Reaction → Understand Consequences → Adapt.

**Rationale:** Major systems must implement one compatible strategic game.

**Verification:** Design review maps each system document to the seven stages and identifies intentional non-applicable stages.

**Status:** Proposed

### REQ-GD-100-002 – Validated state change

**Statement:** Meaningful authoritative State Changes MUST result from validated and authorized system resolution; a Proposal alone MUST NOT cause them.

**Rationale:** AD-008 separates intent from Execution and protects simulation authority.

**Verification:** Design review and eventual action-flow tests cover rejection, authorization and mutation boundaries.

**Status:** Proposed

### REQ-GD-100-003 – Autonomous continuity

**Statement:** Applicable world processes, actors and Projects MUST continue and react without requiring a player command for every routine step.

**Rationale:** The World is an autonomous strategic environment rather than a passive command target.

**Verification:** Strategic-slice observation demonstrates meaningful non-player progression and reaction.

**Status:** Proposed

### REQ-GD-100-004 – Consequential commitment

**Statement:** Every significant Action MUST carry an appropriate cost, risk, time binding or opportunity cost and MUST NOT guarantee its intended outcome solely because the player selected it.

**Rationale:** Commitment and pressure make prioritization strategically meaningful.

**Verification:** System-design review samples significant Actions and traces pressure, outcome variation and adaptation paths.

**Status:** Proposed

### REQ-GD-100-005 – Information and causality

**Statement:** Player-facing systems MUST distinguish relevant information quality and MUST expose sufficient permitted causal information for reasoned decisions.

**Rationale:** Intentional uncertainty creates gameplay; obscurity does not.

**Verification:** Scenario walkthrough distinguishes facts, estimates and unknowns and reconstructs the permitted causes of a consequence.

**Status:** Proposed

### REQ-GD-100-006 – Delegable routine

**Statement:** Routine execution SHOULD be delegable through player-controlled goals, priorities, budgets, policies, constraints and escalation boundaries where manual handling would add repetition rather than strategy.

**Rationale:** Strategic depth must not depend on routine micromanagement.

**Verification:** Each applicable system document identifies delegation scope, reports and intervention triggers.

**Status:** Proposed

### REQ-GD-100-007 – Non-LLM core path

**Statement:** Every core gameplay input, validation, resolution, feedback and explanation function MUST remain usable without an LLM, and LLM output MUST NOT receive independent gameplay authority.

**Rationale:** PB-001 through PB-003 require optional narrative AI and authoritative simulation.

**Verification:** The first strategic slice completes the loop with LLM support disabled.

**Status:** Proposed

### REQ-GD-100-008 – Productive failure

**Statement:** Normal gameplay failure SHOULD produce a persistent changed situation, an intelligible outcome and at least one meaningful adaptation decision rather than only input denial or termination.

**Rationale:** Setbacks are material for emergent history.

**Verification:** System-design review and strategic-slice tests cover compromised and failed outcomes followed by adaptation.

**Status:** Proposed

## 21. Design goals

- **DG-GD-100-001 – Common experience:** all major systems feel like parts of one strategic loop.
- **DG-GD-100-002 – Consequential agency:** the player can materially redirect the World without total control.
- **DG-GD-100-003 – Legible emergence:** autonomous and delayed consequences remain strategically interpretable.
- **DG-GD-100-004 – Sustainable depth:** delegation and healthy cadence preserve depth without repetitive manual load.

## 22. Open questions and delegated decisions

Only questions affecting immediate downstream design are retained:

1. **Player role (GD-101):** Which playable roles or Political Entities can express this agency contract, and where do their authority boundaries differ?
2. **Intent model (GD-102):** Which distinctions among defined Actions, Proposals, authorization, Execution and Projects are necessary for a consistent player workflow?
3. **Time:** Which time-control and scheduling model satisfies the cadence criteria across normal play and crises without high-frequency input?
4. **Decision surfacing:** Which cross-system rule determines when autonomous developments become alerts, checkpoints or escalation requests?
5. **Multiplayer:** Is multiplayer in scope, and if so, which parts of cadence and pause/intervention behavior require later qualification?
6. **First slice (future GD-130):** Which minimal combination of politics, resources, time and autonomous behavior proves the loop without pre-empting detailed economic or political design?

Detailed state schemas, simulation frequencies and exact economic and military models remain deliberately unresolved. They do not block this core contract.

## 23. Change history

| Version | Date | Status | Change |
|---|---|---|---|
| 0.1.0 | 2026-08-25 | Draft | Initial Core Gameplay Loop contract for WP-008. |
