---
name: archify-visualizer
description: Generates interactive, verifiable STMR-based architecture maps, full-stack dependency graphs, and animated module lifecycles as self-contained HTML/SVG visualizers with Sigma/Figma-grade design.
---

# Archify & STMR Universal Architecture Visualizer

Teach Antigravity, Cursor, and Claude Code to analyze any codebase, extract its system architecture into the **STMR (System-Topic-Module-Relationship)** model, and compile a self-contained, interactive HTML visualizer.

## When to Trigger
- The user asks to visualize, explain, or diagram the application architecture.
- The user asks how frontend and backend modules interact or communicate.
- A new project is created, refactored, or audited for architectural consistency.

## Execution Procedure

### 1. Codebase Scanning & Discovery
Inspect the project directory to identify core architectural tiers:
- **Client Tier**: Web apps, SPAs, mobile apps, UI components, state stores.
- **Gateway / Ingress**: Reverse proxies, routers, API gateways, load balancers.
- **Backend / Microservices**: API controllers, business logic services, RPC handlers, workers.
- **Data & Persistence**: SQL databases, document stores, caches, queues.
- **External Integrations**: Third-party APIs, OAuth, payment gateways, webhooks.

### 2. Formulate the STMR Intermediate Representation (IR)
Structure the extracted topology into standard STMR JSON:
```json
{
  "meta": {
    "title": "<Project Name> Architecture",
    "version": "1.0.0",
    "theme": "dark"
  },
  "systems": [
    { "id": "sys-frontend", "name": "Frontend Tier", "color": "#38bdf8" },
    { "id": "sys-backend", "name": "Backend API Tier", "color": "#818cf8" },
    { "id": "sys-db", "name": "Database & Cache", "color": "#34d399" }
  ],
  "modules": [
    { "id": "mod-ui", "systemId": "sys-frontend", "name": "React Client", "type": "frontend", "file": "src/App.tsx", "description": "Interactive SPA interface" },
    { "id": "mod-api", "systemId": "sys-backend", "name": "REST API Controller", "type": "api", "file": "server/index.js", "description": "Endpoints and routing" },
    { "id": "mod-db", "systemId": "sys-db", "name": "PostgreSQL DB", "type": "database", "file": "db/schema.sql", "description": "Relational storage" }
  ],
  "links": [
    { "id": "link-1", "source": "mod-ui", "target": "mod-api", "protocol": "HTTPS", "label": "API Calls" },
    { "id": "link-2", "source": "mod-api", "target": "mod-db", "protocol": "SQL", "label": "Queries" }
  ],
  "stories": [
    {
      "id": "story-main",
      "title": "Primary User Flow",
      "steps": [
        { "moduleId": "mod-ui", "action": "User interacts with interface" },
        { "moduleId": "mod-api", "action": "Controller processes request and executes logic" },
        { "moduleId": "mod-db", "action": "Reads/writes persistent data" }
      ]
    }
  ]
}
```

### 3. Generate the Interactive HTML Viewer
Output a standalone `.html` file with:
- Dynamic Canvas/SVG node-link graph with auto-layout.
- Interactive mode switcher: **Explore**, **Route Prober** (shortest path), **Reach Inspector** (Upstream vs Downstream), and **Story Player**.
- Search filter by module name, system tier, or technology.
- Dark/Light mode toggle with glassmorphic cards and crisp typography.
- Export to PNG (1200x630 share card) and SVG vector format.

### 4. Verification & Presentation
1. Verify all file references and routes match actual project code.
2. Output a link to the generated HTML file so the user can open it immediately in their browser.
