# Universal AI Coding Skills Hub (Antigravity · Claude Code · Cursor)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Clients Supported](https://img.shields.io/badge/Clients-Antigravity%20%7C%20Claude%20Code%20%7C%20Cursor-indigo.svg)](#cross-client-architecture)
[![Grounded Standard](https://img.shields.io/badge/Standard-Zero--Hallucination%20Grounded-emerald.svg)](#2-grounded-multi-domain-research-engine)

A standardized, publication-grade repository of agentic skills designed for seamless synchronization across **Google Antigravity**, **Claude Code**, and **Cursor**.

Use this repository as your central GitHub hub where you can aggregate, author, and maintain skills from various repositories over time.

---

## 📁 Cross-Client Architecture

Each AI client expects its skills and rules in specific directory hierarchies. This hub maintains a single canonical source of truth in `skills/` and mirrors it cleanly into each client's native environment:

```
Manik Skills Folder/
├── skills/                               # 🌟 Canonical Source of Truth for GitHub
│   └── pdf-generation-architect/
│       ├── SKILL.md                      # Complete architectural specification
│       ├── templates/
│       │   ├── executive-report.typ       # Typst native editable template
│       │   ├── enterprise-paged.html      # CSS Paged Media (@page) print template
│       │   └── python-pdf-builder.py      # Standalone Python PDF builder
│       └── references/
│           ├── domain-research-matrix.md  # Multi-domain verification protocols
│           └── page-budget-guide.md       # Exact page estimation & layout density
│
├── .agents/skills/                       # 🤖 Google Antigravity Project Skills
│   └── pdf-generation-architect/
│       └── SKILL.md
│
├── .claude/skills/                       # 🧠 Anthropic Claude Code Skills
│   └── pdf-generation-architect/
│       └── SKILL.md
│
├── .cursor/                              # ⚡ Cursor Rules & Skills
│   ├── rules/
│   │   └── pdf-generation-architect.mdc   # Cursor MDC Rule format
│   └── skills/
│       └── pdf-generation-architect/
│           └── SKILL.md
│
├── scripts/
│   ├── sync-skills.ps1                   # Windows sync script (PowerShell)
│   └── sync-skills.sh                    # Linux / macOS sync script (Bash)
│
├── CLAUDE.md                             # Claude Code workspace configuration
├── GEMINI.md                             # Antigravity workspace configuration
└── README.md                             # Global documentation & usage guide
```

---

## 🚀 Featured Skill: `pdf-generation-architect`

The **PDF Generation Architect** is an autonomous, grounded engine engineered to create publication-grade, editable PDF documents.

### Key Capabilities

#### 1. Interactive Clarification Engine
If a user prompt is broad (e.g., *"Generate a report on electric vehicles"*), the agent initiates a targeted clarification interview before writing:
- **Target Page Count**: Executive summary (1 page), briefing (2–5 pages), or deep dossier (6–20+ pages).
- **Target Page Range**: Support for arbitrary starting and ending pages (e.g., "Start from page 3 to 8").
- **Aesthetic Palette**: Corporate Slate & Deep Indigo, Emerald Teal & Sage, Modern Crimson, or Venture Gold.
- **Tone & Technical Depth**: Engineering architecture, executive governance, clinical/scientific, or sports analytics.

#### 2. Grounded Multi-Domain Research (Zero Hallucination)
The engine cross-references and validates empirical metrics across diverse sectors:
- **Technology & Cloud**: Latency percentiles ($p99$), throughput (RPS), API specs (OpenAPI 3.1), architectural patterns.
- **Enterprise & Products**: ARR/NRR, CAC payback, tiering models, SOC2/ISO compliance.
- **Financial & Capital Markets**: Balance sheets, EBITDA margins, valuation multiples, CAGR with baseline years.
- **Medical & Healthcare**: Clinical trial phases (I–IV), primary endpoints ($p < 0.05$), MoA, FDA/EMA pathways.
- **Scientific & Physics**: Governing formulas, SI units, experimental error intervals ($\pm \sigma$).
- **Sports & Athletics**: Batting/bowling averages, strike rates, xG/xA metrics, official tournament records.

#### 3. Strict Mathematical Page Budgeting
Eliminates orphan lines, trailing single-paragraph spillover, and awkward blank gaps:
- **Word density formula**: Calibrated to ~350–450 words per page with tables and callout cards.
- **Deterministic page breaks**: Explicit `#pagebreak()` or `break-after: page;` between topical divisions.

#### 4. Editable Document Sources & Direct Vector Compilation
The agent never outputs disposable unstyled web pages. It delivers **fully editable source markup** alongside the compiled `.pdf`:

| Engine | Editable File | Compilation Command | Best Suited For |
| :--- | :--- | :--- | :--- |
| **Typst** *(Recommended)* | `*.typ` | `typst compile doc.typ output.pdf` | High-speed, publication-grade formatting |
| **CSS Paged Media** | `*.html` | `msedge --headless --print-to-pdf="doc.pdf" doc.html`<br/>`chrome --headless --print-to-pdf="doc.pdf" doc.html` | Universal zero-install desktop printing |
| **Python Builder** | `*.py` | `python builder.py --pages 3 --out doc.pdf` | Programmatic vector PDF data pipelines |

---

## 🔄 Adding New Skills Day by Day

When you want to add a new skill from another repository or project:

1. Create a new folder inside `skills/`:
   ```bash
   mkdir -p skills/my-new-skill
   ```
2. Place your `SKILL.md` and any optional templates/references inside `skills/my-new-skill/`.
3. Run the synchronization script:
   - **On Windows**:
     ```powershell
     .\scripts\sync-skills.ps1
     ```
   - **On macOS / Linux**:
     ```bash
     chmod +x scripts/sync-skills.sh
     ./scripts/sync-skills.sh
     ```
4. Commit and push to your GitHub main branch:
   ```bash
   git add .
   git commit -m "feat: add my-new-skill cross-client definitions"
   git push origin main
   ```

The script automatically generates:
- Antigravity: `.agents/skills/my-new-skill/SKILL.md`
- Claude Code: `.claude/skills/my-new-skill/SKILL.md`
- Cursor: `.cursor/skills/my-new-skill/SKILL.md` and `.cursor/rules/my-new-skill.mdc`
- *(Optional)* Global Antigravity Config: `~/.gemini/config/skills/my-new-skill/SKILL.md` (via `-InstallGlobal` flag).

---

## 🌐 Global Installation (Optional)

To use your skills across **all** projects on your local machine:
- **Antigravity**: Skills in `~/.gemini/config/skills/` are globally accessible.
- **Cursor**: Global rules in `~/.cursor/rules/`.
- **Claude Code**: Global skills in `~/.claude/skills/`.

The `pdf-generation-architect` skill has already been installed into your global Antigravity configuration directory at:
`C:\Users\manik\.gemini\config\skills\pdf-generation-architect\SKILL.md`
