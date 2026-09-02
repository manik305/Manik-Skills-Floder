# Multi-Domain Grounded Research & Anti-Hallucination Framework

This reference guide provides rigorous protocols to verify, structure, and ground topics across diverse industries without hallucinations.

---

## 1. Domain-by-Domain Research & Data Anchors

### 1.1 Technology, Cloud & Software Architecture
- **Mandatory Quantitative Anchors**:
  - Throughput (RPS / QPS), Latency percentiles ($p50, p95, p99$), CPU/Memory footprints.
  - Architectural patterns: Hexagonal, Event-Driven (CQRS/Event Sourcing), Microservices vs Modular Monolith.
  - Network and Protocol: gRPC vs REST OpenAPI 3.1 vs WebSockets/SSE.
- **Verification Rule**: Never quote benchmarks without stating hardware/cloud instance baseline (e.g. AWS `c6i.4xlarge`, 16 vCPU, 32GB RAM).

### 1.2 Enterprise & Business Products
- **Mandatory Quantitative Anchors**:
  - ARR (Annual Recurring Revenue), NRR (Net Revenue Retention), CAC payback periods, LTV:CAC ratios.
  - Product tiering (Self-serve vs Mid-market vs Enterprise custom contracts).
  - Security & Compliance certifications: SOC 2 Type II, ISO 27001, HIPAA, GDPR, FedRAMP.
- **Verification Rule**: Extract data directly from verified 10-K, 10-Q SEC reports, or official product documentation.

### 1.3 Financial Information & Capital Markets
- **Mandatory Quantitative Anchors**:
  - P&L balance sheet metrics: Gross Margin, Operating Margin, Adjusted EBITDA, Free Cash Flow (FCF).
  - Valuation ratios: EV/Sales, P/E, PEG, Debt-to-Equity.
  - Forward guidance vs Street Consensus.
- **Verification Rule**: Explicitly cite fiscal quarter/year ($FY25Q3$) and currency denomination.

### 1.4 Medical, Pharmacology & Healthcare
- **Mandatory Quantitative Anchors**:
  - Trial Phases: Pre-clinical, Phase I (Safety/Dosing), Phase II (Efficacy), Phase III (Comparative multi-center), Phase IV (Post-marketing).
  - Statistical endpoints: Primary endpoint, overall survival (OS), progression-free survival (PFS), hazard ratio (HR), $p$-value ($p < 0.05$).
  - Mechanism of Action (MoA) and molecular target.
- **Verification Rule**: Rely strictly on peer-reviewed biomedical literature (PubMed, Lancet, NEJM) or regulatory FDA/EMA registry data.

### 1.5 Scientific, Physics & Mathematical Engineering
- **Mandatory Quantitative Anchors**:
  - Governing equations, dimensional analysis, standard SI units.
  - Experimental uncertainty intervals ($\pm \sigma$), confidence intervals ($95\% \text{ CI}$).
  - Boundary conditions and assumptions.
- **Verification Rule**: State all physical constants and empirical constraints upfront.

### 1.6 Sports Analytics & Athletics (Cricket, Football, Basketball, etc.)
- **Mandatory Quantitative Anchors**:
  - Cricket: Batting Average, Strike Rate, Economy Rate, Bowling Average, Phase breakdown (Powerplay vs Middle vs Death overs).
  - Football/Soccer: xG (Expected Goals), xA (Expected Assists), progressive carries, defensive actions.
  - Historical context: Head-to-head records, venue bias (pitch condition, dew factor, win% batting first vs second).
- **Verification Rule**: Cross-reference against official governing body databases (ICC, ESPNCricinfo, Opta, StatsBomb).

---

## 2. Topic Decomposition Protocol

When given any user topic $T$:
1. **Identify Primary Domain** and **Target Audience** (Executive, Engineering, Clinical, Public).
2. **Decompose into Minimum 4 Sub-topics**:
   - $S_1$: Baseline problem definition and market/empirical context.
   - $S_2$: Deep-dive quantitative evaluation with tabular comparison.
   - $S_3$: Technical or operational implementation mechanics.
   - $S_4$: Strategic roadmap, risk mitigation, and forward outlook.
3. **Draft Grounded Summary Card**:
   - Display verified entities, dates, and metrics in structured callouts.
