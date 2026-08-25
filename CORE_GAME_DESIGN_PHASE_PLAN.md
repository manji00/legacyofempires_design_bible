# Legacy of Empires — Core Game Design Phase

## Analyse- und Planungsbericht

> **Dokumenttyp:** nichtnormativer Planungsvorschlag  
> **Ausgangslage:** Governance 1.0 ist formal released.  
> **Scope:** fachliche Core-Game-Design-Phase; keine Governance-Remediation und keine neue Architecture Decision.

---

## 1. Repository Design Inventory

Das Repository enthält derzeit:

- `PROJECT_4X_CONTEXT_HANDOFF.md` als abgeleitetes Context-/Handoff-Dokument,
- die Governance- und Project-Bible-Grundlagen `PB-000` bis `PB-004` sowie `PB-997` bis `PB-999`,
- das zentrale Architecture-Decision-Register `PB-998`,
- Governance-Audits und Closure Reports,
- kontrollierte Review-/Release-Evidence,
- Work-Package-State-Carrier,
- Governance-Validatoren und Mutationstests.

Noch nicht vorhanden sind fachliche Dokumente der Familien `GD`, `TECH`, `CNT`, `BAL` und `DEV`. Die in `PB-000` vorgesehene Verzeichnisstruktur ist daher erst teilweise realisiert. Insbesondere existiert noch kein `project-bible/game-design/`-Verzeichnis.

Die kontrollierte Governance-Release-Evidence besteht aus:

- `RVR-000003`: abgeschlossene Verifikation der Governance-Baseline,
- `RES-000002`: Review Result `Passed` und `Approved`,
- `REL-000002`: Governance 1.0, Release Stage `Released`.

Die Governance-Arbeit wird für diese Planung als stabile Grundlage behandelt und nicht erneut geöffnet.

---

## 2. Existing Design Foundation

| ID | Titel | Version / Status | Fachliche Aufgabe | Rolle in der Core-Design-Phase |
|---|---|---|---|---|
| PB-000 | Project Bible Specification | 2.2.0 / Canonical | Repositorystruktur, Dokumentfamilien, Statusmodell, IDs, Requirements, Traceability und AD-Grenze | formale Grundlage |
| PB-001 | Projektmanifest | 2.0.0 / Canonical | Projektidentität, vier Projektpfeiler, Spielergrundrolle, Emergent History, Scenario-First, Offline-First, Performance und Modding | fachliche Grundlage |
| PB-002 | Vision | 2.0.0 / Canonical | Product Identity, Player Fantasy, strategischer Rhythmus, Simulation/AI-Grenze, UI-Vision und Produktanforderungen | direkte fachliche Grundlage |
| PB-003 | Designphilosophie | 2.0.0 / Canonical | Designregeln für Actions, Institutionen, Information, autonome Welt, Zeit, Failure, UI und LLM | fachliche Grundlage und Prüfraster |
| PB-004 | Naming & Terminology | 1.0.3 / Review | Review-Terminologie zu Zeit, Politik, Territorium, Bevölkerung, Wirtschaft, Militär, Diplomatie, Gameplay und Technik | Review-Baseline, keine kanonische Terminology Authority |
| PB-998 / AD-008 | Proposal als allgemeines Gameplay-Konzept | Accepted | Trennt `Proposal` von `Action` und `Execution`; verlangt Validierung vor State Mutation | verbindliche Designgrenze |
| CTX-000 | Project 4X Context Handoff | 1.3.0 / Accepted | praktische Zusammenfassung der Grundlagen | Navigation, nicht normativ |

PB-001 definiert bereits einen Grand-Strategy-Kern aus Wirtschaft, Produktion, Handel, Diplomatie, Krieg, Logistik, Forschung, Intelligence, Karteninteraktion, Zeitfortschritt und autonomen Akteuren. Politische Grand Strategy umfasst Regierungen, Verfassungen, Parteien, Interest Groups, Institutionen, Legitimität, Reform, Umsturz und gesellschaftliche Transformation.

### PB-004 Boundary

PB-004 bleibt `version: 1.0.3`, `status: Review`. Seine Begriffe sollen konsistent als Review-Baseline verwendet werden, besitzen aber noch keine automatische kanonische Terminology Authority. Eine Änderung oder Statusanhebung von PB-004 ist nicht Teil dieser Phase.

---

## 3. Current Game Identity

### A — bereits repositorygestützt

Legacy of Empires beziehungsweise Project 4X ist eine **Scenario-driven Grand Strategy Sandbox Engine**. Die Engine stellt wiederverwendbare Simulationssysteme bereit; Szenariopakete liefern Welt, Karte, Ausgangslage und setting-spezifische Inhalte. `Legacy of Empires` und `Project 4X` sind weiterhin Arbeitsnamen.

Bereits festgelegt sind:

- Grand-Strategy-Sandbox als Kernidentität,
- Gestaltung einer politischen Zivilisation unter Druck als Player Fantasy,
- der Spieler als strategische Führungsintelligenz einer politischen Entität,
- politische und gesellschaftliche Transformation als Kernspiel,
- systemische Sandbox statt starrem Geschichtsbaum,
- dynamische historische Plausibilität,
- eine autonome, unabhängig vom Spieler handelnde Welt,
- strategische Führung und Delegation statt unnötiger Mikrokontrolle,
- optionale Narrative und LLM-Funktionen ohne Game-State-Authority,
- vollständige Kernspielbarkeit ohne LLM,
- Scenario Independence und datengetriebenes Modding.

### B — logisch ableitbar

- Kampagnen betrachten mehrere Jahre oder Jahrzehnte statt einzelner taktischer Operationen.
- Die typische Entscheidungsebene umfasst Strategie, Institutionen, Ressourcenallokation und mehrstufige Vorhaben.
- Charaktere sind Akteure und Informationsvermittler, aber nicht automatisch die alleinige Spielebene.
- Zugänglichkeit entsteht durch gestaffelte Information, Delegation und erklärbare Kausalität.
- Singleplayer ist durch die geforderte autonome Welt zentral; Multiplayer ist noch nicht entschieden.

### C — neuer Designvorschlag

- Präzisierung als **systemische politische Grand Strategy mit 4X-Ausdrucksformen**, ohne zwingende Dominanz des klassischen Explore–Expand–Exploit–Exterminate-Modells.
- Wenige folgenreiche Portfolioentscheidungen je strategischem Zeitraum statt permanenter Einzeloptimierung.
- Charaktere vermitteln Macht, Information, Loyalität und Durchführungskapazität, ohne das Spiel in ein Character-RPG umzuwandeln.
- Multiplayer soll erst nach Klärung des Zeit- und Determinismusmodells als Design-Treiber bewertet werden.

---

## 4. Proposed Player Fantasy

Der Spieler führt keine allmächtige Nation-Maschine. Er versucht:

1. den Zustand einer nur teilweise bekannten Welt zu verstehen,
2. eine strategische Richtung zu wählen,
3. Institutionen, Ressourcen und gesellschaftliche Unterstützung zu mobilisieren,
4. Vorhaben trotz Widerstand, Zeitbedarf und konkurrierender Akteure umzusetzen,
5. auf Nebenfolgen und eigenständige Weltreaktionen zu reagieren,
6. eine dauerhaft veränderte politische und gesellschaftliche Ordnung zu hinterlassen.

Kurzform:

> Ich baue unter Widerstand eine handlungsfähige politische Ordnung auf und hinterlasse eine Welt, deren Geschichte aus meinen Prioritäten und den Gegenreaktionen anderer entstanden ist.

---

## 5. Proposed Design Pillars

Die folgenden sieben Pillars verfeinern die vier bestehenden Projektpfeiler, ohne sie zu ersetzen.

| Pillar | Bedeutung | Gameplay-Auswirkung | Nicht umfasst | Möglicher Konflikt |
|---|---|---|---|---|
| Strategische Transformation | dauerhafte Veränderung politischer, gesellschaftlicher und wirtschaftlicher Ordnung | Reformen, Institutionen und Machtverschiebungen sind Kernmechanik | temporäre Modifier als Ersatz für Transformation | Verständlichkeit vs. Tiefe |
| Begrenzte Führung | der Spieler setzt Ziele, besitzt aber nur reale institutionelle Handlungsmacht | Authority, Support, Capacity und Widerstand begrenzen Actions | allmächtige Nation-Steuerung | Agency vs. autonome Welt |
| Kausale Emergenz | Geschichte entsteht aus State und Systeminteraktionen | Krisen, Revolutionen und Bündnisse haben nachvollziehbare Ursachen | starre Pfadbäume oder beliebige Zufallserzählung | Emergenz vs. authored flavor |
| Zeit, Kosten und Gegenreaktion | bedeutende Actions binden Ressourcen und eröffnen Reaktionsfenster | Projects, Delay, Teil-Erfolg, Eskalation und Abbruch | sofortige kostenlose State Mutation | Tempo vs. Plausibilität |
| Information als strategische Ressource | Wissen kann vollständig, verzögert, geschätzt oder verborgen sein | Intelligence, Reports und Forecasts beeinflussen Entscheidungen | schlechte UI als Fog of War | Unsicherheit vs. Erklärbarkeit |
| Strategische Tiefe ohne Routine-Mikro | Tiefe entsteht aus Trade-offs statt Klickmenge | Policies, Budgets, Prioritäten und Delegation | wiederholte manuelle Optimierung | Agency vs. Automation |
| Autoritativer Simulationskern | nur validierte Systeme verändern State | LLM interpretiert oder formuliert; Simulation validiert und löst auf | LLM als Game Engine oder Pflicht-Chat | narrative Freiheit vs. Reproduzierbarkeit |

---

## 6. Proposed Core Gameplay Loop

```text
WORLD ADVANCES
  → SITUATION & INFORMATION
  → STRATEGIC PRIORITIZATION
  → ACTION / PROPOSAL CONSTRUCTION
  → COMMITMENT & AUTHORIZATION
  → TIME-BASED SYSTEM RESOLUTION
  → ACTOR & INSTITUTION REACTION
  → EXPLAINED CONSEQUENCES
  → REVISED WORLD STATE AND NEW PRESSURES
  ↺
```

1. **World Advances:** Zeit, laufende Projects, Märkte, Population, Institutionen und Akteure entwickeln sich.
2. **Situation & Information:** Karte, Dashboards, Alerts und Berichte zeigen Fakten, Schätzungen, Trends und Unsicherheiten.
3. **Strategic Prioritization:** Der Spieler wählt Ziele, Budgets, politische Risiken und zu delegierende Bereiche.
4. **Action Construction:** Eine Standardaktion wird gewählt oder ein komplexes `Proposal` mit Ziel, Scope, Mitteln und Timeline konfiguriert.
5. **Commitment:** Voraussetzungen, Kompetenz, Kosten, Widerstand und Unsicherheit werden vor Bestätigung angezeigt.
6. **Resolution:** Die Simulation verarbeitet Action oder Project; kein LLM schreibt State.
7. **Reaction:** Institutionen, Factions, Countries, Characters und Strategic AI reagieren.
8. **Consequences:** State Changes, Teil-Erfolg, Verzögerung, Eskalation oder Scheitern werden kausal erklärt.
9. **New Pressure:** Die veränderte Welt erzeugt das nächste strategische Entscheidungsproblem.

Primäre Interfaces sind Map und Map Modes, Dashboards, Situation Queue, Policy-/Institution-Panels, Project Planner, Diplomacy, Budget, Intelligence Reports, Timeline und Causality View sowie ein optionales Advisor-/Conversation-Interface.

---

## 7. Player Action Model

| Kategorie | Beispiele | Eingabe | Validierung und Auflösung | LLM | State-Persistenz |
|---|---|---|---|---|---|
| Direct System Actions | Budgetpriorität, Trade Route, Verlegung, Minister, Pause | klassische UI | unmittelbare Regeln, Authority und Ressourcen | nicht erforderlich | Action, Actor, Parameter, Zeitpunkt, Resultat |
| Structured Strategic Actions | Verfassungsreform, Industrieprogramm, Vertrag, Mobilisierung | Planner mit Ziel, Scope, Mitteln, Risiko und Timeline | Requirements, Support, Capacity, Cost und Resistance; mehrstufiges Project | optional für Erklärung | Proposal, Decision, Commitments, Project State, Outcomes |
| Narrative / LLM-Assisted Actions | ungewöhnlicher diplomatischer Ansatz, freie Reformidee, Rede | Freitext plus editierbare strukturierte Vorschau | LLM erzeugt nur Proposal; Systeme validieren und lösen nach Bestätigung auf | Interpretation und Ausdruck | normalisiertes Proposal verbindlich; Narrative separat |
| System-Autonomous Actions | AI-Reform, institutionelle Blockade, Faction-Mobilisierung | Goals, Policies, Rules oder AI Planner | dieselben Invarianten wie Spieleraktionen | höchstens Narrative | Actor Decision, validierte Action und State Changes |

Verbindliche Grenze:

```text
Proposal ≠ Decision ≠ Action ≠ Execution
```

Ein `Proposal` allein verändert keinen autoritativen Game State.

---

## 8. Deterministic / LLM Boundary

```text
LLM proposes or interprets
  → typed Proposal / Narrative Request
  → game systems validate, authorize and resolve
  → authoritative State Change
  → LLM may explain or narrate the validated result
```

| System | Einordnung |
|---|---|
| World, Map, Territory | deterministic |
| Time, Scheduling | deterministic |
| Population | deterministic / controlled stochastic |
| Resources, Production | deterministic |
| Economy, Finance, Trade | deterministic / controlled stochastic |
| Infrastructure, Logistics | deterministic |
| Military, War | deterministic / controlled stochastic |
| Technology | deterministic |
| Government, Laws | hybrid ohne LLM-Autorität |
| Politics, Factions | hybrid ohne LLM-Autorität |
| Diplomacy | hybrid; LLM optional für Ausdruck |
| Negotiation | LLM-assisted hybrid; Terms und Effects systemisch validiert |
| Characters | hybrid; Dialog optional LLM-assisted |
| Intelligence | hybrid ohne LLM-Autorität |
| Events | deterministic triggers; optional generated output |
| Crisis | hybrid ohne LLM-Autorität |
| AI Strategic Planning | deterministic, heuristic oder planner-based |
| Narrative | LLM-generated output only |
| Advisor Summaries | LLM-assisted mit strukturiertem Fallback |
| Modding und Savegame | deterministic contracts |

---

## 9. Major System Map

1. **World Foundation:** World, Map, Calendar, Time, Scenario, Political Entities, Territory.
2. **Human Foundation:** Population, Population Groups, Society, Culture, Identity, Labour.
3. **State and Power:** Government, Institutions, Politics, Laws, Administrative Capacity, Factions.
4. **Material Economy:** Resources, Production, Infrastructure, Trade, Markets, Finance, Taxation.
5. **External Power:** Diplomacy, Intelligence, War, Military, Logistics.
6. **Change Systems:** Technology, Projects, Events, Crisis, Colonization, Expansion und Integration.
7. **Actors:** Strategic AI, Simulation Actors, Characters und Institutions.
8. **Interaction:** Player Action Model, Information Model, Narrative Layer und LLM Integration.
9. **Cross-cutting:** Modding, Scenario Isolation, Savegame, Explainability und Performance.

Für keines dieser Systeme existiert bereits ein vollständiges fachliches GD-Dokument mit Inputs, Outputs, State Ownership, Player Interaction, Resolution Rules, Failure Modes und Dependencies.

---

## 10. System Dependencies

```text
Scenario Definition
  → World / Map / Territory
  → Calendar / Time
  → Initial Political, Population and Economic State

World + Territory + Time
  → Population Distribution
  → Resources and Infrastructure
  → Political Jurisdiction
  → Movement and Logistics

Population + Society
  → Labour → Production → Markets / Trade → Taxation
  → Political Support → Factions → Government Stability
  → Recruitment → Military
  → Migration / Radicalization → Crisis

Government + Laws + Institutions
  → Administrative Capacity
  → Valid Action Authority
  → Budget and Economic Rules
  → Mobilization and Diplomacy

Information + Intelligence
  → Player and AI Decisions
  → Diplomacy and Crisis Response

Projects + Time + Authority + Resources
  → Validated Actions
  → System Resolution
  → Persistent Consequences
  → Events, Crisis and Actor Reactions

Authoritative State + Causality Log
  → UI and Reports
  → Narrative Layer
  → Savegame
  → LLM Context Projection
```

---

## 11. Foundational Systems

In dieser Reihenfolge zuerst definieren:

1. Player Role and Control Boundary,
2. World State Domains and Political Entity Scope,
3. Time, Project and Resolution Model,
4. Player Action / Proposal / Execution Model,
5. Information and Explainability Model,
6. Institution, Authority and Administrative Capacity Model,
7. Population–Economy–Politics causal backbone,
8. Actor Decision and Validation Contract,
9. Persistence requirements for consequences,
10. Narrative/LLM projection boundary.

---

## 12. Time Model Status

Bereits bestimmt sind Zeit als strategische Ressource, zeitgebundene Transformationen, Reaktionen während laufender Prozesse, mehrere Prozessformen und unterschiedliche Simulationsfrequenzen.

Noch offen sind:

- turn-based oder continuous,
- Pause und Geschwindigkeitsstufen,
- kleinste sichtbare Zeiteinheit,
- authoritative tick,
- Frequenzen je System,
- Reihenfolge gleichzeitiger Actions,
- Multiplayer-Synchronisation,
- Seed-/Randomness-Strategie,
- asynchrone Narrative Calls.

| Option | Vorteil | Nachteil |
|---|---|---|
| Continuous real-time with pause | etablierte Grand-Strategy-UX | Reihenfolge und Reproduzierbarkeit komplexer |
| Fixed strategic turns | klare Planung und gute Reproduzierbarkeit | schwächeres Gefühl einer kontinuierlichen Welt |
| Hybrid fixed simulation step mit pausable continuous presentation | deterministischer Kern bei vertrauter UX | benötigt klare Command-Queue- und Frequency-Regeln |

Die Hybridoption sollte zuerst untersucht, aber noch nicht kanonisch festgelegt werden.

---

## 13. World State Model

Fachlich benötigte State-Domänen:

- `CampaignState`,
- `WorldState`,
- `PoliticalEntityState`,
- `TerritoryState`,
- `PopulationState`,
- `SocietyState`,
- `GovernmentState`,
- `InstitutionState`,
- `FactionState`,
- `EconomyState`,
- `DiplomacyState`,
- `MilitaryState`,
- `TechnologyState`,
- `IntelligenceState`,
- `CharacterState`,
- `ProjectState`,
- `Event/CrisisState`,
- nichtautoritativer `NarrativeState`,
- `CausalityState`.

Dies ist eine fachliche State-Landkarte, kein technisches Daten- oder Savegame-Schema.

---

## 14. Player Information Model

| Informationsklasse | Beispiel | Darstellung |
|---|---|---|
| vollständig bekannt | eigener bestätigter Haushalt | faktischer Wert |
| unvollständig | regionale Loyalität bei schwacher Verwaltung | Range plus Coverage |
| verzögert | Produktionsdaten entfernter Regionen | Standdatum |
| geschätzt | fremde Truppenstärke | Range und Confidence |
| geheim | Coup-Plan oder geheimes Abkommen | unbekannt bis Detection |
| täuschbar | diplomatische Absicht | Quelle und Widersprüche |
| durch Intelligence gewonnen | Agentenbericht | Quelle, Alter und Reliability |
| narrativ vermittelt | Advisor Summary | klar als Interpretation markiert |

Das Player Information Model sollte ein eigenes GD-Dokument werden, weil es UI, Intelligence, AI, Diplomatie, Causality und Schwierigkeitsdesign querschneidet.

---

## 15. AI Actor Model

| Akteursschicht | Entscheidet? | Darf State verändern? | Validierung |
|---|---|---|---|
| Strategic AI | Ziele, Prioritäten und Proposals | nur über autorisierte Action-/Resolution-Systeme | Requirements, Costs, Authority und Invariants |
| Simulation Actors | begrenzt innerhalb einer Domäne | innerhalb eng definierter Systemregeln | systemeigene Rules |
| Characters | Unterstützung, Widerstand und persönliche Actions | nur über Character-/Institution-Systeme | Position, Capability, Information und Risk |
| Institutions | autorisieren, blockieren, implementieren und delegieren | innerhalb ihrer Kompetenz | Law, Constitution und Capacity |
| LLM Personality/Narrative Layer | keine autoritativen Entscheidungen | nein | Output-Schema und Fact Grounding |

---

## 16. Pressure / Failure Model

Strategischer Druck entsteht durch:

- Ressourcenknappheit und konkurrierende Budgets,
- begrenzte Administrative Capacity,
- institutionelle Zuständigkeit und Blockade,
- politische Opposition und sinkende Legitimacy,
- regionale Loyalität und soziale Konflikte,
- Trade- und Supply-Schocks,
- diplomatische Isolation,
- Krieg, Mobilisierung und Logistics,
- unvollständige oder falsche Information,
- Zeitfenster und verspätete Konsequenzen,
- Opportunity Costs,
- gekoppelte Krisen.

Failure-Formen sind Rejection, Stall, Partial Success, Distortion, Escalation, Pyrrhic Success, Systemic Collapse und Strategic Defeat without Game Over. Scheitern soll den World State verändern und neue Entscheidungen öffnen.

---

## 17. Progression Model

Progression ist mehrdimensional und teilweise reversibel:

- territorial,
- wirtschaftlich,
- technologisch,
- institutionell,
- militärisch,
- diplomatisch,
- gesellschaftlich,
- politisch,
- gegebenenfalls charakterbezogen,
- Prestige und Influence.

Ein universeller Power Score wird nicht empfohlen. Fortschritt in einer Dimension soll Kosten oder Verwundbarkeit in einer anderen erzeugen können.

---

## 18. Proposed GD Document Tree

```text
project-bible/game-design/
├── GD-100_Core_Gameplay_Loop.md
├── GD-101_Player_Role_And_Agency.md
├── GD-102_Action_Proposal_And_Project_Model.md
├── GD-103_Time_And_Simulation_Rhythm.md
├── GD-104_World_State_And_System_Map.md
├── GD-105_Player_Information_And_Explainability.md
├── GD-110_Political_Institutions_And_Power.md
├── GD-111_Population_Society_And_Economy_Backbone.md
├── GD-112_AI_Actors_And_Delegation.md
├── GD-120_Diplomacy_Conflict_And_External_Power.md
├── GD-121_Narrative_And_LLM_Interaction.md
└── GD-130_First_Strategic_Slice.md
```

| ID | Zweck | Dependencies | Initialstatus | Priorität |
|---|---|---|---|---|
| GD-100 | gemeinsame Spielidentität und Core Loop | PB-001–003 | Draft | P0 |
| GD-101 | genaue Spielerrolle, Agency und Authority | GD-100 | Draft | P0 |
| GD-102 | Direct Actions, Proposal, Decision, Project und Execution | GD-100/101, AD-008 | Draft | P0 |
| GD-103 | fachliches Zeit- und Resolution-Modell | GD-100/102 | Draft | P0 |
| GD-104 | State- und Systemlandkarte | GD-100–103 | Draft | P0 |
| GD-105 | Informations- und Explainability-Modell | GD-100/104 | Draft | P1 |
| GD-110 | politische Kernsimulation | GD-101–105 | Draft | P1 |
| GD-111 | Population–Society–Economy-Backbone | GD-103–105 | Draft | P1 |
| GD-112 | Actor- und Delegationsmodell | GD-101/102/104/105 | Draft | P1 |
| GD-120 | Diplomatie, Intelligence, Konflikt und äußere Macht | GD-110–112 | Draft | P2 |
| GD-121 | Narrative und LLM Interaction | GD-102/105/112 | Draft | P2 |
| GD-130 | Design des ersten strategischen Slice | GD-100–112 | Draft | P1 |

---

## 19. Proposed Game-Design Work Packages

Die folgenden IDs sind Vorschläge und noch keine angelegten State Carrier.

| WP | Ziel | Outputs | Dependencies | Möglicher AD-Bedarf | Completion Criteria |
|---|---|---|---|---|---|
| WP-008 — Core Experience Contract | Identität, Player Role und Loop festlegen | GD-100, GD-101 | keine | keiner erwartet | Loop, Role, Agency, Pillars und Non-Goals prüfbar |
| WP-009 — Action and Time Foundation | Action-, Project- und Time-Modell | GD-102, GD-103 | WP-008 | Runtime-Zeitarchitektur erst nach Design | alle vier Action-Kategorien und Timing beschrieben |
| WP-010 — State, Information and Causality | State Map und Informationsmodell | GD-104, GD-105 | WP-009 | später eventuell Savegame/Event Execution | Domains, Ownership, Visibility und Causality geklärt |
| WP-011 — Political-Economic Backbone | gekoppelte politische und materielle Simulation | GD-110, GD-111 | WP-010 | keiner im fachlichen Scope | Population→Economy→Capacity→Politics definiert |
| WP-012 — Autonomous Actors and Delegation | lebende Welt und Mikrogrenze | GD-112 | WP-011 | nur bei grundlegendem AI-Architekturkonflikt | Authority, Goals, Validation und Delegation definiert |
| WP-013 — First Strategic Slice Design | repräsentativen Slice spezifizieren | GD-130 | WP-012 | keine vorzeitige AD | Loop, Scope, Erfolg und Tests spezifiziert |
| WP-014 — External Power and Narrative Integration | Diplomatie/Konflikt und optionale Narrative aufsetzen | GD-120, GD-121 | WP-013 | gegebenenfalls LLM Runtime Contract | Außenreaktionen und Fallbacks wahren State Authority |

---

## 20. Dependency Order

1. **Phase A — Core Experience:** WP-008 → GD-100 + GD-101
2. **Phase B — Interaction and Time:** WP-009 → GD-102 + GD-103
3. **Phase C — State, Information and Causality:** WP-010 → GD-104 + GD-105
4. **Phase D — Simulation Backbone:** WP-011 → GD-110 + GD-111
5. **Phase E — Autonomous World:** WP-012 → GD-112
6. **Phase F — Representative Slice:** WP-013 → GD-130
7. **Phase G — External and Narrative Breadth:** WP-014 → GD-120 + GD-121

Das LLM wird damit nicht vor dem Spiel entworfen. Role, Loop, Actions, Time, State, Information und Simulationsbackbone kommen zuerst.

---

## 21. First Implementable Strategic Slice

### Reform under Scarcity

Eine institutionelle Reform in einer regional gespaltenen politischen Entität.

**Enthalten:**

- kleine Karte mit vier bis sechs Territorien,
- eine spielbare Political Entity und zwei bis drei externe Nachbarn,
- drei Population Groups oder gesellschaftliche Blöcke,
- zwei konkurrierende Institutions/Factions,
- vereinfachte Resources, Production, Revenue und Administrative Capacity,
- Legitimacy, Support und regionale Loyalty,
- mehrstufiges Reform-Project,
- Time Advancement und autonome Actor Reactions,
- Trade-/Supply-Schock als Druck,
- sichere Fakten und unsichere Schätzungen,
- Causality-/Outcome-Anzeige,
- strukturierte UI ohne LLM,
- optionaler Advisor-/Newspaper-Text.

**Bewusst ausgeschlossen:**

- globale Weltkarte,
- vollständige Demografie,
- detaillierte Battle-Simulation,
- Naval/Air Warfare,
- komplexe Tech Trees,
- Colonization,
- freies LLM-Negotiation Gameplay,
- Multiplayer,
- vollständige Character-RPG-Systeme,
- umfangreiche historische Eventketten.

Der Spieler stabilisiert Versorgung und Einnahmen, verteilt administrative Ressourcen, konfiguriert eine Reform, baut Unterstützung auf und reagiert auf Blockade, regionale Unruhe und äußeren Druck.

Erfolg bedeutet eine wirksame Reform bei erhaltener Handlungsfähigkeit. Teil-Erfolg, Verwässerung, Gegenmacht, Legitimacy Crisis oder regionaler Kontrollverlust bleiben mögliche systemische Ergebnisse. Misserfolg erzeugt eine neue strategische Lage statt automatisch ein Game Over.

---

## 22. Design Risks

| Risiko | Auswirkung | Gegenmaßnahme |
|---|---|---|
| Over-Simulation | schlechte Performance und unlesbare Regeln | nur entscheidungsrelevanten State modellieren |
| Micromanagement Explosion | repetitive Klickschleifen | Policies, Budgets, Delegation und Exception Alerts |
| LLM-Abhängigkeit | Prompting ersetzt Gameplay | jede Kernaktion zuerst strukturiert und offline vollständig |
| unkontrollierter Game State | widersprüchliche oder ungültige Welt | Proposal → Validation → authorized Execution |
| AI Performance | globale Planung jedes Actors | Hierarchien, Relevance Sets und unterschiedliche Frequenzen |
| Tokenkosten | teure vollständige World Prompts | State Diffs, Caching und begrenzter Scope |
| lokale LLM-Kompatibilität | providerabhängige Funktionen | kleine Schemas und deterministische Fallbacks |
| fehlende Reproduzierbarkeit | nicht erklärbare Ergebnisse | controlled stochasticity und Causality Log |
| Savegame-Komplexität | fragile Persistenz | klare State Ownership und versionierte Project States |
| Systemkopplung | Änderungen erzeugen Kaskaden | Inputs, Outputs und Ownership pro System |
| UI Overload | Tiefe wird unzugänglich | progressive disclosure und Situation Queue |
| fehlende Player Agency | autonome Welt wirkt willkürlich | Widerstand in planbare Kosten und Gegenwege übersetzen |
| Spreadsheet Simulator | Zahlen ohne Weltbezug | Werte an Akteure, Territorien und Konsequenzen binden |
| Feature Creep | keine spielbare Integration | Slice Gate für jedes neue System |
| militärische Dominanz | andere Machtformen werden irrelevant | nichtmilitärische Erfolgswege explizit testen |
| Sandbox-Beliebigkeit | ungewöhnliche Pläne umgehen Regeln | Freiheit als Versuchbarkeit, nicht Erfolgsgarantie |
| Narrative Inkonsistenz | Text widerspricht State | Narrative nur aus validierten Resultaten erzeugen |

---

## 23. Open Design Questions

### Critical

1. Was ist die genaue Player Role und welche Political Entities dürfen spielbar sein?
2. Was kontrolliert der Spieler direkt, institutionell oder nie?
3. Welches Zeitmodell und welche Decision Cadence tragen den Core Loop?
4. Wie werden Direct Actions, configurable Actions, freie Proposals, Decisions, Projects und Execution verbunden?
5. Welche kleinste Population–Economy–Politics-Kopplung erzeugt repräsentatives Gameplay?
6. Welche State-Domänen besitzen authoritative Ownership und in welcher Reihenfolge werden Changes aufgelöst?

### High

7. Was bedeutet Campaign Success, Fortsetzung und Niederlage?
8. Wie funktionieren Administrative Capacity, Authority, Legitimacy und Support ohne redundante Universalwährungen?
9. Welche Informationen kennt der Spieler über eigene und fremde Systeme?
10. Welche Actor-Typen benötigen individuelle Entscheidungen und welche werden aggregiert?
11. Wie viel Military Detail gehört zum Kern?
12. Wie werden politische Entitäten unterhalb und oberhalb des Country Levels dargestellt?
13. Wie wahrt Delegation Agency und verhindert Routine-Mikro?

### Medium

14. Welche Progression ist reversibel, persistent oder scenariospezifisch?
15. Wie entstehen und eskalieren Krisen aus normalem State?
16. Welche Diplomatie-Actions benötigen Negotiation statt fester Parameter?
17. Welche Character-Eigenschaften verändern tatsächlich Systemverhalten?
18. Welche Narrative-Artefakte rechtfertigen LLM-Kosten?
19. Welche Grenzen gelten für Colonization und Expansion?

### Low

20. Welche Campaign Chronicles werden erzeugt?
21. Welche Advisor-Stimmen begleiten unterschiedliche Government Types?
22. Welcher endgültige Produkt- und Engine-Name wird verwendet?

---

## 24. Architecture Decision Candidates

Noch keine AD ist anzulegen. Echte spätere Kandidaten sind:

1. Authoritative Simulation Step and Command Ordering,
2. konkreter Simulation/LLM Integration Authority Contract,
3. Savegame and Event/Causality Persistence Architecture,
4. Multiplayer Determinism Model, falls Multiplayer bestätigt wird,
5. Scenario/Mod Loading Boundary,
6. Strategic AI Planning Architecture.

Genre, Pillars, Player Fantasy, konkrete Kostenarten, UI-Layout und Balancewerte sind keine Architecture Decisions.

---

## 25. Existing Documents That Must Not Be Duplicated

- `PB-000`: Dokumentstruktur, IDs, Status, Frontmatter, Review- und AD-Regeln.
- `PB-001`: Projektmotivation, Projektpfeiler, Scenario-First, Offline-First und allgemeine Player-Role-Grenze.
- `PB-002`: Product Vision, Player Fantasy, strategischer Rhythmus, UI-/Accessibility-Vision und Produktanforderungen.
- `PB-003`: Designphilosophie, Zielkonflikte, Information, Delegation, Time, Failure und LLM-Grundsätze.
- `PB-004`: Terminologie nicht kopieren; nur als Review-Baseline referenzieren.
- `PB-997`: Review-/Release-Prozess.
- `PB-998`: Architecture Decisions und insbesondere AD-008.
- `PB-999`: kein Ort für Game-Design-Entscheidungen.
- `CTX-000`: abgeleiteter Einstiegspunkt, keine normative Quelle.
- Audits, Evidence, Work-Package Carrier und Closure Reports.
- `GD-100` als bereits vorgesehene ID für den Core Gameplay Loop.

---

## 26. Recommended Immediate Next Step

Der erste fachliche Schritt muss Identität, Player Role und Core Loop gemeinsam festziehen, bevor einzelne Systeme detailliert werden. Andernfalls entwickeln Economy, Politics, Actions, AI und Time jeweils eigene implizite Annahmen darüber, wer handelt, was sichtbar ist und wann Konsequenzen eintreten.

---

## 27. Files Changed

Für die ursprüngliche Read-only-Analyse wurden keine Dateien verändert. Dieses Dokument persistiert ausschließlich den daraus entstandenen Planungsbericht und erzeugt keine fachliche oder Governance-Authority.

---

## 28. Git Status at Analysis Time

- Branch: `work`
- damaliges `HEAD`: `36a0f2232bb36c481364d41349588c7ceb89310d`
- Working Tree: sauber
- keine im Rahmen der Analyse erzeugten Commits oder Pull Requests

---

## Finale Empfehlung

**GO für das Anlegen und Ausführen von `WP-008 — Core Experience Contract` mit genau zwei Outputs: dem ersten Draft von `GD-100_Core_Gameplay_Loop.md` und dem ersten Draft von `GD-101_Player_Role_And_Agency.md`.**
