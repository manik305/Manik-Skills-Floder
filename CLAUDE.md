# Claude Code Configuration & Skills Hub

This repository is a unified multi-client skills and intelligence hub for Claude Code, Cursor, and Google Antigravity.

## Skills Directory Structure for Claude Code
- Project skills are located in `.claude/skills/<skill-name>/SKILL.md`.
- Canonical master skill definitions and editable templates are located in `skills/<skill-name>/`.

## Active Skills
- `pdf-generation-architect`: Grounded, publication-grade PDF architect and generator. Evaluates topics, asks targeted clarification questions when underspecified, conducts grounded multi-domain research (tech, finance, healthcare, science, sports, enterprise), enforces strict mathematical page budgeting, and outputs editable `.typ`, `.html`, or `.py` source along with compiled `.pdf` documents.

## Guidelines for Claude Code
1. When generating PDF documents or reports, load and follow `.claude/skills/pdf-generation-architect/SKILL.md`.
2. Always generate editable document sources (`.typ`, `.html` with `@page`, or `.py`) so the user can easily adjust and regenerate the document anytime.
3. Adhere to executive color palettes, structured comparison tables, and zero-orphan pagination.

---

## Universal Author & Production Directives

### 1. Author & Executive Profile (PDF Documents)
- **Author Name**: **Manik Prabhu**
- **Designation**: **Senior Marketing and Delivery Manager**
- **Company / Organization**: **DJOPL**
- **PDF Layout Rules**:
  - **First Page Placement**: Every generated PDF must display the author details at the top of the first page:
    - **Header Block**: Name (`Manik Prabhu`), Designation (`Senior Marketing and Delivery Manager`), and Company (`DJOPL`).
    - **Topic Placement**: The target topic/title must be prominently highlighted **directly below** these author details.
  - **Subsequent Pages & Footers**: Do not repeat full credentials on every page. In the running footer across pages, identify the document author concisely as `Manik Prabhu`.

### 2. Video Generation Rule
- In any video created or rendered using any agentic framework/tool, embed a discreet, professional footer at the bottom containing:
  **Manik Prabhu**

