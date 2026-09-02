# Strict Page Budgeting & Mathematical Pagination Guide

This guide defines the mathematical layout formulas and formatting techniques to prevent awkward page overflows, trailing single-line widows, and empty whitespace in generated PDFs.

---

## 1. Page Geometry & Typography Metrics (A4 Standard)

### Standard A4 Dimensions
- Width: $210\text{ mm} \approx 595\text{ pt}$
- Height: $297\text{ mm} \approx 842\text{ pt}$
- Standard Margins: Top $25\text{ mm}$, Bottom $25\text{ mm}$, Left $20\text{ mm}$, Right $20\text{ mm}$
- Printable Canvas Height: $297 - 50 = 247\text{ mm} \approx 700\text{ pt}$
- Printable Canvas Width: $210 - 40 = 170\text{ mm} \approx 482\text{ pt}$

### Vertical Space Consumption per Element

| Element | Typical Height | Height Calculation Rule |
| :--- | :--- | :--- |
| **Running Header + Divider** | $25\text{ pt}$ | Fixed margin offset |
| **Running Footer + Divider** | $25\text{ pt}$ | Fixed margin offset |
| **Document Title ($22\text{pt}$)** | $40\text{ pt}$ | Font size ($22\text{pt}$) + leading + margin below |
| **Section Heading H2 ($13\text{pt}$)**| $30\text{ pt}$ | Margin top ($14\text{pt}$) + font ($13\text{pt}$) + margin bottom ($6\text{pt}$) |
| **Metadata Grid Card** | $70\text{ pt}$ | Inset padding ($24\text{pt}$) + 2 rows text ($36\text{pt}$) + borders |
| **Body Paragraph (100 words)** | $90 - 110\text{ pt}$| Approx $6 - 7$ lines at $15\text{pt}$ line-height |
| **5-Row Comparison Table** | $140 - 160\text{ pt}$| Header row ($28\text{pt}$) + 4 data rows ($26\text{pt} \times 4$) + table margins |
| **Alert Callout Box** | $60 - 80\text{ pt}$ | Inset padding + border + $3-4$ lines text |

---

## 2. Page Density & Budget Allocation Rules

### Target Page Count Formulas
When the user specifies an exact target page count $N$:

1. **For $N = 1$ Page (Executive One-Pager)**:
   - Header Zone: $25\text{ pt}$
   - Document Title & Subtitle: $55\text{ pt}$
   - Metadata 4-Box Grid: $70\text{ pt}$
   - Section 1 (Executive Summary + 1 Callout): $140\text{ pt}$
   - Section 2 (5-Row Performance Table): $160\text{ pt}$
   - Section 3 (Implementation Milestones): $130\text{ pt}$
   - Footer Zone: $25\text{ pt}$
   - **Total**: $\approx 605\text{ pt}$ out of $700\text{ pt}$ printable canvas (Leaves clean $15\%$ breathing whitespace).

2. **For $N \ge 2$ Pages**:
   - **Page 1**: Cover/Executive Summary + Core Baseline Metrics + Table 1.
   - **Page 2 to $N-1$**: Deep Topical Breakdown, Sub-topic Architecture, Technical Benchmarks, Code Snippets.
   - **Page $N$ (Final Page)**: Comparative Governance, Risk Mitigation Matrix, Phased Roadmap, Sign-off Block.
   - **Page Break Directive**: Always enforce an explicit `#pagebreak()` or `page-break-after: always;` at the boundary of each page budget to guarantee no uncontrolled spilling occurs.

3. **For Arbitrary Start and End Pages (e.g., "Start at Page 5")**:
   - In Typst: `#set page(numbering: "1 of 1", start: 5)`
   - In CSS Paged Media:
     ```css
     @page {
       counter-reset: page 5;
     }
     ```
   - In ReportLab: Custom `canvas._pageNumber = start_page`.
