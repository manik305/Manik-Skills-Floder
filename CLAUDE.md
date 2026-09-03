# Claude Code Configuration & Skills Hub

This repository is a unified multi-client skills and intelligence hub for Claude Code, Cursor, and Google Antigravity.

## Skills Directory Structure for Claude Code
- Project skills are located in `.claude/skills/<skill-name>/SKILL.md`.
- Canonical master skill definitions and editable templates are located in `skills/<skill-name>/`.

## Active Skills
- `engineering`: Comprehensive software engineering, TDD, domain modeling (`CONTEXT.md` / ADRs), deep codebase design, hypothesis-driven bug diagnosis, tracer-bullet specs, and architectural modernization.
- `productivity`: Relentless alignment, Socratic grilling (`grill-me`), structured context handoff (`handoff`), ambiguous-to-questionnaire synthesis, and developer velocity protocols.
- `in-progress`: Experimental agentic workflows, autonomous execution loops (`loop-me`), spec autopilot (`implement-spec`), post-mortem retrospectives (`retro`), and TypeScript deep module boundaries.
- `deprecated`: Deprecation lifecycle governance, anti-pattern identification, safe migration paths, and legacy decommissioning protocols.
- `pdf-generation-architect`: Grounded, publication-grade PDF architect and generator with runtime-configurable authoring, mathematical page budgets, and vector compilation.
- `prd-brd-architect`: Enterprise-grade PRD & BRD generator with dynamic B2B experience calculation, 360° stack architecture, and distributed systems mapping.
- `archify-visualizer`: Verifiable STMR-based architecture maps, full-stack dependency graphs, and interactive animated module visualizers.

## Guidelines for Claude Code
1. Load and follow the appropriate skill specification from `.claude/skills/<skill-name>/SKILL.md`.
2. When generating PDF documents or reports, generate editable document sources (`.typ`, `.html` with `@page`, or `.py`) so the user can easily adjust and regenerate the document anytime.
3. Adhere to executive color palettes, structured comparison tables, and zero-orphan pagination.

---

## Document Generation Author & Identity Directives

### 1. Runtime Configurable Author Identity (Document & PDF Generation)
- **Runtime Prompt Input**: Document and PDF generation tools allow the user to specify custom author details at prompt time:
  - `Author: [Name]`
  - `Designation: [Role/Title]`
  - `Company / Organization: [Company]`
- **Layout Behavior**:
  - **When provided**: Display the author block at the top of the first page with the main topic prominently highlighted directly beneath it; render `[Author] | [Company]` in the running footer.
  - **When omitted**: Format cleanly with standard executive title blocks and document classification without requiring or hardcoding personal identity.

