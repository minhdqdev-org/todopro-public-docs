---
title: Quick-add syntax
description: The complete natural-language reference for TodoPro quick add — projects, labels, priorities, dates, deadlines, recurrence, and reminders.
updated_at: 2026-07-19T02:04:39+07:00
---

# Quick-add syntax

Quick add turns one line of plain text into a fully structured task. You type it the way you would say it, and TodoPro pulls out the project, labels, priority, dates, and reminders — then strips those tokens out so the title stays clean.

```text
Email Sam about the deck tomorrow 9am #Work @email p1 !30m before
```

That single line creates a task titled **"Email Sam about the deck"**, due tomorrow at 9:00, in the **Work** project, labelled **email**, at priority **P1**, with a reminder 30 minutes before it is due.

!!! note "Same syntax everywhere"
    Quick add works identically in the web app, the Android app, and the CLI. What you learn once applies on every surface.

## Cheat sheet

| What you want | Token | Examples |
| --- | --- | --- |
| Project | `#name` | `#Work` `#Home` |
| Label | `@name` | `@email` `@errand` (repeat for several) |
| Priority | `p1`–`p4` | `p1` `p3` |
| Priority (alternate) | `!!1`–`!!4`, `!!!` | `!!2`, `!!!` is the same as `p1` |
| Priority (words) | `urgent` `high` `medium` `low` | `urgent` = P1, `low` = P4 |
| Due date (relative) | plain words | `today` `tomorrow` `tmr` `tom` `in 3 days` `next week` |
| Due date (weekday) | weekday name | `monday` `next friday` |
| Due date (calendar) | date | `jan 5` `5 jan` `2026-01-05` |
| Due date (day of month) | ordinal | `the 24th` |
| Time of day (word) | keyword | `morning` 9:00, `noon` / `afternoon` 12:00, `evening` 19:00, `tonight` 20:00, `night` 22:00, `midnight` 0:00 |
| Time of day (clock) | clock time | `3pm` `7:30pm` `at 15:00` |
| Deadline (Pro) | `{date}` | `{jan 5}` `{next friday}` |
| Clear the due date | `no date` | `no date` `no due date` |
| Recurrence | `every …` | `every day` `every monday` `every 2 weeks` `every month` `every year` |
| Recurrence from completion | `every!` | `every! 3 days` |
| Reminder | `!` or `remind` | `!30m before` `!6pm` `!every sat 9am` |

Names for projects and labels are single words. Use `#ProjectName` rather than `#Project Name`.

## A worked example

Take this line:

```text
Draft the quarterly report every! 2 weeks {jan 5} #Reports @writing urgent !1d before
```

Here is what each piece does:

| Piece | Becomes |
| --- | --- |
| `Draft the quarterly report` | The task title |
| `every! 2 weeks` | Repeats every 2 weeks, counted from when you complete it |
| `{jan 5}` | Deadline of 5 January (Pro) |
| `#Reports` | Goes into the Reports project |
| `@writing` | Tagged with the writing label |
| `urgent` | Priority P1 |
| `!1d before` | Reminder one day before it is due |

The saved task is titled just **"Draft the quarterly report"**. Everything else lives in its proper field, where you can search, filter, and sort on it.

## Dates and times

A due date is **when you plan to do the work**. You can write it in whatever form is natural.

```text
Pay rent the 1st
Standup tomorrow 9:30am
Renew passport 2026-01-05
Call mum sunday evening
Review notes in 3 days
```

Combine a date and a time freely: `tmr 3pm`, `next friday at 15:00`, `monday morning`.

To remove an existing due date while editing, use `no date` or `no due date`.

See [Due dates and deadlines](../tasks/due-dates-and-deadlines.md).

## Deadlines

!!! info "Pro feature"
    Deadlines require a TodoPro Pro subscription. See [TodoPro Pro](../pro/index.md).

A **deadline** is different from a due date. The due date is when you intend to work on something; the deadline is the hard date it must be finished by. Write it in braces:

```text
Ship the report {jan 5}
Submit tax return friday {april 15}
```

That task is planned for Friday but must be done by 15 April.

## Recurrence

Repeating tasks use plain `every …` phrasing:

```text
Water the plants every 3 days
Team sync every monday 10am
Pay rent every month
Renew domain every year
```

Add an exclamation mark to `every` to re-anchor the schedule to your completion time instead of the due date:

```text
Change the air filter every! 2 months
```

With `every! 2 months`, if you finish the task two weeks late, the next occurrence is two months from **the day you completed it** — not from the original due date. Use it for chores where the interval matters more than the calendar.

See [Recurring tasks](../tasks/recurring-tasks.md).

## Reminders

A reminder is written with a `!` token, or with the word `remind`. TodoPro supports three kinds, and they behave quite differently.

### Relative reminders (free)

These fire a set amount of time **before the task is due**. They only make sense on a task that has a due date.

```text
Dentist appointment tomorrow 2pm !30m before
Board meeting monday 9am !1d before
Leave for the airport friday 6am !0mb
```

- `!30m before` and `!30mb` are the same thing: 30 minutes before.
- `!0mb` means exactly at the due time.
- `!at time of task` also works.

Offset units are `m` minutes, `h` hours, `d` days, `w` weeks.

Relative reminders are available on the Free plan.

### Absolute reminders (Pro)

!!! info "Pro feature"
    Absolute reminders require a TodoPro Pro subscription. See [TodoPro Pro](../pro/index.md).

These fire at a fixed moment, regardless of the task's due date.

```text
Check the oven !6pm
Follow up with the client !tmr 3pm
Prep the slides !Mon 9am
Take the pasta off !30m
Look at this again !later
```

- `!30m` means 30 minutes from now.
- `!later` means roughly four hours from now.

### Recurring reminders (Pro)

!!! info "Pro feature"
    Recurring reminders require a TodoPro Pro subscription. See [TodoPro Pro](../pro/index.md).

These repeat on their own schedule.

```text
Water the office plants !every sat 9am
Stand up and stretch !every 2 hours
Log the day !every 5pm
```

### How reminders reach you

Reminders arrive as push notifications on mobile, and as browser or email notifications, depending on what you have enabled in **Settings → Notifications**. You can snooze a reminder when it fires.

See [Reminders](../tasks/reminders.md).

## Free plan and Pro tokens

If you are on the Free plan and your line contains a Pro-only piece — a deadline in braces, or an absolute or recurring reminder — the task is still created. The Pro part is dropped, and TodoPro tells you which piece it left out and why. Nothing fails silently and nothing is lost from the title.

The free relative reminder (`!30m before`) always works, on any plan.

## Tips

!!! tip
    Order does not matter. `p1 #Work tomorrow Email Sam` parses the same as `Email Sam tomorrow #Work p1`.

!!! tip
    You can stack labels. `Renew licence @admin @annual` applies both.

!!! warning
    A word that looks like a token is treated as one. If you genuinely need "today" in the title of a task, set the date from the task editor instead of quick add.

## Related pages

- [Creating tasks](../tasks/creating-tasks.md)
- [Due dates and deadlines](../tasks/due-dates-and-deadlines.md)
- [Priorities](../tasks/priorities.md)
- [Recurring tasks](../tasks/recurring-tasks.md)
- [Reminders](../tasks/reminders.md)
- [Labels and filters](../tasks/labels-and-filters.md)
