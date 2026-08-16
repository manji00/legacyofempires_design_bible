---
document_id: PB-003
title: Designphilosophie
version: 1.0.2
status: Canonical
category: Governance
created: 2026-08-05
updated: 2026-08-16
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
  - 01_Design_Philosophy_v2.md
superseded_by: null
depends_on:
  - CTX-000
  - PB-000
  - PB-001
  - PB-002
related_documents:
  - PB-004
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
  - REQ-DES-001
  - REQ-DES-002
  - REQ-DES-003
  - REQ-DES-004
  - REQ-DES-005
  - REQ-DES-006
  - REQ-DES-007
  - REQ-DES-008
  - REQ-DES-009
  - REQ-DES-010
  - REQ-DES-011
  - REQ-DES-012
architecture_decisions:
  - AD-004
  - AD-010
design_goals:
  - DG-DES-001
  - DG-DES-002
  - DG-DES-003
  - DG-DES-004
  - DG-DES-005
  - DG-DES-006
  - DG-DES-007
  - DG-DES-008
tags:
  - design-philosophy
  - grand-strategy
  - emergent-history
  - sandbox
  - systemic-design
  - political-simulation
  - scenario-driven
  - offline-first
  - ai-assisted
canonical_path: project-bible/governance/PB-003_Designphilosophie.md
context_priority: critical
---

# PB-003 – Designphilosophie

## 1. Zweck

Dieses Dokument definiert die grundlegenden Designprinzipien, nach denen Project 4X entworfen, bewertet und weiterentwickelt wird.

PB-003 beantwortet nicht primär die Frage, welche einzelnen Features das Spiel besitzt. Es beantwortet die wichtigere Frage:

> **Wie müssen Systeme, Inhalte und Spielerentscheidungen gestaltet sein, damit die Vision des Projekts erhalten bleibt?**

Die Designphilosophie ist der verbindliche Maßstab für:

- Game-Design-Entscheidungen,
- Systemarchitektur,
- Benutzeroberfläche,
- Balancing,
- Szenariodesign,
- KI-Integration,
- Modding-Schnittstellen,
- Priorisierung neuer Features,
- Überarbeitung bestehender Mechaniken.

Ein Feature kann technisch funktionieren und trotzdem gegen die Designphilosophie verstoßen.

Ein System gilt erst dann als erfolgreich, wenn es strategische Entscheidungen erzeugt, verständliche Konsequenzen besitzt und die langfristige Produktvision unterstützt.

---

## 2. Leitgedanke

Der zentrale Gestaltungsgrundsatz lautet:

> **Baue Systeme. Lass Geschichte entstehen.**

Das Projekt bevorzugt Regeln, Wechselwirkungen und Akteure, aus denen Ereignisse hervorgehen, gegenüber starren Ketten, die ein vorgesehenes Ergebnis erzwingen.

Eine Revolution soll nicht allein stattfinden, weil ein Skript an einem bestimmten Datum ausgelöst wird.

Sie soll aus wachsendem Widerstand, schwindender Legitimität, Organisationsfähigkeit, Krisen, politischen Fehlern und konkreten Gelegenheiten entstehen können.

Ein Bündnis soll nicht nur existieren, weil es historisch vorgesehen war.

Es soll durch Interessen, Bedrohung, Vertrauen, Ideologie, wirtschaftliche Verflechtung und diplomatische Arbeit getragen werden.

Ein Staat soll sich nicht nur verändern, weil der Spieler einen Fokus abgeschlossen hat.

Er soll sich verändern, weil Institutionen, Bevölkerung, Eliten, Verwaltung und Machtmittel tatsächlich bewegt wurden.

---

## 3. Designziele

### DG-DES-001 – Emergenz statt Ablaufplan

Das Spiel soll Ergebnisse aus dem Zusammenspiel seiner Systeme erzeugen.

Vorbereitete Inhalte setzen Ausgangslagen, Spannungen und besondere Möglichkeiten. Sie dürfen den Kampagnenverlauf jedoch nicht vollständig festlegen.

### DG-DES-002 – Glaubwürdige Freiheit

Der Spieler soll ungewöhnliche und radikale Ziele verfolgen können.

Die Simulation muss diese Ziele anhand ihrer tatsächlichen Voraussetzungen und Folgen beurteilen, nicht anhand der Frage, ob sie vom Designer ausdrücklich vorgesehen wurden.

### DG-DES-003 – Strategische Tiefe ohne sinnlose Last

Komplexität soll aus Zielkonflikten, Informationen und miteinander verbundenen Systemen entstehen.

Sie soll nicht aus wiederholten Klicks, unnötiger Verwaltung oder künstlich aufgeblähten Zahlenmengen entstehen.

### DG-DES-004 – Transformation als Kernspiel

Politische, gesellschaftliche und institutionelle Veränderung ist kein seltener Sonderpfad, sondern ein grundlegender Bestandteil des Spiels.

### DG-DES-005 – Lesbare Ursachen und Folgen

Der Spieler muss verstehen können, warum etwas geschieht, welche Akteure beteiligt sind und welche Konsequenzen aus einer Entscheidung entstanden sind.

### DG-DES-006 – Eigenständige Welt

Nichtspieler-Akteure verfolgen eigene Ziele und erzeugen auch ohne den Spieler relevante Entwicklungen.

### DG-DES-007 – Szenariounabhängige Systeme

Kernmechaniken müssen generisch genug sein, um unterschiedliche historische, alternative und fiktionale Szenarien zu unterstützen.

### DG-DES-008 – Optionale KI

Sprachmodelle verbessern Interpretation und Präsentation, ersetzen jedoch keine autoritativen Spielsysteme.

---

## 4. Die Simulation besitzt Autorität

Der autoritative Spielzustand gehört ausschließlich der Simulation.

Die Simulation entscheidet über:

- Gültigkeit von Aktionen,
- Voraussetzungen,
- Kosten,
- Zeitbedarf,
- Fortschritt,
- Erfolg,
- Teil-Erfolg,
- Scheitern,
- Nebenwirkungen,
- politische Reaktionen,
- wirtschaftliche Folgen,
- diplomatische Antworten,
- militärische Ergebnisse,
- dauerhafte Zustandsänderungen.

Narrative Systeme dürfen diese Entscheidungen erklären, darstellen oder in menschlich verständliche Form übersetzen.

Sie dürfen sie nicht eigenmächtig ersetzen.

> **Die Simulation entscheidet. Die KI erzählt.**

Diese Trennung ist keine technische Feinheit, sondern eine zentrale Designentscheidung.

Sie schützt:

- Konsistenz,
- Nachvollziehbarkeit,
- Balancing,
- Speicherstände,
- Modding,
- Offline-Spielbarkeit,
- Modellunabhängigkeit,
- reproduzierbare Ergebnisse.

---

## 5. Der Spieler formuliert Absichten, nicht Wirklichkeit

Der Spieler darf Ziele, Pläne und politische Absichten definieren.

Er darf jedoch nicht durch bloße Formulierung bestimmen, dass ein gewünschter Zustand bereits eingetreten ist.

Beispiele:

- Der Spieler kann die Wiederherstellung einer Monarchie anstreben.
- Er kann nicht einfach erklären, dass alle Institutionen diese akzeptiert haben.
- Der Spieler kann eine neue Verfassung entwerfen.
- Er kann nicht garantieren, dass Parlament, Armee, Regionen und Bevölkerung sie umsetzen.
- Der Spieler kann ein Bündnis vorschlagen.
- Er kann nicht die Zustimmung anderer Staaten erzwingen.

Das Spiel trennt daher zwischen:

1. **Absicht** – was der Spieler erreichen möchte,
2. **Aktion** – was konkret unternommen wird,
3. **Umsetzung** – wie Institutionen und Akteure reagieren,
4. **Ergebnis** – welcher Zustand tatsächlich entsteht.

Diese Trennung ermöglicht Freiheit, ohne die Glaubwürdigkeit der Welt aufzugeben.

---

## 6. Handlungen statt Wunschbefehle

Jede relevante Veränderung soll durch eine oder mehrere spielmechanische Handlungen entstehen.

Eine Handlung benötigt je nach Kontext:

- ein klares Ziel,
- einen verantwortlichen Akteur,
- Ressourcen,
- politische Unterstützung,
- administrative Kapazität,
- Zeit,
- Informationen,
- geeignete Bedingungen,
- einen bewertbaren Risikorahmen.

Freie Texteingaben werden nicht direkt ausgeführt.

Sie werden in eine strukturierte Aktionsbeschreibung übersetzt, die der Spieler prüfen kann.

Eine solche Beschreibung soll mindestens enthalten:

- beabsichtigtes Ziel,
- betroffene Entitäten,
- benötigte Mittel,
- erkennbare Voraussetzungen,
- erwartete Dauer,
- zentrale Risiken,
- mögliche Widerstände,
- wahrscheinliche Folgen.

Damit bleibt die Sandbox offen, ohne mechanisch beliebig zu werden.

---

## 7. Freiheit bedeutet Versuchbarkeit, nicht Erfolgsgarantie

Die wichtigste Eigenschaft einer Sandbox ist nicht, dass jede Aktion gelingt.

Die wichtigste Eigenschaft ist, dass der Spieler ungewöhnliche Ziele versuchen darf und das Spiel darauf systemisch reagiert.

Eine Aktion kann:

- vollständig gelingen,
- teilweise gelingen,
- verzögert werden,
- teurer werden,
- in veränderter Form umgesetzt werden,
- politisch blockiert werden,
- unerwartete Unterstützung gewinnen,
- einen Gegenschlag auslösen,
- scheitern,
- langfristig neue Möglichkeiten schaffen.

Ein gutes Scheitern beendet nicht einfach die Interaktion.

Es verändert die Lage und erzeugt neue Entscheidungen.

Das Spiel soll daher selten nur mit „nicht möglich“ antworten.

Stattdessen soll es, wo sinnvoll, erklären:

- warum etwas derzeit nicht möglich ist,
- welche Voraussetzungen fehlen,
- welche Alternativen existieren,
- welche Vorbereitung die Erfolgschancen verändert,
- welche Risiken ein sofortiger Versuch hätte.

---

## 8. Systeme vor Sonderfällen

Neue Inhalte sollen nach Möglichkeit bestehende Systeme verwenden.

Bevor eine einmalige Sonderregel eingeführt wird, ist zu prüfen:

1. Kann das gewünschte Ergebnis aus einem bestehenden System entstehen?
2. Fehlt dem bestehenden System eine allgemeine Fähigkeit?
3. Würde eine Erweiterung mehreren Szenarien oder Inhalten dienen?
4. Ist der Sonderfall tatsächlich einzigartig?

Sonderregeln sind zulässig, wenn sie:

- eine einzigartige Szenarioeigenschaft darstellen,
- historische oder fiktionale Besonderheiten abbilden,
- keine allgemeinen Regeln heimlich umgehen,
- klar dokumentiert sind,
- begrenzte Auswirkungen besitzen.

Sonderregeln dürfen nicht zur Standardlösung für fehlende Systemtiefe werden.

> **Szenarien spezialisieren Systeme. Sie ersetzen sie nicht.**

---

## 9. Zustandsänderungen statt isolierter Modifikatoren

Viele Strategiespiele bilden Veränderung hauptsächlich durch zeitlich begrenzte Prozentwerte ab.

Project 4X soll Modifikatoren verwenden, wenn sie sinnvoll sind, aber tiefere Veränderungen bevorzugen.

Eine Reform kann beispielsweise verändern:

- gesetzliche Rechte,
- institutionelle Zuständigkeiten,
- Ernennungsverfahren,
- Machtverteilung,
- politische Erwartungen,
- Verwaltungsprozesse,
- Finanzierung,
- Legitimität,
- regionale Beziehungen,
- zukünftige Handlungsmöglichkeiten.

Ein wirtschaftlicher Wandel kann verändern:

- Eigentumsstrukturen,
- Produktionsketten,
- Beschäftigung,
- Preise,
- Staatseinnahmen,
- soziale Macht,
- Handelsabhängigkeiten,
- regionale Entwicklung.

Ein guter Systemzustand beeinflusst zukünftige Entscheidungen.

Ein bloßer Bonus verändert häufig nur die Stärke einer bestehenden Aktion.

Beides kann notwendig sein, aber dauerhafte Transformation muss als dauerhafte Zustandsänderung modelliert werden.

---

## 10. Politik ist ein Netzwerk von Akteuren

Politik darf nicht auf einen einzelnen Stabilitätswert reduziert werden.

Politische Ergebnisse entstehen aus Beziehungen zwischen:

- Regierung,
- Staatsoberhaupt,
- Parlament,
- Parteien,
- Interessengruppen,
- Bewegungen,
- Militär,
- Verwaltung,
- Regionen,
- wirtschaftlichen Eliten,
- Gewerkschaften,
- religiösen Institutionen,
- Medien,
- Bevölkerung,
- ausländischen Akteuren.

Nicht jedes Szenario muss alle Akteursarten in gleicher Tiefe verwenden.

Das System muss jedoch grundsätzlich mehrere Machtquellen, Interessen und Loyalitäten darstellen können.

Politische Macht soll nicht nur als Vorrat ausgegeben werden.

Sie soll aus Ämtern, Institutionen, Unterstützung, Kontrolle, Beziehungen, Informationen und Handlungskapazität entstehen.

---

## 11. Institutionen begrenzen und ermöglichen

Institutionen sind keine Dekoration.

Sie bestimmen:

- wer Entscheidungen treffen darf,
- wer sie umsetzen kann,
- wer sie blockieren kann,
- wie schnell sie umgesetzt werden,
- welche Ressourcen verfügbar sind,
- welche Informationen sichtbar werden,
- welche politischen Kosten entstehen,
- wie legitim ein Ergebnis wahrgenommen wird.

Starke Institutionen können den Spieler begrenzen, aber auch Stabilität, Kapazität und Verlässlichkeit schaffen.

Schwache Institutionen können kurzfristig größere Willkür erlauben, aber Korruption, Widerstand, Ineffizienz und Kontrollverlust erzeugen.

Das Spiel soll daher keine einfache Gleichung verwenden, nach der maximale Zentralisierung oder maximale Freiheit immer optimal ist.

Unterschiedliche Ordnungen besitzen unterschiedliche Stärken, Schwächen und Risiken.

---

## 12. Strategische Führung statt Mikromanagement

Der Spieler soll über bedeutsame Prioritäten, Ziele und Ressourcen entscheiden.

Routinehandlungen sollen delegierbar oder automatisierbar sein.

Mikromanagement ist nur dann gerechtfertigt, wenn es mindestens eine der folgenden Eigenschaften besitzt:

- erzeugt einen echten Zielkonflikt,
- bietet relevante Spezialisierung,
- verändert Risiko und Ergebnis,
- macht Informationen sichtbar,
- erlaubt unterschiedliche Strategien,
- besitzt langfristige Folgen.

Mikromanagement ist nicht gerechtfertigt, wenn es:

- dieselbe optimale Handlung ständig wiederholt,
- nur Klickarbeit erzeugt,
- keine bedeutende Entscheidung enthält,
- allein zur Verlängerung der Spielzeit dient,
- durch eine klare Regel ohne Verlust automatisiert werden könnte.

Delegation ist daher ein eigenes Designthema.

Der Spieler soll festlegen können:

- Ziele,
- Grenzen,
- Budgets,
- Prioritäten,
- Risikobereitschaft,
- Eskalationsregeln,
- Berichtstiefe.

---

## 13. Komplexität muss lesbar sein

Das Spiel darf tief sein, aber nicht absichtlich undurchsichtig.

Der Spieler muss für wichtige Ergebnisse nachvollziehen können:

- welche Ursachen entscheidend waren,
- welche Akteure gehandelt haben,
- welche Regeln angewendet wurden,
- welche Unsicherheit bestand,
- welche Konsequenzen eingetreten sind,
- was sich dadurch für die Zukunft verändert hat.

Erklärbarkeit benötigt mehrere Ebenen:

### 13.1 Soforterklärung

Eine kurze Antwort auf die Frage:

> Warum ist das gerade passiert?

### 13.2 Detailerklärung

Eine aufgeschlüsselte Darstellung relevanter Faktoren, Modifikatoren, Akteure und Ereignisse.

### 13.3 Systemerklärung

Eine verständliche Beschreibung der zugrunde liegenden Mechanik und möglicher Gegenstrategien.

Der Spieler soll nicht gezwungen sein, externe Wikis zu durchsuchen, um elementare Ursache-Wirkungs-Beziehungen zu verstehen.

---

## 14. Information ist Teil des Spiels

Nicht alle Informationen müssen vollständig oder sofort bekannt sein.

Unsicherheit kann strategisch wertvoll sein, wenn sie systemisch begründet und verständlich dargestellt wird.

Informationen können abhängig sein von:

- Geheimdiensten,
- diplomatischen Beziehungen,
- Verwaltungskapazität,
- Medienfreiheit,
- regionaler Kontrolle,
- Spionage,
- Statistikqualität,
- technologischen Fähigkeiten,
- Täuschung anderer Akteure.

Das Spiel muss jedoch zwischen drei Dingen klar unterscheiden:

1. unbekannte Information,
2. unsichere Schätzung,
3. technisch schlecht erklärte Information.

Undurchsichtige Benutzeroberflächen dürfen nicht als „Fog of War“ gerechtfertigt werden.

---

## 15. Die Welt handelt eigenständig

Die Spielwelt darf nicht auf den Spieler warten.

Nichtspieler-Akteure sollen:

- eigene Ziele besitzen,
- begrenzte Informationen verwenden,
- Prioritäten setzen,
- Pläne verfolgen,
- auf Krisen reagieren,
- Fehler machen,
- Risiken unterschiedlich bewerten,
- miteinander kooperieren und konkurrieren,
- ihre Strategien anpassen.

Nichtspieler-Akteure müssen nicht perfekt spielen.

Sie müssen nachvollziehbar spielen.

Ihre Entscheidungen sollen aus ihren Interessen, Fähigkeiten, Überzeugungen und Informationen entstehen.

Schwierigkeit soll nicht primär durch versteckte Boni erzeugt werden.

Sie soll vor allem aus besserer Planung, Koordination, Anpassung und Nutzung vorhandener Systeme entstehen.

---

## 16. Krieg ist wichtig, aber nicht das einzige Endspiel

Project 4X ist ein Grand-Strategy-Spiel und benötigt ein belastbares Militärsystem.

Krieg darf jedoch nicht jede Kampagne dominieren und nicht die einzige Form strategischen Erfolgs sein.

Militärische Macht muss mit folgenden Bereichen verbunden sein:

- Wirtschaft,
- Logistik,
- Technologie,
- Diplomatie,
- Legitimität,
- gesellschaftlicher Zusammenhalt,
- Rekrutierung,
- Geheimdienste,
- Besatzung,
- Kriegsziele,
- Nachkriegsordnung.

Eine militärisch erfolgreiche Kampagne kann politisch oder wirtschaftlich scheitern.

Eine kampfschwache Macht kann durch Diplomatie, Handel, Ideologie, Technologie oder Bündnisse erheblichen Einfluss gewinnen.

Das Design soll mehrere Formen von Macht und Erfolg unterstützen.

---

## 17. Entscheidungen brauchen Opportunitätskosten

Eine strategische Entscheidung ist nur dann bedeutend, wenn sie andere Möglichkeiten beeinflusst.

Kosten können bestehen aus:

- Geld,
- Ressourcen,
- Zeit,
- Personal,
- Verwaltungskapazität,
- politischem Kapital,
- Legitimität,
- Beziehungen,
- Geheimhaltung,
- militärischer Bereitschaft,
- öffentlicher Geduld,
- langfristiger Bindung.

Nicht jede Entscheidung benötigt jede Kostenart.

Wichtige Entscheidungen sollen jedoch selten kostenlos, sofort und folgenlos sein.

Der Spieler soll Prioritäten setzen müssen.

Ein Projekt, das alles gleichzeitig erlaubt, erzeugt keine Strategie.

---

## 18. Zeit ist eine Ressource

Große politische, wirtschaftliche und gesellschaftliche Veränderungen benötigen Zeit.

Zeit ermöglicht:

- Vorbereitung,
- Gegenmaßnahmen,
- Reaktionen anderer Akteure,
- Zwischenstände,
- Teil-Erfolge,
- Eskalation,
- Kurswechsel,
- Abbruch,
- unerwartete Ereignisse.

Das Spiel soll zwischen folgenden Formen unterscheiden können:

- sofortige Entscheidung,
- verzögerte Umsetzung,
- fortlaufendes Projekt,
- schrittweise Transformation,
- langfristiger Prozess.

Zeitbedarf darf nicht nur ein Ladebalken sein.

Während eines Prozesses muss die Welt weiter reagieren.

---

## 19. Scheitern muss interessant bleiben

Scheitern ist Teil der Simulation und darf nicht ausschließlich als Bestrafung gestaltet werden.

Ein gutes Scheitern:

- ist erklärbar,
- folgt aus erkennbaren Risiken,
- verändert den Zustand der Welt,
- eröffnet neue Entscheidungen,
- kann teilweise Fortschritt bewahren,
- kann neue Akteure oder Konflikte hervorbringen.

Beispiele:

- Eine gescheiterte Reform kann eine neue Oppositionsbewegung stärken.
- Ein verlorener Krieg kann eine Verfassungskrise auslösen.
- Eine gescheiterte Verschwörung kann Sicherheitsorgane stärken und Vertrauen zerstören.
- Ein wirtschaftliches Projekt kann technisch gelingen, aber soziale Unruhen erzeugen.

Totale, zufällige Vernichtung ohne vorher erkennbare Risiken soll vermieden werden.

---

## 20. Zufall erzeugt Unsicherheit, nicht Beliebigkeit

Zufall kann verwendet werden, um:

- Unsicherheit abzubilden,
- Variation zu erzeugen,
- begrenztes Wissen zu simulieren,
- gleichwertige Möglichkeiten aufzulösen,
- menschliches Verhalten weniger vorhersehbar zu machen.

Zufall darf nicht:

- zentrale Regeln ersetzen,
- beliebige Resultate erzeugen,
- Vorbereitung bedeutungslos machen,
- extreme Ergebnisse ohne Grundlage produzieren.

Wahrscheinlichkeiten sollen von nachvollziehbaren Faktoren abhängen.

Bei wichtigen Entscheidungen muss der Spieler Risiken erkennen oder abschätzen können.

---

## 21. Historische Plausibilität ist dynamisch

Historische Plausibilität bedeutet nicht, dass die Geschichte ihren bekannten Verlauf wiederholen muss.

Sie bedeutet, dass Ergebnisse aus den Bedingungen der Welt hervorgehen.

Je stärker ein Ergebnis vom Ausgangszustand abweicht, desto mehr Veränderung, Unterstützung, Ressourcen, Krisen oder Zeit kann es erfordern.

Ein radikales Ergebnis kann glaubwürdig sein, wenn die Kampagne glaubwürdige Voraussetzungen geschaffen hat.

Die Simulation soll deshalb nicht prüfen:

> Ist dieses Ergebnis historisch geschehen?

Sondern:

> Können die aktuellen Bedingungen dieses Ergebnis tragen?

---

## 22. Szenarios liefern Kontext, keine eigene Physik

Ein Szenario definiert insbesondere:

- Weltzustand,
- Karte,
- politische Entitäten,
- Institutionen,
- Ideologien,
- Charaktere,
- Technologien,
- Ressourcen,
- Konflikte,
- kulturelle und historische Besonderheiten,
- Startbeziehungen,
- Szenarioinhalte.

Das Szenario darf generische Systeme konfigurieren und spezialisieren.

Es soll jedoch keine vollständig separate Regellogik für gewöhnliche Kernmechaniken benötigen.

Kaiserreich ist das erste offizielle Szenario.

Es darf die Fähigkeiten der Engine demonstrieren, aber nicht ihre Grenzen definieren.

---

## 23. Modding ist ein Designkriterium

Ein System ist moddingfreundlich, wenn seine Inhalte und Regeln soweit wie sinnvoll:

- datengetrieben,
- dokumentiert,
- validierbar,
- erweiterbar,
- versionierbar,
- ohne Änderung des Kerncodes nutzbar sind.

Moddingfreundlichkeit bedeutet nicht, dass jede interne Funktion offen oder instabil sein muss.

Es bedeutet, dass Szenarien und gewöhnliche Inhalte über definierte Schnittstellen erstellt werden können.

Neue Systeme sollen früh prüfen:

- welche Daten konfigurierbar sind,
- welche IDs stabil sein müssen,
- welche Validierung benötigt wird,
- welche Abhängigkeiten sichtbar sein müssen,
- wie Migrationen behandelt werden.

---

## 24. KI verstärkt das Spiel, sie ist nicht das Spiel

Sprachmodelle können einen erheblichen Mehrwert schaffen.

Sie eignen sich besonders für:

- Interpretation natürlicher Sprache,
- kontextbezogene Erklärungen,
- Dialoge,
- Zeitungsartikel,
- Reden,
- Beraterberichte,
- Zusammenfassungen,
- Varianten narrativer Darstellung.

Sie eignen sich nicht als alleinige Quelle für:

- Spielregeln,
- Kosten,
- Erfolgswahrscheinlichkeiten,
- autoritative Weltzustände,
- Speicherstandänderungen,
- Land-KI,
- wirtschaftliche Berechnungen,
- Kampfauflösung.

Jede Kernfunktion benötigt einen nicht-sprachmodellbasierten Pfad.

Narrative Qualität darf skalieren.

Mechanische Vollständigkeit darf nicht vom verwendeten Modell abhängen.

---

## 25. Lokale und ältere Hardware sind reale Zielbedingungen

Performance ist kein nachträgliches Optimierungsproblem.

Sie beeinflusst das Design von Anfang an.

Systeme sollen:

- nur relevante Entitäten aktualisieren,
- unterschiedliche Simulationsfrequenzen unterstützen,
- stabile Ergebnisse zwischenspeichern,
- Datenänderungen statt Vollzustände verarbeiten,
- Hintergrundsimulation begrenzen können,
- Narrative von Simulation entkoppeln,
- kleine lokale Modelle ermöglichen,
- vollständig ohne LLM funktionieren.

Die höchste theoretische Detailtiefe ist nicht automatisch die beste Lösung.

Bevorzugt wird die geringste Komplexität, die das gewünschte strategische Verhalten glaubwürdig erzeugt.

---

## 26. Benutzeroberfläche ist Teil des Systems

Ein System ist nicht fertig, wenn es intern korrekt berechnet wird.

Es ist erst fertig, wenn der Spieler:

- seinen Zustand verstehen kann,
- relevante Handlungsoptionen erkennt,
- Folgen abschätzen kann,
- eine Entscheidung ausführen kann,
- das Ergebnis nachvollziehen kann.

Die Benutzeroberfläche soll bevorzugen:

- klare Hierarchien,
- vergleichbare Werte,
- sichtbare Trends,
- Ursachenketten,
- Prognosen mit Unsicherheit,
- Filter und Detailstufen,
- kontextbezogene Aktionen,
- verständliche Warnungen.

Komplexität darf nicht durch versteckte Regeln oder überladene Bildschirme erzeugt werden.

---

## 27. Inhalt muss Systeme sichtbar machen

Ereignisse, Charaktere und Szenariogeschichten sollen nicht neben dem Spiel existieren.

Sie sollen die Systeme ausdrücken, zuspitzen oder verständlich machen.

Ein gutes Ereignis:

- entsteht aus einem relevanten Zustand,
- zeigt beteiligte Akteure,
- präsentiert echte Entscheidungen,
- verändert Systeme,
- besitzt Konsequenzen über den Ereignistext hinaus.

Ein schlechtes Ereignis:

- tritt ohne nachvollziehbaren Zusammenhang auf,
- bietet nur eine offensichtliche Wahl,
- verteilt beliebige Boni,
- ersetzt eine fehlende Kernmechanik,
- ignoriert den aktuellen Weltzustand.

Narrativer Inhalt ist besonders wertvoll, wenn er den Spieler auf Entwicklungen aufmerksam macht, die in komplexen Systemen sonst verborgen bleiben könnten.

---

## 28. Kein System darf isoliert entworfen werden

Wichtige Systeme müssen ihre Beziehungen zu anderen Systemen dokumentieren.

Beispiele:

- Wirtschaft beeinflusst Politik, Militär und Diplomatie.
- Politik beeinflusst Verwaltung, Wirtschaft, Kriegführung und Forschung.
- Diplomatie beeinflusst Handel, Sicherheit und innere Legitimität.
- Krieg beeinflusst Bevölkerung, Wirtschaft, Institutionen und internationale Ordnung.
- Technologie verändert Produktionsweisen, Machtverteilung und gesellschaftliche Erwartungen.

Ein Systemdesign muss mindestens klären:

- welche Eingaben es erhält,
- welche Zustände es verwaltet,
- welche Ausgaben es erzeugt,
- welche anderen Systeme es beeinflusst,
- welche anderen Systeme es beeinflussen,
- wie der Spieler damit interagiert,
- wie Nichtspieler-Akteure es verwenden.

---

## 29. Balancing folgt der Vision

Balancing bedeutet nicht, dass alle Strategien gleich stark sein müssen.

Es bedeutet, dass:

- verschiedene Strategien unter geeigneten Bedingungen sinnvoll sind,
- Kosten und Nutzen nachvollziehbar bleiben,
- dominante Standardlösungen begrenzt werden,
- extreme Macht nachvollziehbare Voraussetzungen besitzt,
- Gegenstrategien existieren,
- Entscheidungen nicht trivial werden.

Historisch oder systemisch ungleiche Ausgangslagen sind zulässig.

Asymmetrie ist ausdrücklich erwünscht, wenn sie unterschiedliche Spielweisen erzeugt.

Ein kleiner Staat muss nicht dieselben Möglichkeiten wie eine Großmacht besitzen.

Er muss jedoch bedeutende eigene Strategien und Entwicklungspfade besitzen.

---

## 30. Prototypen dürfen unvollständig, aber nicht richtungslos sein

Project-Bible-driven Development darf Experimente nicht verhindern.

Ein Prototyp darf:

- vereinfachte Werte verwenden,
- Platzhalter enthalten,
- nur einen Teil eines Systems simulieren,
- eine Hypothese testen,
- vorläufige Benutzeroberflächen besitzen.

Ein Prototyp muss jedoch dokumentieren:

- welche Frage geprüft wird,
- welche Annahmen vorläufig sind,
- welche Teile nicht produktionsreif sind,
- anhand welcher Kriterien er bewertet wird,
- ob das Ergebnis in die Project Bible übernommen wird.

Prototypen sind Ausnahmen für Lernen, nicht Ausnahmen von der Vision.

---

## 31. Designprüfung neuer Features

Jedes größere Feature soll vor der Aufnahme anhand folgender Fragen geprüft werden:

1. Welche strategische Entscheidung erzeugt es?
2. Welche bestehende Designanforderung erfüllt es?
3. Welche Systeme beeinflusst es?
4. Kann es ohne LLM funktionieren?
5. Ist es szenariounabhängig oder klar als Szenarioinhalt getrennt?
6. Erzeugt es Zustandsänderungen oder nur isolierte Boni?
7. Wie werden Ursachen und Folgen erklärt?
8. Unterstützt es Delegation oder erzeugt es unnötiges Mikromanagement?
9. Welche Gegenstrategien existieren?
10. Wie verhält es sich bei Teil-Erfolg und Scheitern?
11. Welche Daten und Schnittstellen benötigen Modder?
12. Welche Performancekosten entstehen?

Ein Feature, das diese Fragen nicht beantworten kann, ist noch nicht ausreichend definiert.

---

## 32. Nicht-Ziele

Project 4X soll ausdrücklich nicht werden:

### 32.1 Kein reines Chatspiel

Der Spieler soll nicht hauptsächlich versuchen, ein Sprachmodell von gewünschten Ergebnissen zu überzeugen.

### 32.2 Kein starrer Geschichtsbaum

Die Kampagne soll nicht ausschließlich aus vorbereiteten, gegenseitig ausgeschlossenen Entwicklungspfaden bestehen.

### 32.3 Kein reines Kriegsspiel

Militärische Entscheidungen sind wichtig, dürfen aber Politik, Wirtschaft, Diplomatie und Gesellschaft nicht verdrängen.

### 32.4 Keine Tabellenkalkulation ohne Welt

Zahlen und Modelle müssen erkennbare Akteure, Zustände und Konsequenzen darstellen.

### 32.5 Keine künstliche Komplexität

Mehr Werte, Untermenüs oder Klicks sind nicht automatisch mehr Tiefe.

### 32.6 Keine KI-Autorität über den Spielzustand

Narrative Modelle dürfen keine verbindlichen Regeln oder Zustände frei erfinden.

### 32.7 Keine Kaiserreich-Hardcodierung

Das erste Szenario darf nicht zur versteckten Enginearchitektur werden.

### 32.8 Keine folgenlosen Entscheidungen

Wichtige Entscheidungen sollen die Welt und zukünftige Möglichkeiten sichtbar verändern.

---

## 33. Anforderungen

### REQ-DES-001 – Systemische Entstehung

Wichtige politische, wirtschaftliche, diplomatische und gesellschaftliche Entwicklungen müssen grundsätzlich aus Simulationszuständen und Systeminteraktionen entstehen können.

### REQ-DES-002 – Strukturierte Ausführung

Jede freie Spielerhandlung mit möglicher Zustandsänderung muss vor Ausführung in eine strukturierte und validierbare Aktion übersetzt werden.

### REQ-DES-003 – Autoritativer Zustand

Nur deterministische oder ausdrücklich kontrollierte Simulationslogik darf den autoritativen Spielzustand verändern.

### REQ-DES-004 – Nicht-LLM-Pfad

Jede Kernfunktion muss ohne Sprachmodell vollständig nutzbar sein.

### REQ-DES-005 – Szenariotrennung

Szenariospezifische Inhalte und Regeln müssen von generischen Engine-Systemen getrennt bleiben.

### REQ-DES-006 – Erklärbarkeit

Für jede bedeutende Zustandsänderung muss eine spielerseitig zugängliche Ursachen- und Folgenbeschreibung verfügbar sein.

### REQ-DES-007 – Strategische Kosten

Bedeutende Aktionen müssen angemessene Kosten, Risiken, Zeitbindungen oder Opportunitätskosten besitzen.

### REQ-DES-008 – Teil-Ergebnisse

Systeme für komplexe Vorhaben müssen, wo sinnvoll, Teil-Erfolg, Verzögerung, Eskalation und veränderte Umsetzung unterstützen.

### REQ-DES-009 – Eigenständige Akteure

Nichtspieler-Akteure müssen eigene Ziele, Informationen und Handlungslogik besitzen.

### REQ-DES-010 – Delegierbarkeit

Wiederkehrende operative Tätigkeiten müssen, sofern sie keine eigenständige strategische Entscheidung darstellen, delegierbar oder automatisierbar sein.

### REQ-DES-011 – Persistente Transformation

Grundlegende politische, gesellschaftliche und wirtschaftliche Veränderungen müssen als persistente Zustandsänderungen modelliert werden und dürfen nicht ausschließlich aus temporären Modifikatoren bestehen.

### REQ-DES-012 – Systemintegration

Jedes größere Spielsystem muss seine Eingaben, Ausgaben, Abhängigkeiten und Auswirkungen auf andere Systeme dokumentieren.

---

## 34. Entscheidungsregeln bei Zielkonflikten

Wenn Designziele miteinander konkurrieren, gilt folgende Priorität:

1. Konsistenz des autoritativen Spielzustands,
2. strategische Bedeutung der Spielerentscheidung,
3. Erhalt glaubwürdiger Ursache-Wirkungs-Beziehungen,
4. Verständlichkeit und Erklärbarkeit,
5. Szenariounabhängigkeit der Kernsysteme,
6. Offline-Spielbarkeit,
7. Moddingfähigkeit,
8. narrative Qualität,
9. zusätzliche Detailtiefe.

Diese Reihenfolge ist kein automatischer Algorithmus.

Sie legt fest, welche Werte bei unvermeidbaren Kompromissen besonders geschützt werden müssen.

Beispiel:

Eine narrative Variante darf vereinfacht werden, um den autoritativen Zustand konsistent zu halten.

Eine zusätzliche Simulationsebene darf entfallen, wenn sie hohe Komplexität erzeugt, aber keine relevante strategische Entscheidung verbessert.

---

## 35. Akzeptanzkriterien

PB-003 gilt als umgesetzt, wenn zukünftige Design- und Technikdokumente:

- ihre strategische Funktion benennen,
- systemische Ursachen und Folgen beschreiben,
- LLM- und Nicht-LLM-Pfade trennen,
- Szenarioinhalt und Enginefunktion unterscheiden,
- Zustandsänderungen definieren,
- Abhängigkeiten dokumentieren,
- Teil-Erfolg und Scheitern berücksichtigen,
- Erklärbarkeit und UI-Anforderungen enthalten,
- Performance und Modding mitbewerten.

Einzelne Systeme können unterschiedliche Schwerpunkte besitzen.

Sie dürfen jedoch nicht stillschweigend gegen die hier definierten Grundprinzipien arbeiten.

---

## 36. Zusammenfassung

Project 4X soll seine Freiheit nicht aus fehlenden Regeln gewinnen.

Es soll Freiheit durch ausreichend allgemeine, miteinander verbundene Regeln ermöglichen.

Der Spieler beschreibt Ziele und setzt Handlungen in Gang.

Institutionen, Akteure, Ressourcen, Zeit und Widerstände bestimmen, was daraus wird.

Szenarien liefern Identität und Ausgangslage.

Systeme erzeugen Verlauf.

Narrative Darstellung macht das Ergebnis verständlich und lebendig.

> **Der Spieler formt Geschichte. Die Simulation macht sie glaubwürdig.**

> **Baue Systeme. Lass Geschichte entstehen.**


# Versionshistorie

| Version | Datum | Status | Änderung |
|---|---|---|---|
| 1.0.2 | 2026-08-16 | Canonical | Unmittelbar anwendbare Accepted Decisions gemäß AD-010 für WP-005 ergänzt. |
