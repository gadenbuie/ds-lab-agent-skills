---
name: alt-text-dataviz
description: Write alt text and alternative descriptions for data visualizations — charts, graphs, maps, and other figures. Use this skill whenever the user asks for alt text, alternative text, image descriptions, or accessibility text for any kind of data visualization, plot, figure, chart, or graph. Also use it when the user asks how to make their charts or data visualizations accessible, or when they're working with ggplot, matplotlib, Observable, Datawrapper, or other visualization tools and need to add `alt` attributes or `fig.alt` captions.
---

# Alt Text for Data Visualizations

Your goal is to write alt text that gives screen reader users meaningful access to the information a visualization conveys — not just a description of how it looks.

## The core formula

A good alt text has three parts:

> **[Chart type]** of **[type of data]** where **[key insight]**

Example: "Line chart of monthly unemployment rates from 2019–2023 where rates spiked sharply in April 2020 then recovered to pre-pandemic levels by mid-2022."

This structure immediately tells the reader: what they're looking at, what data it shows, and why it matters.

## What to include

**Chart type** — name it up front: bar chart, scatter plot, choropleth map, box plot, etc. This orients the user before they hear anything else. Skip this only if your organization's style guide says to.

**Data being shown** — describe what the axes, dimensions, or geographic units represent. Reference the actual axis labels and units, not vague terms like "numbers" or "values."

**The key insight** — this is the most important part. What's the takeaway? What trend, comparison, or pattern is the chart communicating? A chart is included because it shows something; say what that something is. Don't just enumerate data points — synthesize them.

## What to leave out

- Don't repeat what the title, caption, or surrounding text already says.
- Don't describe visual styling (colors, fonts, border thickness) unless the styling itself is the message.
- Don't list every data point if the chart has many — focus on the pattern.
- Don't use the filename as alt text.
- Don't start with "Image of" or "Picture of" — screen readers already announce it's an image.

## Length

Aim for 1–2 sentences. Screen readers read linearly with no backtracking, so shorter is better. If the visualization is genuinely complex (e.g., a multi-panel figure or detailed map), provide a brief alt text summary and then include a longer description nearby in the page — as a caption, a linked data table, or a `longdesc` attribute.

## Special cases

**Maps**: Don't describe the visual geography. Describe the data message: "Choropleth map showing U.S. counties by median household income, where the highest incomes cluster in the Northeast and Pacific Coast."

**Live/updating charts**: Write a general description that stays accurate as data changes, or commit to updating the alt text when the highlighted insight changes.

**Decorative charts** (pure illustration, no data): Use `alt=""` to tell screen readers to skip it.

**Multiple series**: Name the series and describe how they compare, rather than tracing each line individually.

## Format for common environments

- **HTML**: `<img alt="..." />`; add `longdesc="..."` or an adjacent table for complex figures
- **R (ggplot2 / knitr)**: `fig.alt = "..."` chunk option
- **Python (matplotlib)**: `ax.set_title()` doesn't help — use `fig.text()` or set `alt` when embedding; in Jupyter use `%%html` or alt text via nbformat
- **Quarto / R Markdown**: `fig-alt: "..."` in chunk options (Quarto) or `fig.alt = "..."` (knitr)
- **Datawrapper**: Step 3 → Annotate tab → "Alternative description for screen readers"
- **Social media**: Twitter/X → +alt button; Instagram → Advanced Settings → Alt Text

## Quick self-check

Before finalizing, ask:
1. If someone can't see this chart at all, does this text give them the key information?
2. Have I said *what kind of chart* it is, *what data* it shows, and *what it means*?
3. Am I redundant with the title or caption?
4. Is it under two sentences, or does a longer description live nearby?
