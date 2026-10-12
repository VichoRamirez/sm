# Operational Plan: Strategic Marketing Deliverables (_vg)

## 1. Executive Summary & Objectives
Deliver two comprehensive, authoritative research and modeling documents in `context/` with suffix `_vg` that strictly adhere to:
1. 100% real verifiable sources (no hallucinated companies, metrics, or citations).
2. Strict APA-7 citation format throughout the body and exhaustive references section at the end.
3. No edits to Notion tasks or pages (local markdown only).
4. Full address of all requirements in ORIGINAL_REQUEST.md (Follow-up 2026-10-12T15:17:32Z).

## 2. Milestone Decomposition

### Milestone 1: Benchmarking of Global AI Vehicle Inspection & Pricing (`context/benchmarks_referentes_internacionales_vg.md`)
- **Key Entities to Cover**:
  - Specialized AI inspection companies: Tractable, Ravin AI, Monk AI / ACV Auctions, UVeye, ProovStation, Fyusion / Cox Automotive, CCC Estimate-STP, Solera Qapter, DeGould, Inspektlabs.
  - Platforms & algorithmic pricing: Kavak (Mexico & Chile operations, 240-point inspection, Series F, profitability), Carvana (150-point inspection, Carvana Certified, record 2025 results), AUTO1 Group / Autohero (wirkaufendeinauto, 842k units, AI pricing engine), Shift Technologies (Chapter 11 liquidation), Cazoo (administration in UK).
- **Core Structural Sections**:
  1. Executive Summary (market dynamics, insurance dominance, asset-light opportunities).
  2. Deep dive profiles for each AI inspection player (Origin, Geographic reach, Technical architecture: smartphone vs fixed drive-through, CV models, output/budgeting capabilities, monetization model, and target segments).
  3. Comprehensive cross-comparison matrices (capture type, output, repair cost estimation, segments, monetization, tech maturity).
  4. Deep dive into global platforms (trade-in/retoma, inspection protocols, return/warranty policies, pricing mechanisms, unit volumes, and financial outcomes).
  5. Cross-comparison matrix of auto platforms.
  6. Strategic lessons and industry gaps: visual diagnosis vs pricing dispersion, unaddressed gaps, opportunities for asset-light smartphone AI assistant in Chile/LatAm.
  7. Academic and technical grounding (linking to Hasan et al., 2025 systematic review of 55 papers in data/technical-bases/, Amodu et al., 2024, dataset challenges, and model architectures).
  8. Exhaustive APA-7 References section with verified DOIs and URLs.

### Milestone 2: Chilean Used Car Sales Modalities, Operational Flows, Buyer Personas & Value Matrix (`context/modalidades_venta_autos_chile_vg.md`)
- **Core Structural Sections**:
  1. Executive Summary (market scale, 3.4 used per new vehicle, age distribution, fraud dynamics).
  2. Chilean Market Context & Hard Data:
     - CAVEM official volume metrics (2022-2026, 1.06M used in 2025, 821k jan-sep 2026).
     - Segment analysis (Passenger 44.6%, SUV 29.9%, Pickups 18.4%, Commercial 7.0%).
     - Chinese brand penetration (11.02% in 2025 to 12.95% in jan-sep 2026, over 50 brands).
     - Age distribution (49.4% over 10 years old) and vehicle park (6.74M vehicles).
     - Portal search and price dynamics (Chileautos, F-150 most searched).
  3. Real verified market players across modalities:
     - Retoma / iBuyers: Kavak Chile, Clicar (Americar / Salazar Israel), OLX Autos (acquisition background).
     - Virtual Consignment: Te Vendemos el Auto, Kavak consignment.
     - C2C Portals: Chileautos, Mercado Libre, Yapo, Facebook Marketplace (risks & frauds).
     - Official verification & history channels: Autofact, Registro Civil (SRCeI), SII municipal transfer tax (1.5%), legal and technical certificates.
  4. End-to-End Operational Workflow Modeling across 4 Modalities:
     - Modalidad A: Compra para reparación/reacondicionamiento y reventa ("Flip" / Refurbish & Resell) (A1-A7 stages with Mermaid diagram, roles, data used, typical costs/times, and frictions).
     - Modalidad B: Compra y venta directa / Retoma comercial (Dealership & iBuyer) (B1-B5 stages with Mermaid diagram, express valuation, perimeter inspection, retoma offer, aesthetic reconditioning, margin/rotation).
     - Modalidad C: Consignación virtual y comercialización intermediada (C1-C4 stages with Mermaid diagram, certification, listing, lead management, closing/commission).
     - Modalidad D: Venta C2C asistida (Particular a Particular) (D1-D4 stages with Mermaid diagram, price setting, informal inspection, bargaining, legal closing).
     - Official Chilean closing procedures (SRCeI, SII 1.5% tax, fees, documents).
     - Matrix crossing Modalities vs Buyer Personas (Traditional Dealer, Medium Dealership, Flipper, Individual).
  5. Bottlenecks and Blind Spots:
     - Information asymmetry (Akerlof lemons model in Chilean context).
     - Price dispersion and manual spreadsheet pricing.
     - Bodyshop cost overruns and delays (CMF repair timeline reference: 52.3 days).
     - Surging fraud and distrust (41,700 court cases in 2025, PDI raids, SERNAC complaints).
     - Warranty limitations in used car sales.
  6. Value-Add Matrix (Mapeo explícito de eslabones de aporte de valor):
     - Comprehensive mapping crossing each stage of all 4 modalities with friction, AI/scraping module (DX = AI Damage Diagnosis, PZ = Parts Suggestion, CR = Repair Cost Estimation, TS = Scraping Valuation), value type, and intensity.
     - Top 5 Highest Value Links ranking with analytical justification.
     - Tailored value proposition by Buyer Persona.
  7. Technical Feasibility & Foundations (Hasan et al., 2025, Amodu et al., 2024, dataset requirements, mobile CV models).
  8. Assumptions, Known Discrepancies, and Analytical Caveats.
  9. Exhaustive APA-7 References section with verified URLs.

### Milestone 3: Verification, Adversarial Challenge & Forensic Audit
- 2 Independent Reviewers: evaluate completeness, technical depth, formatting, and APA-7 adherence.
- 2 Challengers: empirically verify citations, numbers, CAVEM consistency, and logical robustness.
- 1 Forensic Auditor (`teamwork_preview_auditor`): conduct static analysis, citation verification, check for fabricated content, verify that deliverables match requirements exactly and contain genuine analytical substance.

## 3. Communication & Handoff
- Workers report when files are generated.
- Orchestrator tracks status in `GATE_STATUS.md` and updates `progress.md`.
- Final victory report sent via `send_message` to Sentinel (`dd6f6d75-2015-4196-9d48-3984dfc564c9`).
