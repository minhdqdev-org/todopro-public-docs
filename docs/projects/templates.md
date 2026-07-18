---
title: Templates
description: Save a project structure as a template, use the built-in Kanban template, and reuse task definitions from the CLI.
updated_at: 2026-07-19T02:04:39+07:00
---

# Templates

Templates let you set up the same structure again without rebuilding it by hand.
TodoPro has two kinds: **project templates** and **task templates**.

## Project templates

A project template captures a project's **structure** — its sections and its tasks — so you can create new projects from it.

Use them for work you repeat: a client onboarding, a release checklist, a monthly review, a trip.

### Save a project as a template

1. Open the project you want to reuse.
2. Save it as a template from the project's overflow menu.
3. Give the template a name so you can recognize it later.

The template records the sections and tasks as they are at that moment.
Changing the original project afterwards does not change the template.

### Apply a template

Create a new project from a template, and TodoPro builds it out with the template's sections and tasks already in place.
From there it is an ordinary project — rename it, recolor it, add tasks, and [share it](sharing-and-collaboration.md) as usual.

!!! tip
    Keep template projects lean. Include the sections and the tasks that are always needed, and leave the one-off work to be added each time.

## The built-in Kanban template

TodoPro ships with one ready-made template: **Kanban**.

It creates a project with five sections, in this order:

1. **Backlog**
2. **To do**
3. **Doing**
4. **Review**
5. **Done**

The Kanban template also sets the project up for board work:

- The project opens in **board layout**, so each section is a column.
- The **(No section)** column is hidden, leaving only the five real columns.

Drag cards from left to right as work progresses.
See [Views and layouts](views-and-layouts.md) for how board layout, the Done section, and display options work.

!!! note
    Everything the template sets up is an ordinary setting. You can rename or delete any column, add your own, or switch back to list layout at any time.

## Task templates

Task templates are reusable task definitions — a task you create over and over, saved once.

They are available through the [CLI](../apps/cli.md) `template` command:

```bash
tp template --help
```

Use `tp template` to list your task templates and to create tasks from them.
Because the CLI works against the same account as the web and mobile apps, tasks you create this way show up everywhere.

## Related pages

- [Projects and sections](projects-and-sections.md) — duplicating a project is the quick alternative to a template
- [Views and layouts](views-and-layouts.md)
- [CLI](../apps/cli.md)
