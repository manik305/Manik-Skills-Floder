# Universal Agent & Antigravity Configuration

Welcome to the centralized multi-client skills and intelligence hub.

## Customization & Skills Directory Structure
- **Google Antigravity**: Project skills in `.agents/skills/<skill-name>/SKILL.md` (and globally in `~/.gemini/config/skills/<skill-name>/SKILL.md`).
- **Claude Code**: Project skills in `.claude/skills/<skill-name>/SKILL.md` and `CLAUDE.md`.
- **Cursor**: Project rules in `.cursor/rules/<rule-name>.mdc` and `.cursor/skills/<skill-name>/SKILL.md`.
- **Master GitHub Hub**: Canonical skills with production templates and references in `skills/<skill-name>/`.

## Active Skills in this Repository
- **`pdf-generation-architect`**: Grounded, publication-grade PDF architect and generator.
  - Automatically assesses the topic (technology, products, corporate, financial, medical, science, sports).
  - Clarifies ambiguity with targeted pre-interview questions.
  - Enforces zero-hallucination grounded research.
  - Calculates mathematical page budgets and avoids trailing orphan lines.
  - Produces editable source code (`.typ`, `.html` `@page`, or `.py`) and builds vector `.pdf` files.

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

