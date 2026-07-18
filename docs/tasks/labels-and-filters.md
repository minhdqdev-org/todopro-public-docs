---
title: Labels and filters
description: Tag tasks with labels and save your own views with the filter builder.
updated_at: 2026-07-19T02:04:39+07:00
---

# Labels and filters

Projects say *where* a task belongs. **Labels** say something about the task that cuts across projects, and **filters** save a set of criteria as a reusable view. Both live under **Filters & Labels** in the sidebar.

## Labels

A label is a personal, coloured tag. Labels are yours alone — they are not shared with collaborators in a shared project.

Typical labels describe a mode or a context rather than a topic: `@email`, `@calls`, `@errands`, `@deep-work`, `@waiting`. Used that way, a label answers "what can I actually do right now?" no matter which project the work sits in.

### Adding labels to a task

=== "Web"

    Type `@labelname` in Quick Add, or pick labels from the task editor. Label names are a single word — use a hyphen for multi-word labels, like `@deep-work`.

=== "Mobile"

    Type `@labelname` in quick add, or use the label picker in the task's bottom sheet.

=== "CLI"

    ```bash
    todopro add "Reply to the tender @email p2"
    todopro label --help
    ```

A task can carry as many labels as you like: `Book the venue @calls @errands`.

### Label colours

Each label has a colour, which makes it easy to spot a category at a glance in a busy list. Set or change a label's colour when you create it or from the label's own page.

### Label pages and stats

Every label gets its own page listing all tasks that carry it, along with per-label statistics — how much you have tagged with it and how much you have completed. Open the label from Filters & Labels.

!!! tip
    Label stats are a quick way to check whether a label is earning its keep. A label with hundreds of tasks and no completions is usually a label that means "someday" and could be dropped.

### Label suggestions

TodoPro can suggest labels for a task based on its content. Accept a suggestion to apply it, or ignore it — nothing is applied without you.

### Labelling in bulk

Select several tasks and apply a label to all of them at once. This is the fastest way to introduce a new label across an existing backlog rather than reopening tasks one by one. See [Bulk actions](creating-tasks.md#bulk-actions-and-multi-select).

## Filters

A filter is a saved view. You describe the tasks you want to see, give it a name, and it appears under Filters & Labels with its own page — ready whenever you need it.

### Building a filter

Filters are built in the **filter builder** by choosing criteria, not by typing a query. You combine things like:

- **Project** — restrict the view to one or more projects.
- **Label** — only tasks carrying a given label.
- **Priority** — for example P1 and P2 only.
- **Due date range** — tasks due within a window.
- **Completion state** — open tasks, completed tasks, or both.

=== "Web"

    Go to **Filters & Labels**, create a filter, choose your criteria in the builder, and name it. The saved filter then has its own page in the sidebar.

=== "Mobile"

    Filters are available under Filters & Labels. The mobile filter builder supports filtering by projects and labels.

### Useful filters to start with

- **This week's important work** — priority P1 and P2, due in the next seven days.
- **Waiting on someone** — everything carrying your `@waiting` label.
- **Client work only** — the two or three projects for one client, in one list.
- **Quick wins** — a low-effort label, across all projects.

### Working in a filter

A filter page behaves like any other task list. You can open tasks, complete them, multi-select for bulk actions, and set display options — group by, sort by, and whether to show completed tasks. See [Views and layouts](../projects/views-and-layouts.md).

### Editing and deleting filters

Open the filter and change its criteria at any time; the view updates to match. Deleting a filter removes the saved view only — the tasks it showed are untouched, because a filter never contains tasks, it only points at them.

!!! note
    Filters are views, not folders. A task can appear in several filters at once and still live in exactly one project.

Related: [Priorities](priorities.md), [Due dates and deadlines](due-dates-and-deadlines.md), [Projects and sections](../projects/projects-and-sections.md).
