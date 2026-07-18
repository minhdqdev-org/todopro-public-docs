---
title: Import and export
description: Export your whole account, import a TodoPro or Todoist backup, and move projects with CSV.
updated_at: 2026-07-19T02:04:39+07:00
---

# Import and export

Your data is yours.
TodoPro can hand you a complete copy of your account at any time, and can take data back in from a previous export, from Todoist, or from a CSV file.

Related pages: [Your account](index.md) · [The CLI](../apps/cli.md) · [Projects](../projects/projects-and-sections.md)

## Export your whole account

A full export includes your tasks, projects, and the rest of your account content.

There are two formats:

- **JSON** — the standard export. It downloads gzipped, so you get a compressed file that your computer's usual archive tool can open.
- **ZIP** — the same data plus **your uploaded files**, bundled together. Choose this one if you have attachments you want to keep.

!!! tip
    Take an export before anything irreversible: deleting your account, purging your data, or a large import.
    See [Your account](index.md).

## Import a TodoPro export

You can import a TodoPro JSON export back into an account.

An import **merges** with what is already there — it adds the imported content alongside your existing tasks and projects rather than replacing them.

!!! warning
    Because imports merge, importing the same file twice leaves you with two copies of everything in it.
    Import into a fresh account, or check what you already have first.

## Import from Todoist

If you are coming from Todoist, use the CLI:

```bash
todopro import todoist
```

The `import` command also handles JSON files.
See [The CLI](../apps/cli.md) for installing and signing in, and make sure you are in the right context first — see [Contexts](../apps/cli.md).

!!! note
    Todoist import is a CLI feature.
    You only need the CLI for the move itself — once your data is in, use whichever surface you like.

## Per-project CSV

Individual projects can be exported to and imported from **CSV**, which is handy for spreadsheets and for moving a single project around.

- **Export a project to CSV** from the project itself.
- **Import a CSV into a project** to add its rows as tasks.

CSV is a good fit for a single project's task list.
For a complete backup of everything, use the full account export above.

## Export analytics

Your analytics can be exported separately from your tasks.
Use this when you want the numbers behind your reports — completion statistics, trends, and the rest — in a file of their own.
See [Reporting and analytics](../productivity/reporting-and-analytics.md).

## From the CLI

The CLI has its own export and import commands:

```bash
todopro data export
todopro data import
```

These work against whichever **context** is active, so they can also move data between a local database on your machine and your TodoPro account.
For syncing rather than a one-off file, use `todopro sync push` and `todopro sync pull` instead — see [The CLI](../apps/cli.md).

!!! tip
    `todopro data export` is an easy way to script a regular backup on your own machine.

## Choosing the right option

| What you want | Use |
| --- | --- |
| A full backup of everything | Full account export (JSON) |
| A backup including attachments | Full account export (ZIP) |
| To restore or copy an account | Import a TodoPro JSON export |
| To move from Todoist | `todopro import todoist` |
| One project in a spreadsheet | Per-project CSV export |
| To bulk-create tasks in a project | Per-project CSV import |
| Just the reporting numbers | Analytics export |
| A scripted backup | `todopro data export` |
