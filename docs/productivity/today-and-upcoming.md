---
title: Today, Upcoming and Review
description: Use the Today, Upcoming, Inbox and Review views to plan your day and week.
updated_at: 2026-07-19T02:04:39+07:00
---

# Today, Upcoming and Review

TodoPro gives you four planning views that answer four different questions: what do I do now, what is coming, what have I not sorted yet, and what have I been ignoring.

## Today

**Today** shows every task due today, plus anything that is still overdue. It is the view most people live in.

Overdue tasks appear grouped separately from today's tasks, so you can see at a glance what slipped.

### Reschedule overdue tasks in bulk

When several tasks are overdue, you do not have to fix them one at a time. Use the **reschedule overdue** action in Today to move all overdue tasks to a new date in one step — most commonly to today.

!!! tip
    If the same task keeps getting rescheduled, it is usually a sign that it is too big. Open it and break it into [subtasks](../tasks/subtasks-and-dependencies.md), or give it a realistic date instead of "today" again.

Completing a task in Today removes it from the list. Recurring tasks reappear on their next occurrence — see [Recurring tasks](../tasks/recurring-tasks.md).

## Upcoming

**Upcoming** is an agenda of the days ahead. Each day gets its own group, so you can scan forward and spot the days that are already overloaded.

Upcoming also has a **calendar view**, which lays the same tasks out on a month grid. Use the agenda when you are planning your next few days, and the calendar when you want to see the shape of the whole month.

You can add a task directly to a specific day from Upcoming — the date is filled in for you.

=== "Web"

    Open **Upcoming** in the sidebar and switch between the agenda and calendar view from the view controls.

=== "Mobile"

    Tap **Upcoming** in the bottom navigation. The agenda and the calendar are both available.

=== "CLI"

    The CLI focuses on today and on explicit task lists.

    ```bash
    todopro today
    todopro task list
    ```

## Inbox

**Inbox** collects every task that does not belong to a project. It is the default landing place for anything you capture quickly.

Treat the Inbox as a staging area, not a to-do list. Regularly move its tasks into the right [project](../projects/projects-and-sections.md), or add a project directly while typing with `#ProjectName` in [quick add](../getting-started/quick-add-syntax.md).

## Review

**Review** surfaces tasks that need attention — the ones that have drifted out of your normal flow and would otherwise sit unnoticed.

For each task in Review you can:

- Act on it: complete it, reschedule it, or move it to a better project.
- **Dismiss it from review** if it is fine as it is. Dismissing does not delete or complete the task; it just stops Review from raising it again.

!!! note
    Review is a housekeeping view, not a second inbox. A short pass once a week is usually enough.

## Which view to use

| Question | View |
|---|---|
| What am I doing right now? | Today |
| What does the rest of the week look like? | Upcoming (agenda) |
| How busy is next month? | Upcoming (calendar) |
| What have I captured but not sorted? | Inbox |
| What have I been quietly ignoring? | Review |

## Related pages

- [Due dates and deadlines](../tasks/due-dates-and-deadlines.md)
- [Recurring tasks](../tasks/recurring-tasks.md)
- [Labels and filters](../tasks/labels-and-filters.md)
- [Views and layouts](../projects/views-and-layouts.md)
