---
title: Projects and sections
description: Create, organize, archive, and duplicate projects, divide them into sections, and use scratchpads, CSV, and calendar feeds.
updated_at: 2026-07-19T02:04:39+07:00
---

# Projects and sections

## Create a project

=== "Web"

    1. In the sidebar, add a new project.
    2. Give it a **name**.
    3. Pick a **color** and an **icon** so you can spot it in the sidebar.
    4. Save. The project opens and is ready for tasks.

=== "Mobile"

    1. Go to **Browse**.
    2. Add a new project.
    3. Enter a name and choose a color.
    4. Save, then open the project to add tasks.

=== "CLI"

    ```bash
    tp project create "Home renovation"
    tp project list
    ```

Once a project exists, you can send tasks to it from anywhere by typing `#ProjectName` in quick add.
See [Quick add syntax](../getting-started/quick-add-syntax.md).

!!! note
    Free accounts can have 10 projects and Pro accounts 100. See [TodoPro Pro](../pro/index.md).

## Favorite a project

Mark a project as a **favorite** to pin it near the top of the sidebar.
Favorites are per account, so they follow you to every device.

## Reorder projects

Drag a project in the sidebar to move it.
The order you choose is your own.

## Rename, recolor, and change the icon

Open the project's overflow menu (the "..." next to its name) and edit it.
You can change the name, color, and icon at any time without affecting its tasks.

## Archive and unarchive

Archiving hides a project from your normal sidebar without deleting anything.

- **Archive** a project from its overflow menu when the work is finished.
- Archived projects appear in a collapsed **Archived** group.
- **Unarchive** from the same menu to bring it back.

Archiving is the safe alternative to deleting: every task, comment, and attachment stays intact.

## Duplicate a project

Duplicating creates a copy of a project with its structure and tasks.
Use it when you run the same kind of work repeatedly and do not want to set it up again.

!!! tip
    If you repeat the same structure often, save it as a [template](templates.md) instead — templates are easier to keep up to date than a chain of copies.

## Delete a project

Deleting removes the project and its tasks.
This cannot be undone, so archive instead if you might want the history later.

## Project stats

Each project shows statistics about the work inside it — how much is done, how much is left, and how it has been progressing.
For deeper analysis across all your projects, see [Reporting and analytics](../productivity/reporting-and-analytics.md).

## Sections

Sections divide a project into groups.
In list layout they appear as headings; in [board layout](views-and-layouts.md) each section becomes a column.

### Create a section

=== "Web"

    Open the project and add a section from the point in the list where you want it.
    Name it and save.

=== "Mobile"

    Open the project, then use the **manage sections** sheet to add a section.

=== "CLI"

    ```bash
    tp section list
    ```

### Rename, reorder, and delete sections

- **Rename** a section from its overflow menu.
- **Reorder** sections by dragging them (on mobile, from the manage-sections sheet).
- **Delete** a section from its overflow menu.

Tasks in a project that are not in any section appear in a group called **(No section)**.
You can hide that group from the display options — see [Views and layouts](views-and-layouts.md).

### The "Done" section

One section per project can be marked as the **Done section**.
It acts as the completion column in board layout: drag a card into it and the task is treated as finished.

!!! note
    A project needs at least one ordinary section besides the Done section.
    If you try to mark the last remaining regular section as Done, TodoPro leaves it as it is and tells you why.

## Scratchpads

Scratchpads are free-form rich-text notes attached to a project.
Use them for meeting notes, links, a rough plan, or anything that is not a task.

| Plan | Scratchpads per project |
| --- | --- |
| Free | 2 |
| Pro | 20 |

Scratchpads live with the project, so everyone who can see the project can find them.

## CSV export and import

Each project can be exported to a **CSV** file, and you can import a CSV into a project.
This is useful for spreadsheets, one-off reporting, or moving a list of items in from another tool.

For a full backup of your whole account, see [Import and export](../account/import-export.md).

## Calendar feed

Every project offers a read-only calendar feed you can subscribe to in Google Calendar, Apple Calendar, Outlook, or any app that accepts a calendar URL.
Your project's dated tasks then show up alongside your meetings.

See [Calendar](../integrations/calendar.md) for the subscription steps and for the two-way Google Calendar integration.
