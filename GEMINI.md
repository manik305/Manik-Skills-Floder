# Universal Agent & Antigravity Configuration

Welcome to the centralized multi-client skills and intelligence hub.

## Customization & Skills Directory Structure
- **Google Antigravity**: Project skills in `.agents/skills/<skill-name>/SKILL.md` (and globally in `~/.gemini/config/skills/<skill-name>/SKILL.md`).
- **Claude Code**: Project skills in `.claude/skills/<skill-name>/SKILL.md` and `CLAUDE.md`.
- **Cursor**: Project rules in `.cursor/rules/<rule-name>.mdc` and `.cursor/skills/<skill-name>/SKILL.md`.
- **Master GitHub Hub**: Canonical skills with production templates and references in `skills/<skill-name>/`.

## Active Skills in this Repository
- **`engineering`**: Comprehensive software engineering, TDD, domain modeling (`CONTEXT.md` / ADRs), deep codebase design, hypothesis-driven bug diagnosis, tracer-bullet specs, and architectural modernization.
- **`productivity`**: Relentless alignment, Socratic grilling (`grill-me`), structured context handoff (`handoff`), ambiguous-to-questionnaire synthesis, and developer velocity protocols.
- **`in-progress`**: Experimental agentic workflows, autonomous execution loops (`loop-me`), spec autopilot (`implement-spec`), post-mortem retrospectives (`retro`), and TypeScript deep module boundaries.
- **`deprecated`**: Deprecation lifecycle governance, anti-pattern identification, safe migration paths, and legacy decommissioning protocols.
- **`pdf-generation-architect`**: Publication-grade PDF architect with runtime-configurable authoring, mathematical page budgets, grounded research, and vector compilation.
- **`prd-brd-architect`**: Enterprise-grade PRD & BRD generator with dynamic B2B experience calculation, 360° stack architecture, and distributed systems mapping.
- **`archify-visualizer`**: Verifiable STMR-based architecture maps, full-stack dependency graphs, and interactive animated module visualizers.

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

