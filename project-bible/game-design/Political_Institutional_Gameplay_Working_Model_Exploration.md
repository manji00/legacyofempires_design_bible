# Political / Institutional Gameplay Working Model — Design Exploration

> **Authority boundary — NON-CANONICAL DESIGN EXPLORATION.** This mutable note captures a working model, not an accepted gameplay contract. It is not Architecture Decision evidence, Governance authority, WP-008 closure evidence, approval evidence, or a replacement for GD-100. Detail does not imply acceptance. Every concept remains subject to change through concrete gameplay testing.

## 1. Reading status

This note distinguishes three confidence levels:

- **Strong working assumption** — promising current direction to stress-test, not a decision.
- **Tentative model** — useful structure whose shape or semantics may change.
- **OPEN** — unresolved; alternatives and questions are deliberately preserved.

Examples illustrate possibilities only. They do not create hardcoded government rules, schemas, enums, taxonomies, numeric balance, or implementation requirements. Capitalized working terms are compatible drafting language, not newly canonized terminology. GD-100 remains the gameplay-contract source; this note only explores possible later political-system design beneath it.

## 2. State as an institutional configuration

**Strong working assumption:** mechanically, a state is not primarily a predefined government type. It is a historically developed configuration of interconnected institutional Modules, Institutions, Actors, Authority distributions, capabilities, constraints, Policies, and Relations.

> A government form should not primarily be a bundle of modifiers. It should be a different topology of political problems.

Government forms should move difficulty to different parts of a process rather than merely be easier or harder. A parliamentary system might emphasize coalition building and legislative majorities; a monarchy might permit fast formal decisions while depending on court, elite, dynastic, regional, or traditional structures; a military regime might combine coercive Control with civil-administration, legitimacy, elite-loyalty, or institutionalization problems; and a federal system might distribute meaningful Authority territorially. These are conceptual possibilities, **not government-type rules**.

No political configuration should be permanently final.

## 3. Modules, configurations, features, and Policies

### 3.1 Modules

**Strong working assumption:** a Module is a gameplay capability package that creates or configures gameplay structure, not merely statistical bonuses. It may potentially provide or configure:

- Institutions and Actors;
- Actions and Projects;
- Policies, rules, constraints, and capacities;
- Authority;
- interactions and features;
- connections / Relations;
- UI and player-interaction surfaces;
- possible module slots or compatibility relationships.

**Tentative model:** `Generic Module → Configuration → Historical Variant`. This hierarchy appears promising for scenario creation and modding. Historical variants should preferably configure reusable generic systems rather than require unique hardcoded mechanics. Modules themselves may be parameterized.

### 3.2 Boundary between concepts

**OPEN:** the exact Module Family / Configuration / Feature / Policy boundary.

Current working distinction:

- **Module Family:** broad institutional capability/gameplay family, such as Parliament.
- **Configuration:** structural characteristics such as structure, composition, representation, selection or appointment, chamber organization, Authority distribution, and institutional constraints.
- **Feature:** a capability or institutional mechanism within a configured Module, potentially a Committee System, Amendment Procedure, or Confidence Vote.
- **Policy:** a persistent rule or state affecting simulation behavior.

The exploratory shorthand `Policy = Stats + Rules + Unlocks + Constraints` is **not a final schema**. Concrete Parliament examples must test the Configuration → Feature → Policy boundary.

## 4. Institutions and institutional networks

**Tentative model:** Modules generate or configure gameplay structure; Institutions are persistent entities within it. Actors may occupy, influence, control, support, oppose, or interact with Institutions. Institutional reform would substantially change Authority, capabilities, constraints, relationships, composition, access/Control, and perhaps institutional Actors—not merely abstract national statistics.

**Tentative UI/world-model direction:** navigate through functional areas or tabs while showing the state's actual institutional networks within them. Institutions and Actors form nodes; Relations form connections. The network emerges from configured Modules rather than fixed `Crown` or `President` slots. It need not be a literal or fixed skill tree, and the exact UI is **OPEN**.

Conceptual illustrations only:

```text
       CROWN
      /  |  \
   ARMY GOVT CHURCH
          |
      PARLIAMENT
       /      \
 INDUSTRY   REGIONS

      PRESIDENT
      /   |    \
 CABINET ARMY AGENCIES
          |
       CONGRESS
       /      \
    SENATE   HOUSE

     MILITARY JUNTA
      /      |      \
   ARMY  GOVERNMENT SECURITY
             |
    CIVIL ADMINISTRATION
```

These diagrams are not accepted layouts or schemas.

## 5. Actors

**Tentative model:** Actors are independent political entities. Possible examples include individuals, office holders, monarchs, generals, faction leaders, political blocs, aristocracy, agrarians, the middle class, organized labour, industrial interests, feminist movements, religious groups, regional elites, and military factions.

The Actor taxonomy is **OPEN**. Expected concerns currently include identity, interests, preferences/ideology, resources/influence, institutional presence, Relations, Support targets, organization, and capabilities/Actions. Actors can change and may emerge historically rather than all existing at scenario start.

> Historical plausibility determines the starting position and resistance — not the allowed future.

Unconventional politics should be mechanically possible when the player creates the necessary institutional, social, technological, organizational, and political conditions.

## 6. Tentative political gameplay primitives

The current primitives to stress-test are **Authority, Support, Legitimacy, Capacity, and Control / Access**. Relations connect the entities over which those concepts operate. This is not a complete or permanent political engine.

Working shorthand:

- **Authority:** I am allowed to do it.
- **Support:** relevant Actors are willing to help, accept, or back a target.
- **Legitimacy:** the political order recognizes this exercise of power as rightful.
- **Capacity:** the Institution can actually perform it.
- **Control / Access:** de-facto ability to reach, direct, or use relevant Institutions or resources.

### 6.1 Support

**Strong working assumption:** Support requires a target. Avoid one global `Agrarians: Support Government = 63` value. An Actor can simultaneously hold different attitudes toward a Government, Head of Government, Project, Policy, Institution, Regime, War, Reform, or another Actor.

Conceptual values only:

```text
Agrarians
Government             42
Prime Minister          67
Income Tax Reform       15
Tariff Reform           91
Monarchy                72
Current Constitution    58
War                     20
```

The dimensions, values, and storage versus dynamic calculation are **OPEN**. Actors/blocs should be inspectable. A player might inspect Upper House blocs when approval is unlikely, then potentially Negotiate Compromise, Meet Faction Leader, Modify Proposal, Offer Concession, Delay Vote, Mobilize Public Support, or seek another Institution's intervention. These are unfinalized Action examples.

### 6.2 Legitimacy

**Strong working distinction:** Authority asks, “Who is institutionally entitled to perform this act?” Legitimacy asks, “To what extent is the exercise of this power, by this institution, in this manner, accepted as rightful?” Legitimacy is distinct from Support: a decision may be legitimate but unpopular, popular but institutionally illegitimate, both, or neither. It should not collapse into a percentage bonus to Project success.

Possible sources—Parliamentary Approval, Constitutional Procedure, Electoral Mandate, Crown Assent, Dynastic Authority, Traditional Order, Aristocratic Consent, and Institutional Acceptance—are examples, not a taxonomy.

**Tentative model: Legitimacy Gap.** Transformation may weaken old sources before new ones are established. A monarchy moving toward representation might weaken Dynastic Authority, Aristocratic Consent, and Traditional Order while Electoral Mandate, Representative Trust, Constitutional Tradition, and Institutional Acceptance remain weak. Building the new order could require Projects such as Establish Regional Representation, Create Electoral Administration, Draft Constitutional Settlement, Integrate Provincial Elites, Establish Parliamentary Procedure, or Expand Franchise, and Actions such as negotiating with nobility, addressing Parliament, seeking religious endorsement, calling elections, or compromising with regional estates. None is finalized.

### 6.3 Capacity

**Tentative model:** Capacity asks, “How much of a particular kind of state action can this institution actually perform?” It is not intended as ordinary spend-and-refill mana, but is closer to a pool, institutional condition, or operational capability. Low Capacity might reduce throughput, slow Projects, degrade implementation, increase overload/failure/distortion, limit simultaneous work, or create administrative bottlenecks. Exact representation and behavior remain **OPEN**.

### 6.4 Control / Access

**Strong working distinction:** formal Authority and de-facto power are separate. An Actor without formal Authority may have enough Control to attempt an unauthorized act. A General might have no Formal Executive Authority but high Control of the Army and Capital Garrison and medium Control of the Security Service, making `Seize Executive Power` available. This is not a finalized coup system.

> Unauthorized ≠ Impossible ≠ Automatically Bad.

Authority determines the institutional path, not the outcome. Support, Legitimacy, Capacity, Control, and wider world conditions shape consequences.

### 6.5 Relations

**Strong working correction:** Relations are graph edges, not another political resource. Conceptual examples:

```text
Actor       ─ SUPPORTS   ─ Project
Actor       ─ CONTROLS   ─ Institution
Institution ─ APPOINTS   ─ Actor
Institution ─ OVERSEES   ─ Institution
Institution ─ AUTHORIZES ─ Project
Actor       ─ MEMBER_OF  ─ Institution
Institution ─ IMPLEMENTS ─ Policy
```

The Relation taxonomy is **OPEN**.

## 7. Authority working model — next major focus

**Tentative definition:** Authority is the institutionally grounded ability or entitlement to perform a particular step within a state process.

```text
Authority = Domain × Function × Scope

resolved through Holder, Path, Conditions, and Contestation
```

- **Domain** asks what subject is decided. Possible examples: Legislation, Taxation, Budget, Public Spending, Appointments, Administration, Military, Mobilization, War, Internal Security, Foreign Affairs, Treaties, Trade, Justice, Constitutional Order, Territorial Governance, Local Government, Succession, Elections.
- **Function** asks which part of a decision process may be performed. Possible examples: Initiate, Propose, Consult, Amend, Approve, Assent, Veto, Appoint, Direct, Execute, Oversee, Review, Block.
- **Scope** asks where or over what Authority applies. Possible examples: national, regional, local, institutional, territorial, a military formation, or a particular jurisdiction.

All lists and the final Scope system are **OPEN**, not enums or schemas.

### 7.1 Authority Path

**Strong working assumption:** a Project should ordinarily declare abstract Authority Requirements rather than hardcode an Institution. The current State Configuration resolves them into a concrete Authority Path.

```text
PROJECT: Introduce National Income Tax

Required Authority:
TAXATION.INITIATE
TAXATION.APPROVE
TAXATION.EXECUTE

Possible resolution in one constitutional structure:
Government              → INITIATE
Lower House             → APPROVE
Upper House             → APPROVE
Crown                   → ASSENT
Revenue Administration  → EXECUTE
```

Another state can resolve the equivalent Project through a different path. This is intended to make reusable Project concepts possible across unlike historical or fictional systems.

### 7.2 Cases to explore

- **Granted Authority:** an Institution clearly possesses relevant Authority.
- **Shared Authority:** multiple Institutions perform different required functions.
- **Contested Authority:** Institutions or Actors claim incompatible Authority over the same Domain/Function/Scope.
- **Exercised Without Authority:** an Actor or Institution acts through Control/de-facto power rather than recognized formal Authority.

These are exploratory cases, not a finalized enum.

### 7.3 Violation and consequences

**Strong working assumption:** an unauthorized act should not be automatically blocked. With sufficient Control, Support, Capacity, or other conditions, it may succeed operationally. Consequences should emerge from world state, not a universal `Illegitimate Action: -30` modifier.

Possible consequences include Institutional Resistance, Parliamentary Crisis, Elite Defection, Regional Non-Compliance, Judicial Challenge, Public Protest, Tax Resistance, Radicalization, military fracture, administrative breakdown, or foreign non-recognition. They are examples only. A formally legitimate action can also fail or be disastrous.

## 8. Actions, Projects, and Policies

### 8.1 Actions

**Tentative distinction:** Actions are relatively immediate interventions, such as Give Speech, Meet Faction Leader, Negotiate Compromise, or Delay Vote. They may affect Support, Relations, Project conditions, Actor behavior, Legitimacy, Control, or short-term circumstances. Exact timing and mechanics are **OPEN**.

> Prefer world state instead of cooldown where the world can naturally explain why an Action is unavailable or ineffective.

### 8.2 Projects

**Strong working direction:** Projects are likely central, longer-running political/state processes through which the player tries to change the world—not traditional quests. Potential concerns are Goal, Owner, Authority Requirements, Support, Legitimacy, Capacity, Control/Access, Resources, Time, Opposition, Risks, Implementation, Reactions, Outcomes, and Consequences. They may be the main means of developing, reforming, restructuring, or redirecting the state. Concrete gameplay must test this model.

### 8.3 Policies

**Tentative model:** Policies are persistent rules or conditions that modify simulation behavior, potentially through Stats, Rules, Unlocks, or Constraints, and may enable or disable Actions or Projects. Exact semantics are **OPEN**.

## 9. Regime change as a new situation

**Strong working direction:** regime change is not an end-state reward; it creates a new political situation.

```text
Action: Seize Executive Power

Control of Executive: HIGH
Formal Authority:     UNCERTAIN / CONTESTED
Legitimacy:           LOW / TRANSITIONAL
```

A subsequent `Consolidate New Regime` Project might confront civil administration, regional compliance, rival commanders, a legal basis, government formation, elite recognition, treasury Control, tax collection, and foreign recognition. These are exploratory sub-problems.

> The new game begins with the regime change.

No configuration should be permanently final. Victory, defeat, and scenario completion remain **OPEN**.

## 10. Historical flexibility and knowledge

Historical plausibility should determine starting structures, available knowledge, existing Actors and Institutions, resistance, costs, organizational capability, and social conditions—not impose a hard wall on development. The game should ask, “How could you actually create this outcome from the institutional and social conditions of this period?” rather than “Is alternative history enabled?”

At a high level, technology/knowledge should influence which Institutions, administrative methods, political organizations, capabilities, Policies, Actions, Projects, or Configurations are achievable. A player may express priorities and provide resources instead of manually “researching” every institutional concept. Detailed mechanics and any technology tree are **OPEN** and outside this note.

## 11. Explicitly unresolved questions

### 11.1 Government type

- **Fully emergent:** no required government-type object; labels such as Constitutional Monarchy describe the actual configuration.
- **Archetype / Configuration:** archetypes supply default Modules, Institutions, Authority distributions, compatibility rules, and so on.
- **Hybrid:** a historical/generic archetype initializes a configuration that can evolve far beyond it.

There is tentative interest in Hybrid, but **no alternative is decided**.

### 11.2 Regions / territory

It is **OPEN** whether a Region is primarily a Territorial Entity, Institutional Scope, Actor Container, Administrative Unit, Political Actor, Module Host, or a combination. Authority should remain capable of territorial Scope later without fixing this model now.

### 11.3 Long timespan, victory, and loss

Scenario victory and loss conditions, metric objectives, infinity/sandbox mode, extreme timespans, and whether one architecture can support ancient, early-modern, modern, future, or extremely long speculative scenarios are **OPEN**. This note sets no timeline limits or promises.

### 11.4 Other open model boundaries

Actor and Relation taxonomies; Support storage versus calculation; Capacity; final Domain, Function, and Scope lists; Configuration/Feature/Policy separation; exact UI; Action duration; Policy semantics; complete political primitives; and implementation schemas all remain **OPEN**.

## 12. LLM boundary inherited from GD-100

The political game must remain playable and strategically meaningful without an LLM. An LLM may propose, interpret, summarize, explain, or express. It receives no independent gameplay Authority and cannot directly mutate authoritative Game State. This note does not alter GD-100's boundary.

## 13. Working principles checklist

All of these remain working principles pending stress testing:

1. A state is a historically developed institutional configuration, not merely a predefined government type.
2. Modules primarily change behavior and gameplay, not merely statistics.
3. Government forms move political problems to different process stages rather than simply changing difficulty.
4. Projects request abstract Authority rather than hardcoded Institutions.
5. State Configuration determines the concrete Authority Path.
6. Authority determines the institutional path, not the outcome.
7. Formal Authority and de-facto Control are separate.
8. Support requires a target.
9. Legitimacy and Support are distinct.
10. Capacity represents actual institutional ability to perform state action.
11. Relations connect entities; they are not another political resource.
12. Historical plausibility determines starting conditions and resistance, not the allowed future.
13. Unauthorized does not mean impossible.
14. Regime change creates the next political problem rather than ending political gameplay.
15. Prefer world-state consequences to arbitrary universal modifiers or cooldowns.
16. The game remains strategically meaningful without an LLM.
17. No political configuration is permanently final.
18. This model remains exploratory until concrete gameplay exercises validate it.

## 14. Promotion boundary

Future testing may support, revise, divide, or reject any part of this note. Accepted findings must be deliberately migrated into an appropriately authorized gameplay document through the repository's normal process. Committing this note, referencing it, or using it in an exercise supplies no approval, Architecture Decision, WP-008 closure, or canonical authority.
