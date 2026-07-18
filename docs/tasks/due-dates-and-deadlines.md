---
title: Due dates and deadlines
description: Set due dates in plain language, understand how deadlines differ, and reschedule overdue work.
updated_at: 2026-07-19T02:04:39+07:00
---

# Due dates and deadlines

TodoPro gives a task two independent dates.

- The **due date** is when you plan to work on the task. It is what drives Today and Upcoming.
- The **deadline** is the hard date the task must be finished by. It does not move when you reschedule your plan.

A report due at the end of the month might have a deadline of the 31st and a due date of the 27th, because that is the day you intend to write it. If the 27th slips, you reschedule the due date — the deadline stays where it is, reminding you how much room is left.

!!! info "Pro feature"
    Deadlines require a TodoPro Pro subscription. See [TodoPro Pro](../pro/index.md). Due dates are free.

## Setting a due date

=== "Web"

    Type the date straight into Quick Add, or open the task and use the date picker. Both accept the same natural language.

=== "Mobile"

    Type the date in quick add, or open the task's bottom sheet and use the date picker.

=== "CLI"

    ```bash
    todopro add "Draft the budget friday 3pm"
    todopro reschedule <task> "next monday"
    ```

## Natural-language dates

Anywhere you can type a date, these forms work.

### Days

| You type | You get |
|---|---|
| `today` | Today |
| `tomorrow`, `tmr`, `tom` | Tomorrow |
| `monday`, `friday` | The next such weekday |
| `next friday` | The named weekday next week |
| `next week` | Next week |
| `in 3 days` | Three days from today |
| `the 24th` | The next 24th of the month |
| `jan 5`, `5 jan` | That calendar date |
| `2026-01-05` | That calendar date |

### Times of day

Word shortcuts set a specific time:

| Word | Time |
|---|---|
| `morning` | 9:00 |
| `noon`, `afternoon` | 12:00 |
| `evening` | 19:00 |
| `tonight` | 20:00 |
| `night` | 22:00 |
| `midnight` | 0:00 |

### Clock times

Write the time directly: `3pm`, `7:30pm`, `at 15:00`. Combine it with a day: `tomorrow 9am`, `friday 7:30pm`, `jan 5 at 15:00`.

## Setting a deadline

Deadlines use braces in the quick-add line:

```
Ship the quarterly report {jan 5}
```

You can set both dates at once — `Ship the quarterly report friday {jan 5}` gives a due date of Friday and a deadline of 5 January. In the task editor, the deadline has its own picker next to the due date picker.

!!! note
    On a Free account, the deadline in braces is dropped and the rest of the task is still created. TodoPro tells you the deadline was skipped and offers an upgrade.

Deadlines are more than a label. You can group and sort your views by deadline, so you can line up everything by how hard the wall is rather than by when you planned to start. See [Views and layouts](../projects/views-and-layouts.md).

## Clearing a date

To remove a due date, type `no date` or `no due date` in quick add or when editing the task. You can also clear the date from the date picker.

## Overdue tasks

A task whose due date has passed is overdue. Overdue tasks appear at the top of **Today** alongside tasks due today, so nothing quietly disappears into the past.

### Rescheduling overdue tasks in bulk

When a backlog of overdue work builds up, you do not have to fix each task one at a time. From Today, use the **reschedule overdue** action to move all overdue tasks to a new date in one step — most often today or tomorrow.

!!! tip
    Rescheduling in bulk changes due dates only. Deadlines stay untouched, so any task that is genuinely running out of time still shows it.

You can also reschedule any selection of tasks by multi-selecting them and choosing a new date. See [Bulk actions](creating-tasks.md#bulk-actions-and-multi-select).

## Where dated tasks show up

- **Today** — due today plus everything overdue.
- **Upcoming** — an agenda of the coming days, with a calendar view.

See [Today and Upcoming](../productivity/today-and-upcoming.md).

Related: [Recurring tasks](recurring-tasks.md), [Reminders](reminders.md).
