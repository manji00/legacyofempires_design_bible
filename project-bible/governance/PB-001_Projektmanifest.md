---
document_id: PB-001
title: Projektmanifest
version: 2.0.0
status: Canonical
category: Governance
document_type: Manifest
language: de
created: 2026-08-05
updated: 2026-08-17
owners:
  - Project Lead
reviewers: []
source_of_truth: true
supersedes: []
superseded_by: null
depends_on:
  - CTX-000
  - PB-000
related_documents:
  - PB-002
  - PB-003
systems: []
requirements: []
design_goals: []
architecture_decisions:
  - AD-016
normative_content:
  - entry_id: PB001-PROJECT-IDENTITY-OWNER
    topic_id: project-identity-and-why
    classification: OWNED NORMATIVE STATEMENT
    normative_home: PB-001
tags:
  - grand-strategy
  - emergent-history
  - sandbox
  - political-simulation
  - scenario-first
  - offline-first
  - deterministic-simulation
  - optional-ai
audience:
  - Human Collaborators
  - Designers
  - Developers
  - AI Assistants
  - Modders
  - Testers
  - Future Maintainers
canonical_path: project-bible/governance/PB-001_Projektmanifest.md
context_priority: critical
---

# PB-001 – Das Projektmanifest

> **Baue Systeme. Lass Geschichte entstehen.**

---

## 1. Zweck und Geltungsbereich

Dieses Manifest definiert den grundlegenden Charakter des Projekts.

Es beantwortet die Frage:

> **Warum wird dieses Spiel entwickelt und welche Prinzipien dürfen bei seiner Umsetzung nicht verloren gehen?**

PB-001 beschreibt keine vollständigen Spielmechaniken, Datenmodelle oder technischen Implementierungen. Diese werden in nachgeordneten Game-Design-, Technik-, Balancing- und Entwicklungsdokumenten festgelegt.

Das Manifest dient als dauerhafte Leitlinie für:

- Produktentscheidungen,
- Spielsysteme,
- technische Architektur,
- Szenarioentwicklung,
- Benutzeroberfläche,
- Modding,
- KI-Integration,
- Performanceziele.

Ein neues Feature darf die hier festgelegten Grundsätze konkretisieren, aber nicht stillschweigend ersetzen.

Bei Widersprüchen muss die Entscheidung dokumentiert und das betroffene kanonische Dokument ausdrücklich überarbeitet werden.

### 1.1 Normative Content Ownership

**Klassifikation: OWNED NORMATIVE STATEMENT.** PB-001 ist gemäß AD-016 die
alleinige normative Heimat für Projektidentität, Projektzweck, fundamentalen
Projektcharakter und das unverlierbare Projekt-Warum. Dazu gehören in diesem
Dokument insbesondere die Abschnitte 2 bis 5 sowie die projektweiten
Grundsätze in den Abschnitten 11 bis 13 und 19. Ihre fachliche Bedeutung bleibt
unverändert.

PB-002 und PB-003 konkretisieren diese Basis ausschließlich innerhalb ihrer
eigenen Ownership-Domänen. CTX-000 gibt Teile davon nur als abgeleitete
operative Zusammenfassung wieder. Bei jeder Abweichung einer solchen
Darstellung hat PB-001 für die hier besessene normative Funktion ausnahmslos
Vorrang.

---

## 2. Warum dieses Projekt existiert

Klassische Grand-Strategy-Spiele bieten stabile Regeln, nachvollziehbare Systeme und langfristige strategische Entscheidungen. Gleichzeitig begrenzen sie den Spieler häufig auf vorbereitete Staaten, Ideologien, Regierungsformen, Ereignisketten und historische Entwicklungspfade.

Rein sprachmodellgetriebene Strategiespiele bieten größere Freiheit. Ihre Welten bleiben jedoch oft inkonsistent, ihre Regeln sind unscharf und ihre Ergebnisse hängen zu stark von Formulierungen oder dem verwendeten Modell ab. Der Spieler beschreibt dann vor allem Aktionen, anstatt ein belastbares Spielsystem zu beherrschen.

Dieses Projekt verbindet die Stärken beider Ansätze:

> **Deterministische Systeme schaffen Verlässlichkeit.**
>
> **Offene Handlungsmöglichkeiten schaffen Freiheit.**
>
> **Eine optionale narrative KI schafft Ausdruck, Atmosphäre und Zugänglichkeit.**

Das Ziel ist kein Chat mit einer historischen Kulisse.

Das Ziel ist ein echtes Grand-Strategy-Spiel, dessen Systeme auch ungewöhnliche Pläne, politische Umbrüche und neue Gesellschaftsordnungen glaubwürdig verarbeiten können.

---

## 3. Die zentrale Vision

Das Projekt ist eine:

> **szenariogetriebene Grand-Strategy-Sandbox für emergente Geschichte.**

Der Spieler soll nicht nur zwischen vorbereiteten historischen Abzweigungen wählen.

Er soll Gesellschaften, Staaten, Machtstrukturen und Ideologien durch strategisches Handeln verändern können.

Regierungen können reformiert oder gestürzt werden.

Staaten können sich teilen, vereinigen, neu gründen oder ihre politische Identität vollständig verändern.

Interessengruppen können aufsteigen oder zerfallen.

Wirtschaftliche Entscheidungen können soziale Umbrüche auslösen.

Diplomatische Ordnungen können entstehen, erstarren und zusammenbrechen.

Die Welt soll nicht lediglich alternative Geschichte darstellen.

Sie soll die Entstehung neuer Geschichte simulieren.

---

## 4. Emergent History

Geschichte ist im Projekt weder ein starres Skript noch eine beliebige Erzählung.

Sie entsteht aus dem Zusammenspiel von:

- politischen Institutionen,
- gesellschaftlichen Gruppen,
- wirtschaftlichen Interessen,
- Ressourcen,
- Technologien,
- Diplomatie,
- Konflikten,
- regionalen Bedingungen,
- langfristigen Entscheidungen,
- unvorhergesehenen Krisen.

Historische und fiktionale Szenarien liefern den Ausgangszustand, nicht das vorgeschriebene Endergebnis.

Ein Szenario darf historische Spannung, Persönlichkeiten, Konflikte und Wahrscheinlichkeiten definieren. Es darf den Verlauf einer Kampagne jedoch nicht auf einen einzigen vorgesehenen Pfad reduzieren.

> **Der Spieler formt Geschichte. Die Simulation macht sie glaubwürdig.**

---

## 5. Die vier unverzichtbaren Projektpfeiler

Alle vier Pfeiler sind notwendig.

Keiner darf dauerhaft durch einen anderen ersetzt werden.

### 5.1 Grand-Strategy-Kern

Das Spiel benötigt einen belastbaren mechanischen Kern.

Dazu gehören insbesondere:

- Wirtschaft,
- Produktion,
- Handel,
- Diplomatie,
- Kriegführung,
- Logistik,
- Forschung,
- Nachrichtendienste,
- Projekte,
- strategische Planung,
- Karteninteraktion,
- Zeitfortschritt,
- eigenständig handelnde Länder und Akteure.

Der Grand-Strategy-Kern muss verständliche Entscheidungen, langfristige Planung und erkennbare Konsequenzen ermöglichen.

Das Spiel muss ohne Sprachmodell vollständig spielbar sein.

### 5.2 Politische Grand Strategy

Politik ist kein Bonuswert und keine reine Ereigniskulisse.

Sie ist ein zentrales Spielsystem.

Dazu gehören insbesondere:

- Regierungsformen,
- Verfassungen,
- Parteien,
- Interessengruppen,
- Fraktionen,
- Ministerien,
- Kabinette,
- Legitimität,
- regionale Loyalität,
- Reformen,
- Machtkämpfe,
- Staatsstreiche,
- Revolutionen,
- Bürgerkriege,
- gesellschaftliche Transformation.

Politische Entscheidungen müssen reale wirtschaftliche, diplomatische, militärische und gesellschaftliche Folgen besitzen.

Der Spieler soll nicht nur einen bestehenden Staat verwalten, sondern seine institutionelle und gesellschaftliche Ordnung verändern können.

### 5.3 Sandbox

Das Spiel muss Handlungen zulassen, die nicht vollständig durch vorbereitete Menüs und Fokusbäume vorhergesehen wurden.

Dafür existieren drei Handlungsebenen:

1. strukturierte Standardaktionen für häufige Entscheidungen,
2. konfigurierbare Aktionen für komplexe Vorhaben,
3. freie Aktionsvorschläge für ungewöhnliche Pläne.

Freiheit bedeutet nicht garantierten Erfolg.

Jede Aktion wird anhand der Spielwelt bewertet, darunter:

- Voraussetzungen,
- Ressourcen,
- Unterstützung,
- Widerstand,
- Zeitbedarf,
- Risiko,
- Plausibilität,
- unmittelbare und langfristige Konsequenzen.

Das System soll dem Spieler nicht erklären, dass eine ungewöhnliche Handlung „nicht vorgesehen“ ist. Es soll bestimmen, unter welchen Bedingungen sie versucht werden kann und was daraus folgt.

### 5.4 Narrative Ebene

Die narrative Ebene macht die Simulation lesbar, lebendig und persönlich.

Sie kann unter anderem erzeugen:

- diplomatische Schreiben,
- Zeitungsberichte,
- Reden,
- Beratergespräche,
- politische Debatten,
- Ereignisbeschreibungen,
- Lageberichte,
- Kampagnenchroniken.

Diese Ebene ist optional.

Sie interpretiert die Simulation, besitzt aber keine eigene Autorität über den Spielzustand.

Narrative Darstellung darf mechanische Regeln nicht überschreiben.

---

## 6. Die Rolle des Spielers

Der Spieler ist nicht zwingend eine einzelne historische Person.

Er verkörpert die strategische Führung beziehungsweise den langfristigen politischen Willen einer spielbaren Entität.

Welche konkrete Rolle daraus entsteht, kann vom Szenario und vom politischen System abhängen.

Der Spieler kann direkten Einfluss besitzen, Kompetenzen delegieren, Institutionen verändern oder durch politische Widerstände eingeschränkt werden.

Die genaue Ausgestaltung der Spielerrolle wird in einem eigenen Game-Design-Dokument festgelegt.

Dieses Manifest legt nur den Grundsatz fest:

> **Der Spieler soll Staaten und Gesellschaften gestalten können, ohne die Welt vollständig zu kontrollieren.**

---

## 7. Systeme statt vorgegebener Pfade

Das Projekt bevorzugt Systeme, die Ereignisse hervorbringen, gegenüber Skripten, die Ergebnisse erzwingen.

Ein Wirtschaftseinbruch soll möglichst aus wirtschaftlichen Bedingungen entstehen.

Eine Revolution soll möglichst aus gesellschaftlichen Spannungen, politischer Schwäche, Organisation und Gelegenheit entstehen.

Ein Bündnis soll möglichst aus Interessen, Bedrohungen und Vertrauen entstehen.

Ein Bürgerkrieg soll möglichst aus tatsächlicher innerer Spaltung entstehen.

Skripte bleiben zulässig, wenn sie:

- einen Szenariostart definieren,
- historische oder fiktionale Besonderheiten abbilden,
- seltene Inhalte inszenieren,
- systemische Entwicklungen unterstützen,
- keine universellen Grundregeln umgehen.

> **Skripte geben Kontext. Systeme erzeugen Verlauf.**

---

## 8. Konsequenzen statt isolierter Boni

Entscheidungen sollen mehrere miteinander verbundene Systeme beeinflussen.

Eine Reform ist nicht nur ein Prozentwert.

Sie verändert Machtverhältnisse, Erwartungen, Institutionen, Finanzierung, Umsetzungskapazität und gesellschaftliche Unterstützung.

Eine wirtschaftliche Maßnahme verändert nicht nur Produktion.

Sie kann Beschäftigung, Preise, Handel, regionale Entwicklung, politische Loyalität und staatliche Einnahmen beeinflussen.

Komplexität entsteht nicht durch möglichst viele Werte auf dem Bildschirm.

Sie entsteht durch verständliche Zusammenhänge und konkurrierende Interessen.

Der Spieler soll erkennen können:

- was er entschieden hat,
- warum ein Ergebnis eingetreten ist,
- welche Akteure davon profitieren,
- welche neuen Möglichkeiten oder Risiken entstanden sind.

---

## 9. Strategische Führung statt unnötiger Mikrokontrolle

Der Spieler soll bedeutende Ziele, Prioritäten und politische Richtungen festlegen.

Untergeordnete Akteure, Institutionen und automatisierbare Systeme übernehmen die routinemäßige Ausführung, sofern der Spieler sie nicht bewusst selbst steuern möchte.

Das Projekt vermeidet Mikromanagement, das keine relevanten Entscheidungen erzeugt.

Detailtiefe ist sinnvoll, wenn sie:

- echte Zielkonflikte erzeugt,
- Informationen sichtbar macht,
- Spezialisierung ermöglicht,
- unterschiedliche Strategien unterstützt,
- Konsequenzen nachvollziehbar macht.

Detailtiefe ist nicht sinnvoll, wenn sie nur wiederholte Klicks erzeugt.

Delegation, Automatisierung und konfigurierbare Prioritäten sind daher keine Komfortfunktionen am Rand, sondern Bestandteil des Spielkonzepts.

---

## 10. Eine eigenständige Welt

Die Spielwelt existiert unabhängig vom Spieler.

Andere Staaten, politische Gruppen, Institutionen, Unternehmen und Charaktere verfolgen eigene Ziele und reagieren auf veränderte Bedingungen.

Sie dürfen:

- kooperieren,
- konkurrieren,
- Fehler machen,
- Risiken falsch einschätzen,
- Bündnisse wechseln,
- Reformen blockieren,
- Krisen verschärfen,
- neue Ordnungen schaffen.

Der Spieler ist ein mächtiger Einflussfaktor, aber nicht der einzige Ursprung von Veränderung.

Eine gute Kampagne erzeugt auch außerhalb des unmittelbaren Sichtfelds des Spielers nachvollziehbare Entwicklungen.

---

## 11. Scenario-First

Das Projekt ist keine fest eingebaute Kaiserreich-Simulation.

Kaiserreich ist das erste offizielle Szenario, nicht die Identität der Engine.

Die Engine kennt allgemeine Konzepte wie:

- Staat,
- Region,
- Regierung,
- Ideologie,
- Charakter,
- Ressource,
- Technologie,
- Bündnis,
- Projekt,
- Ereignis,
- Szenario.

Szenariospezifische Inhalte gehören in Szenariopakete.

Dazu zählen beispielsweise:

- Länder,
- Fraktionen,
- historische Personen,
- Ideologien,
- Startkonflikte,
- Ereignisse,
- Grafiken,
- Texte,
- Technologien,
- Ressourcenverteilungen,
- KI-Profile.

Die Engine darf keine Kaiserreich-spezifischen Annahmen benötigen, um korrekt zu funktionieren.

Zukünftige historische, alternative, fiktionale und von der Community erstellte Szenarien müssen dieselben Kernsysteme verwenden können.

> **Die Engine fragt, welches Szenario geladen ist – niemals, ob es Kaiserreich ist.**

---

## 12. Die Simulation entscheidet. Die KI erzählt.

Der autoritative Spielzustand gehört ausschließlich der Simulation.

Die Simulation entscheidet insbesondere über:

- Kosten,
- Voraussetzungen,
- Erfolg und Scheitern,
- Zustandsänderungen,
- politische Folgen,
- wirtschaftliche Folgen,
- diplomatische Reaktionen,
- Kämpfe,
- Projekte,
- Ereignisauslöser,
- Handlungen computergesteuerter Akteure.

Ein Sprachmodell darf:

- natürliche Sprache in strukturierte Aktionsvorschläge übersetzen,
- Dialoge und Berichte verfassen,
- Zusammenhänge erklären,
- Ereignisse zusammenfassen,
- Rollen darstellen,
- Atmosphäre erzeugen.

Ein Sprachmodell darf nicht:

- den Spielzustand stillschweigend verändern,
- Regeln umgehen,
- Erfolg allein aufgrund überzeugender Formulierung gewähren,
- historische Fakten des geladenen Szenarios eigenmächtig ersetzen,
- mechanische Ergebnisse neu erfinden.

Jede freie Texteingabe muss vor ihrer Ausführung in eine prüfbare, strukturierte Aktion übersetzt werden.

> **Die Simulation entscheidet. Die KI erzählt.**

---

## 13. Offline-First und optionale KI

Das Spiel muss ohne Cloud-Dienst und ohne Sprachmodell spielbar bleiben.

Unterstützte Betriebsweisen sollen langfristig umfassen:

1. vollständig offline ohne LLM,
2. leichtgewichtige lokale Sprachmodelle,
3. hybride lokale und entfernte Dienste,
4. leistungsfähige lokale oder Cloud-basierte narrative Modelle.

Der verwendete Narrative Provider darf keine anderen mechanischen Ergebnisse erzeugen.

Jedes Kernfeature benötigt einen nichtsprachmodellbasierten Pfad.

> **Funktioniert ein Kernsystem ohne KI nicht, ist es unvollständig.**

---

## 14. Performance ist Teil des Designs

Eine komplexe Simulation ist nur wertvoll, wenn sie zuverlässig und flüssig ausgeführt werden kann.

Das Projekt berücksichtigt deshalb von Beginn an:

- ältere und schwächere Hardware,
- begrenzte Arbeitsspeicher- und CPU-Ressourcen,
- skalierbare Simulationsdetailtiefe,
- vermeidbare Berechnungen,
- relevante statt vollständige KI-Kontexte,
- Zustandsdifferenzen statt vollständiger Weltbeschreibungen,
- Caching stabiler Informationen,
- begrenzte und gezielte Sprachmodellaufrufe.

Grafik, Atmosphäre und narrative Tiefe dürfen ausgebaut werden, ohne die mechanische Spielbarkeit unnötig zu gefährden.

Performance ist keine spätere Optimierungsphase.

Sie ist eine Designanforderung.

---

## 15. Datengetriebenes Modding

Szenarien und Inhalte sollen so weit wie sinnvoll datengetrieben definiert werden.

Modder sollen neue Inhalte erstellen können, ohne den Kern der Engine zu verändern.

Dazu gehören langfristig unter anderem:

- Szenarien,
- Staaten,
- Regionen,
- Regierungsformen,
- Ideologien,
- Parteien,
- Interessengruppen,
- Technologien,
- Ressourcen,
- Projekte,
- Charaktere,
- Ereignisse,
- Grafiken,
- Lokalisierungen,
- KI-Profile.

Modding ist kein nachträglicher Zusatz.

Die Trennung zwischen Engine und Szenario ist eine grundlegende Voraussetzung für das Projekt.

---

## 16. Glaubwürdigkeit, Spielbarkeit und Balance

Glaubwürdigkeit bedeutet nicht, dass jedes Szenario fair oder jeder Staat gleich stark sein muss.

Glaubwürdigkeit bedeutet, dass Ergebnisse aus erkennbaren Bedingungen entstehen und innerhalb der Spielwelt nachvollziehbar bleiben.

Balance darf asymmetrisch sein.

Schwierige Ausgangslagen, strukturelle Nachteile und ungleiche Machtverhältnisse gehören zu Grand Strategy.

Gleichzeitig darf das Spiel Glaubwürdigkeit nicht als Begründung für schlechte Benutzerführung, bedeutungslose Entscheidungen oder unvermeidbare Niederlagen verwenden.

Das Projekt strebt deshalb an:

- glaubwürdige Ausgangslagen,
- transparente Regeln,
- strategisch interessante Handlungsräume,
- nachvollziehbare Risiken,
- mehrere gangbare Lösungswege,
- keine künstliche Gleichmacherei.

---

## 17. Was dieses Projekt nicht werden soll

Das Projekt ist nicht:

- ein reiner Chat mit zufälligen Ergebnissen,
- ein traditionelles Grand-Strategy-Spiel mit lediglich zusätzlichem Textgenerator,
- eine fest verdrahtete Kaiserreich-Anwendung,
- eine lineare Sammlung historischer Fokusbäume,
- eine reine Kriegssimulation,
- eine politische Simulation ohne wirtschaftliche und strategische Konsequenzen,
- eine Weltsimulation, die der Spieler nur beobachtet,
- ein System, in dem gute Prompt-Formulierungen Spielregeln ersetzen,
- ein Projekt, dessen Dokumentation die Entwicklung dauerhaft blockiert.

---

## 18. Erfolgskriterien

Das Projekt ist seinem Manifest treu, wenn Spieler nach einer Kampagne nicht nur aufzählen, welche vorbereiteten Entscheidungen sie ausgewählt haben, sondern erzählen, wie ihre Welt entstanden ist.

Beispiele:

> „Ich habe eine zerfallende Monarchie nicht einfach demokratisiert. Ich musste erst regionale Eliten einbinden, das Militär neutralisieren und eine neue Verfassung durch mehrere Krisen retten.“

> „Ein Handelskonflikt führte zu Versorgungsknappheit, Radikalisierung und schließlich zur Entstehung eines Staatenbundes, den das Szenario nie vorgegeben hatte.“

> „Mein Plan war möglich, aber nicht kostenlos. Er veränderte die Gesellschaft stärker, als ich erwartet hatte.“

Der Erfolg zeigt sich daran, dass:

- Kampagnen unterschiedliche historische Verläufe hervorbringen,
- ungewöhnliche Strategien mechanisch verarbeitet werden können,
- politische Transformation echtes Gameplay ist,
- die Welt unabhängig vom Spieler handelt,
- Ergebnisse nachvollziehbar bleiben,
- das Spiel ohne LLM funktioniert,
- narrative KI die Erfahrung verbessert, aber nicht kontrolliert.

---

## 19. Verbindliche Leitsätze

Die folgenden Aussagen fassen das Manifest zusammen:

> **Baue Systeme. Lass Geschichte entstehen.**

> **Der Spieler formt Geschichte. Die Simulation macht sie glaubwürdig.**

> **Spieler sollen Zivilisationen und Gesellschaften gestalten, nicht nur bestehende Staaten verwalten.**

> **Freiheit erlaubt den Versuch. Systeme bestimmen den Preis und die Folgen.**

> **Die Simulation entscheidet. Die KI erzählt.**

> **Kaiserreich ist das erste Szenario, nicht die Engine.**

> **Funktioniert ein Kernsystem ohne KI nicht, ist es unvollständig.**

---

## 20. Auswirkungen auf nachgeordnete Dokumente

Alle nachgeordneten Dokumente müssen zeigen, wie sie die Grundsätze dieses Manifests unterstützen.

Besonders zu beachten sind:

- PB-002 für die ausführliche Produktvision,
- PB-003 für die Designphilosophie und Entscheidungsregeln,
- Game-Design-Dokumente für konkrete Spielerhandlungen und Systeme,
- TECH-Dokumente für deterministische Simulation, Scenario-First und Offline-First,
- Content-Dokumente für szenariospezifische Inhalte,
- Balancing-Dokumente für nachvollziehbare Konsequenzen und asymmetrische Spielbarkeit,
- Development-Dokumente für Performance, Tests und Implementierungsreihenfolge.

PB-001 besitzt Vorrang als Manifest, ersetzt jedoch keine detaillierte Spezifikation.

Es darf nicht verwendet werden, um offene Designfragen ohne eigenes Dokument vorzeitig zu schließen.

---

## 21. Änderungsverlauf

| Version | Datum | Status | Änderung |
|---|---|---|---|
| 2.0.0 | 2026-08-17 | Canonical | Korrigiert den gemäß PB-000 erforderlichen MAJOR-Schritt für die mit AD-016 geänderte autoritative Ownership- und Dokumentgrenze und registriert die bestehende Ownership maschinenlesbar; fachliche Inhalte unverändert erhalten. |
| 1.1.0 | 2026-08-17 | Canonical | Normative Heimat für Projektidentität, Zweck, fundamentalen Charakter und unverlierbares Warum gemäß AD-016 eindeutig ausgewiesen; Inhalte unverändert erhalten. |
| 0.1 | 2026-08-05 | Superseded | Erste Manifestfassung vor Anwendung des Project-Bible-Standards. |
| 1.0 | 2026-08-05 | Active | Vollständige Neufassung gemäß Project-Bible-Regeln und kanonischem Projektkontext. |
