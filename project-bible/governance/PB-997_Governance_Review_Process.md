---
document_id: PB-997
title: Governance Review Process
version: 1.0.0
status: Canonical
category: Governance
created: 2026-08-06
updated: 2026-08-06
owners:
  - Project Lead
reviewers: []
audience:
  - Human Collaborators
  - Developers
  - AI Assistants
  - Modders
  - Testers
  - Future Maintainers
source_of_truth: true
supersedes: []
superseded_by: null
depends_on:
  - PB-000
  - PB-004
  - PB-998
  - PB-999
related_documents:
  - PB-004
  - PB-998
  - PB-999
systems: []
requirements: []
design_goals: []
tags:
  - governance
  - review
  - quality-assurance
  - release
  - approval
canonical_path: project-bible/governance/PB-997_Governance_Review_Process.md
context_priority: critical
---

# PB-997 – Governance Review Process

## Inhaltsverzeichnis

1. [Zweck](#1-zweck)
2. [Geltungsbereich](#2-geltungsbereich)
3. [Review-Phasen](#3-review-phasen)
4. [Review-Regeln](#4-review-regeln)
5. [Freigabeprozess](#5-freigabeprozess)
6. [Qualitätskriterien](#6-qualitätskriterien)
7. [Rollen und Verantwortlichkeiten](#7-rollen-und-verantwortlichkeiten)
8. [Abschluss des Reviews](#8-abschluss-des-reviews)

# 1 Zweck

PB-997 definiert den verbindlichen Review- und Freigabeprozess für Governance-Dokumente der Project Bible. Der Prozess schafft eine einheitliche, wiederholbare und nachweisbare Qualitätssicherung zwischen inhaltlicher Fertigstellung und Veröffentlichung eines freigegebenen Dokumentstands.

Das Governance Review prüft ausschließlich, ob ein vorgelegter Stand die geltenden formalen, terminologischen, redaktionellen und Governance-bezogenen Anforderungen erfüllt. Es entscheidet nicht über neue Inhalte, Gameplaymechaniken, technische Implementierungen, Architektur oder Projektplanung.

Jedes Review muss einen eindeutig identifizierbaren Dokumentstand, dokumentierte Prüfergebnisse, nachvollziehbare Befunde und eine ausdrückliche Freigabeentscheidung besitzen. Dadurch bleibt erkennbar, was geprüft wurde, welche Korrekturen erforderlich waren und warum ein Stand freigegeben oder abgelehnt wurde.

# 2 Geltungsbereich

Dieser Prozess gilt verbindlich für alle neu erstellten sowie wesentlich geänderten Dokumente der PB-Serie, bevor sie als freigegebener Governance-Stand veröffentlicht werden. Er gilt ebenso für die erneute Freigabe nach einer Änderung, wenn Status, Version oder Umfang des Dokuments ein neues Governance Review erfordern.

Reine Korrekturen ohne Auswirkung auf Aussage, Geltungsbereich oder Verbindlichkeit dürfen im Rahmen der nach PB-000 zulässigen leichten Prüfung bearbeitet werden. Sobald eine Änderung normative Aussagen, Dokumentgrenzen, Abhängigkeiten, Freigabekriterien oder Governance-Verantwortlichkeiten berührt, ist der vollständige Prozess dieses Dokuments anzuwenden.

Der Prozess kann später durch eine ausdrückliche Governance-Festlegung auf weitere Dokumentfamilien ausgedehnt werden, insbesondere auf:

- GD-Serie,
- TECH-Serie,
- CNT-Serie.

Bis zu einer solchen Festlegung ist PB-997 für diese Serien eine empfohlene Prüfgrundlage, aber kein automatisch verbindlicher Releaseprozess. Familienbezogene Zusatzkriterien dürfen den Prozess spezialisieren, jedoch keine seiner verbindlichen Phasen oder Freigabebedingungen stillschweigend aufheben.

# 3 Review-Phasen

Das Governance Review besteht aus fünf Phasen. Jede Phase besitzt einen eigenen Prüfumfang, dokumentierte Ergebnisse und ein Abschlusskriterium. Eine Phase ist erst abgeschlossen, wenn alle anwendbaren Prüfpunkte bearbeitet, alle freigabeverhindernden Befunde behoben und die Ergebnisse nachvollziehbar festgehalten wurden.

## 3.1 Phase 1 – Structure Review

Das Structure Review prüft, ob das Dokument vollständig, geordnet und eindeutig navigierbar ist.

Geprüft werden mindestens:

- Dokumentstruktur,
- vorhandene und erforderliche Kapitel,
- logische Reihenfolge der Kapitel,
- konsistente Nummerierung,
- Vollständigkeit und Funktionsfähigkeit des Inhaltsverzeichnisses.

Die Phase ist abgeschlossen, wenn die Struktur dem Zweck und Geltungsbereich des Dokuments entspricht, keine erforderlichen Abschnitte fehlen und Inhaltsverzeichnis, Überschriften und Nummerierung miteinander übereinstimmen.

## 3.2 Phase 2 – Terminology Review

Das Terminology Review prüft die sprachliche und referenzielle Konsistenz mit den geltenden Benennungs- und Terminologieregeln.

Geprüft werden mindestens:

- Verwendung kanonischer Begriffe,
- doppelte oder konkurrierende Begriffe,
- nicht begründete Synonyme,
- Vollständigkeit und Auflösbarkeit von Cross References,
- Konsistenz mit PB-004.

Die Phase ist abgeschlossen, wenn keine ungeklärte Mehrdeutigkeit, keine konkurrierende Benennung und keine fehlerhafte oder nicht auflösbare Referenz verbleibt. PB-997 legt dabei keine Begriffe fest; maßgeblich ist PB-004.

## 3.3 Phase 3 – Editorial Review

Das Editorial Review prüft die redaktionelle Qualität des vollständigen Dokumentstands.

Geprüft werden mindestens:

- Sprache,
- Stil,
- Lesbarkeit,
- vermeidbare Wiederholungen,
- eindeutige und verbindliche Formulierungen,
- Glossarkonsistenz.

Die Phase ist abgeschlossen, wenn der Text verständlich, widerspruchsfrei und dem Zweck entsprechend präzise formuliert ist und keine freigaberelevanten redaktionellen Befunde verbleiben.

## 3.4 Phase 4 – Technical Review

Das Technical Review prüft die formale und maschinenlesbare Dokumentqualität. Es bewertet keine technische Implementierung.

Geprüft werden mindestens:

- Vollständigkeit und Gültigkeit des Frontmatters,
- Übereinstimmung des `canonical_path` mit dem tatsächlichen Ablageort,
- korrekte Versionierung,
- Existenz und Auflösbarkeit interner Referenzen,
- gültiges und konsistentes Markdown,
- formale Übereinstimmung von Dokumentstruktur, Metadaten und Inhalt.

Die Phase ist abgeschlossen, wenn das Dokument den Vorgaben von PB-000 entspricht, alle internen Referenzen auf existierende Dokumente zeigen und keine formalen oder maschinenlesbaren Fehler verbleiben.

## 3.5 Phase 5 – Release Review

Das Release Review entscheidet, ob der geprüfte Stand alle Voraussetzungen für die Freigabe erfüllt.

Geprüft werden mindestens:

- vollständig bearbeitete und belegte Checklisten,
- keine offenen TODOs im freizugebenden Dokumentstand,
- keine offenen freigaberelevanten Editorial-Punkte in PB-999,
- Einhaltung aller einschlägigen `Accepted` Architecture Decisions aus PB-998,
- ordnungsgemäße Behandlung aller betroffenen Punkte in PB-999,
- Release Readiness des eindeutig identifizierten Dokumentstands.

Die Phase ist abgeschlossen, wenn alle vorangegangenen Phasen bestätigt, alle Freigabenachweise vollständig und keine offenen freigabeverhindernden Befunde vorhanden sind. Nicht anwendbare Prüfpunkte müssen mit einer Begründung dokumentiert werden; sie dürfen nicht stillschweigend übersprungen werden.

# 4 Review-Regeln

Für jedes Governance Review gelten folgende verbindliche Regeln:

1. Jede Phase wird vollständig abgeschlossen, bevor die nächste Phase beginnt.
2. Der zu prüfende Dokumentstand und sein Umfang werden vor Beginn der ersten Phase eindeutig festgehalten.
3. Während eines Reviews werden keine neuen Features oder neuen fachlichen Inhalte ergänzt.
4. Reviews dienen ausschließlich der Qualitätssicherung des vorgelegten Stands.
5. Architekturänderungen erfolgen ausschließlich über PB-998 und dürfen nicht als Review-Korrektur eingeführt werden.
6. Neue Inhalte werden erst nach Abschluss des laufenden Reviews in einem neuen Bearbeitungsstand ergänzt.
7. Jeder Befund benennt mindestens die betroffene Stelle, das verletzte Kriterium, die erforderliche Korrektur, die verantwortliche Rolle und den Bearbeitungsstand.
8. Ein freigabeverhindernder Befund stoppt den Übergang zur nächsten Phase.
9. Eine Korrektur wird nicht allein durch ihre Durchführung geschlossen; die betroffene Prüfung muss erfolgreich wiederholt werden.
10. Berührt eine Korrektur eine bereits abgeschlossene Phase, wird diese Phase erneut geöffnet und ab der betroffenen Stelle erneut geprüft. Nachfolgende Phasen werden anschließend erneut bestätigt.
11. Prüfungen dürfen durch Werkzeuge unterstützt werden, die Freigabeentscheidung bleibt jedoch ausdrücklich einer verantwortlichen Rolle zugeordnet.
12. Offene, widersprüchliche, unbelegte oder nur teilweise bearbeitete Prüfpunkte gelten als nicht bestanden.

# 5 Freigabeprozess

Der offizielle Freigabeprozess folgt dieser Reihenfolge:

```text
Feature Complete
       ↓
Editorial Review
       ↓
Governance Review
       ↓
Bugfixes
       ↓
Release Candidate
       ↓
Version 1.0
```

## 5.1 Feature Complete

Der Dokumentautor erklärt den vereinbarten Umfang als vollständig. Alle für diesen Umfang vorgesehenen Kapitel und Aussagen sind vorhanden. Neue Inhalte werden ab diesem Punkt für den laufenden Freigabeprozess eingefroren.

## 5.2 Editorial Review

Vor dem formalen Governance Review wird der Gesamttext redaktionell bereinigt. Dabei gefundene sprachliche und darstellerische Mängel werden behoben. Diese vorbereitende Prüfung ersetzt Phase 3 nicht; Phase 3 bestätigt innerhalb des sequenziellen Governance Reviews, dass der vorgelegte Stand die redaktionellen Kriterien weiterhin erfüllt.

## 5.3 Governance Review

Der vollständige, in Kapitel 3 definierte Fünf-Phasen-Prozess wird auf den festgelegten Dokumentstand angewendet. Das Ergebnis ist entweder eine dokumentierte Liste zu behebender Befunde oder die Bestätigung der Freigabereife.

## 5.4 Bugfixes

In diesem Schritt werden ausschließlich die dokumentierten Review-Befunde korrigiert. Die Korrekturen dürfen den freigegebenen Umfang nicht erweitern. Jede Korrektur wird gegen das auslösende Kriterium und alle berührten bereits abgeschlossenen Phasen erneut geprüft.

Erfordert ein Befund neue Inhalte oder eine Architekturentscheidung, wird der Freigabeprozess beendet. Die erforderliche Arbeit erfolgt außerhalb des Reviews; danach beginnt ein neues Review mit einem neu festgelegten Dokumentstand.

## 5.5 Release Candidate

Ein Dokumentstand darf als Release Candidate bezeichnet werden, wenn alle Befunde aus dem Governance Review korrigiert und nachgeprüft wurden, alle fünf Phasen erfolgreich abgeschlossen sind und nur noch die abschließende Freigabeentscheidung aussteht. Jede nachträgliche Änderung hebt den Release-Candidate-Stand auf, sofern sie nicht erneut durch alle betroffenen Prüfungen bestätigt wurde.

## 5.6 Version 1.0

Version `1.0.0` darf erst vergeben werden, wenn der Release Candidate ausdrücklich freigegeben wurde, der Status dem beabsichtigten kanonischen Stand entspricht und alle Abschlussbedingungen aus Kapitel 8 erfüllt sind. Die Freigabe gilt nur für den konkret geprüften Stand.

# 6 Qualitätskriterien

Jedes Governance-Dokument muss vor seiner Freigabe die folgenden allgemeinen Qualitätskriterien erfüllen:

## 6.1 Vollständigkeit

Der angekündigte Geltungsbereich ist vollständig behandelt. Erforderliche Kapitel, Metadaten, Referenzen, Nachweise und Checklisten fehlen nicht. Ausdrücklich ausgeschlossene Inhalte werden nicht als Lücken gewertet.

## 6.2 Konsistenz

Aussagen, Metadaten, Benennungen, Referenzen und Freigabestatus widersprechen weder einander noch den einschlägigen kanonischen Governance-Dokumenten und `Accepted` Architecture Decisions.

## 6.3 Nachvollziehbarkeit

Prüfumfang, Befunde, Korrekturen, Wiederholungsprüfungen, Verantwortlichkeiten und Freigabeentscheidung sind für Dritte rekonstruierbar. Verdeckte Ausnahmen oder unbegründete Abweichungen sind unzulässig.

## 6.4 Referenzierbarkeit

Dokumentidentität, Kapitelstruktur und interne Verweise erlauben stabile, eindeutige Referenzen. Alle verwendeten Dokumentreferenzen sind auflösbar und bezeichnen den beabsichtigten Gegenstand.

## 6.5 Eindeutigkeit

Normative Aussagen, Zuständigkeiten, Kriterien und Ergebnisse lassen keine für die Anwendung relevante Mehrdeutigkeit offen. Ungeklärte Alternativen werden nicht als freigegebene Regel dargestellt.

## 6.6 Wartbarkeit

Das Dokument vermeidet unnötige Doppelpflege, besitzt eine erkennbare Zuständigkeitsgrenze und kann geändert werden, ohne seine Identität, Historie oder Referenzen zu verlieren.

# 7 Rollen und Verantwortlichkeiten

Eine Person darf mehrere Rollen wahrnehmen, sofern jede Verantwortung und jede Freigabeentscheidung ausdrücklich dokumentiert bleibt. Wo unabhängige Prüfung organisatorisch möglich ist, soll der Reviewer nicht mit dem Dokumentautor identisch sein.

## 7.1 Dokumentautor

Der Dokumentautor:

- erstellt und pflegt den zu prüfenden Dokumentstand,
- erklärt den vereinbarten Umfang als Feature Complete,
- stellt die erforderlichen Quellen, Referenzen und Prüfnachweise bereit,
- nimmt während des Reviews keine Umfangserweiterung vor,
- bearbeitet zugewiesene Befunde,
- dokumentiert Korrekturen und meldet sie zur Nachprüfung an,
- vergibt sich nicht selbst die abschließende Projektfreigabe.

## 7.2 Reviewer

Der Reviewer:

- führt die zugewiesenen Prüfungen gegen die festgelegten Kriterien durch,
- dokumentiert bestandene Prüfpunkte und Befunde nachvollziehbar,
- bewertet ausschließlich den festgelegten Dokumentstand,
- fordert keine neuen Features im Rahmen des Reviews,
- prüft Korrekturen und betroffene Querverbindungen erneut,
- bestätigt oder verweigert den Abschluss einer Review-Phase auf Grundlage der Nachweise.

## 7.3 Governance Maintainer

Der Governance Maintainer:

- stellt die korrekte Anwendung und Reihenfolge des Prozesses sicher,
- bestätigt Review-Umfang, Dokumentstand und anwendbare Kriterien,
- koordiniert Phasenübergänge und die Wiedereröffnung betroffener Phasen,
- prüft die Einhaltung von PB-000, PB-004, PB-998 und PB-999,
- stellt die Vollständigkeit der Freigabenachweise sicher,
- empfiehlt auf Basis des Release Reviews Freigabe oder Ablehnung,
- darf offene Architektur- oder Projektentscheidungen nicht selbst im Review ersetzen.

## 7.4 Projektentscheidung

Die Projektentscheidung liegt beim Project Lead oder bei einer ausdrücklich delegierten verantwortlichen Person. Diese Verantwortung:

- entscheidet über die endgültige Freigabe oder Ablehnung,
- bestätigt den Release Candidate als kanonischen Stand,
- autorisiert Status und Version `1.0.0`,
- stellt sicher, dass keine offenen freigabeverhindernden Befunde übergangen werden,
- verweist notwendige Architekturänderungen an PB-998 und neue Inhalte in einen nachfolgenden Bearbeitungsstand.

Die Projektentscheidung darf eine nicht erfüllte verbindliche Freigabebedingung nicht durch eine undokumentierte Ausnahme ersetzen.

# 8 Abschluss des Reviews

## 8.1 Freigabe eines Dokuments

Ein Governance-Dokument gilt als freigegeben, wenn:

- der geprüfte Dokumentstand eindeutig identifiziert ist,
- alle fünf Review-Phasen erfolgreich abgeschlossen sind,
- alle anwendbaren Checklistenpunkte belegt sind,
- keine offenen TODOs oder freigabeverhindernden Befunde bestehen,
- alle das Dokument betreffenden freigaberelevanten Punkte aus PB-999 abgeschlossen oder nachvollziehbar als nicht anwendbar geklärt sind,
- alle einschlägigen `Accepted` Architecture Decisions aus PB-998 eingehalten werden,
- Frontmatter, Status, Version und `canonical_path` konsistent sind,
- der Governance Maintainer die Freigabereife empfohlen hat,
- die Projektentscheidung die Freigabe ausdrücklich bestätigt hat.

## 8.2 Vergabe von Version 1.0

Version `1.0.0` darf vergeben werden, wenn der vollständige vereinbarte Dokumentumfang freigegeben ist, der Dokumentstand als Release Candidate alle Qualitäts- und Governance-Kriterien erfüllt und die Projektentscheidung die kanonische Erstveröffentlichung autorisiert hat. Eine teilweise abgeschlossene Prüfung, eine vorläufige Zustimmung oder ein offener Befund genügt nicht.

## 8.3 Abschluss eines Governance Release

Ein Governance Release ist abgeschlossen, wenn:

1. die Freigabeentscheidung für den unveränderten geprüften Stand dokumentiert ist,
2. Status, Version, Datum und Metadaten den freigegebenen Stand wiedergeben,
3. alle Review-Befunde geschlossen und ihre notwendigen Wiederholungsprüfungen bestanden sind,
4. alle Checklisten und Freigabenachweise vollständig abgelegt sind,
5. die freigegebene Fassung am kanonischen Pfad veröffentlicht ist,
6. keine offene Aufgabe in PB-999 der Freigabe dieses Stands widerspricht.

Nach Abschluss beginnt jede inhaltliche Erweiterung oder normative Änderung einen neuen versionierten Bearbeitungs- und Reviewzyklus. Die abgeschlossene Freigabe gilt nicht automatisch für spätere Änderungen.
