---
title: Reminders
description: Get notified before a task is due, at a fixed time, or on a repeating schedule.
updated_at: 2026-07-19T02:04:39+07:00
---

# Reminders

A due date puts a task on a list. A **reminder** actively pokes you. TodoPro has three kinds of reminder, and the difference between them is what the reminder is anchored to.

| Kind | Anchored to | Example | Plan |
|---|---|---|---|
| **Relative** | The task's due date | `!30m before` | Free |
| **Absolute** | A fixed moment in time | `!tmr 3pm` | Pro |
| **Recurring** | A repeating schedule | `!every sat 9am` | Pro |

!!! info "Pro feature"
    Absolute and recurring reminders require a TodoPro Pro subscription. See [TodoPro Pro](../pro/index.md). Relative reminders — "remind me X before it's due" — are free on every account.

## Relative reminders (free)

A relative reminder fires a set amount of time before the task's due date. If you reschedule the task, the reminder moves with it — that is the whole point of it being relative.

| You type | When it fires |
|---|---|
| `!30m before` | 30 minutes before the due time |
| `!30mb` | Short form of the same thing |
| `!2h before` | 2 hours before |
| `!1d before` | 1 day before |
| `!1w before` | 1 week before |
| `!0mb` | Exactly at the due time |
| `!at time of task` | Exactly at the due time |

Offset units are `m` for minutes, `h` for hours, `d` for days and `w` for weeks.

```
Call the dentist tomorrow 2pm !30m before
Renew the domain jan 5 !1w before
```

!!! note
    A relative reminder needs a due date to be relative to. Give the task a date and time first.

## Absolute reminders (Pro)

An absolute reminder fires at a fixed moment, whatever the task's due date is. Use it when the nudge and the work are not the same event — a task due Friday that you want to be reminded about tonight.

| You type | When it fires |
|---|---|
| `!6pm` | Today at 18:00 |
| `!tmr 3pm` | Tomorrow at 15:00 |
| `!Mon 9am` | Next Monday at 09:00 |
| `!30m` | 30 minutes from now |
| `!later` | About four hours from now |

Note the difference a single word makes: `!30m before` is relative and free, while `!30m` is absolute and Pro — the first means "half an hour before the task is due", the second means "half an hour from now".

## Recurring reminders (Pro)

A recurring reminder repeats on its own schedule, independently of whether the task itself repeats.

| You type | When it fires |
|---|---|
| `!every sat 9am` | Every Saturday at 09:00 |
| `!every 5pm` | Every day at 17:00 |
| `!every 2 hours` | Every two hours |

This suits standing nudges — a weekly review prompt, or a periodic check on something long-running.

## Using `remind` instead of `!`

Anywhere a `!` token works, you can write the word `remind` instead if you prefer it to read as a sentence. Both produce the same reminder.

## Setting reminders from the editor

You do not have to type tokens. Open a task and add a reminder from the reminder control, choosing the kind and the time. On mobile, the reminder picker is in the task's bottom sheet.

A task can carry more than one reminder — for example one a week ahead and one on the day.

=== "Web"

    Open the task, then add a reminder from the task dialog. Relative offsets are offered directly; absolute and recurring options are marked as Pro.

=== "Mobile"

    Open the task's bottom sheet and use the reminder picker.

=== "CLI"

    Include the reminder token in the line you add:

    ```bash
    todopro add "Call the dentist tomorrow 2pm !30m before"
    ```

    Reminders apply when the CLI is working against your TodoPro account. See [CLI](../apps/cli.md).

## How you are notified

When a reminder fires, TodoPro notifies you according to your notification preferences:

- **Push notification** on the mobile app. Tapping it opens the task directly.
- **Browser notification** in the web app.
- **Email**, if you have email notifications enabled.

## Snoozing

Reminders can be snoozed. If a reminder arrives at a bad moment, snooze it and TodoPro will bring it back later rather than leaving you to remember it yourself.

## Notification preferences and the daily digest

Go to **Settings → Notifications** to choose which events notify you and through which channels. This is also where you control the **daily digest** — a once-a-day email summarising what is on your plate, which many people prefer to a stream of individual notifications.

!!! tip
    If reminders are not arriving on mobile, check that notifications are allowed for TodoPro in your device's system settings as well as in Settings → Notifications. See [Troubleshooting](../troubleshooting.md).

## Pro reminder tokens on a Free account

If you type an absolute or recurring reminder while on Free, the task is **still created** — TodoPro never silently loses your input. The Pro reminder is dropped, and you are shown a message explaining which part was skipped and offering an upgrade.

Any relative reminders in the same line are kept, so `Call the dentist tomorrow 2pm !30m before !later` creates the task with the "30 minutes before" reminder and drops only the `!later`.

Related: [Due dates and deadlines](due-dates-and-deadlines.md), [Recurring tasks](recurring-tasks.md), [TodoPro Pro](../pro/index.md).
