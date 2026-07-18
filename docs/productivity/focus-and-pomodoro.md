---
title: Focus and Pomodoro
description: Run timed focus sessions on a task, set focus goals, and track your focus stats.
updated_at: 2026-07-19T02:04:39+07:00
---

# Focus and Pomodoro

A task list tells you what to do. Focus sessions help you actually do it, one task at a time, for a fixed stretch.

## Pomodoro sessions

A Pomodoro session is a timed block of work attached to a single task. You start the session on the task you are about to work on, and TodoPro records what happened.

Every session ends in one of two ways:

- **Complete** — you worked the block through. The session is recorded as finished.
- **Interrupted** — something pulled you away. Mark the session interrupted rather than letting it run out; the record stays honest and your stats stay useful.

TodoPro keeps a **session history**, so you can see which tasks you have spent focus time on and how often sessions got interrupted.

!!! tip
    Marking interruptions is worth the extra tap. Over a week, a high interruption count usually points at a specific time of day or a specific project, and that is something you can change.

## Focus mode in the CLI

The CLI has a full-screen focus mode. It takes over the terminal and shows a single task plus a Pomodoro timer, so nothing else is on screen while you work.

```bash
todopro focus
```

Leave it running for the length of the session. When the timer finishes, complete the session or mark it interrupted.

## Focus goals

Focus goals let you set a target for how much focused work you want to do, and then track progress against it.

```bash
todopro goals
```

The command shows your current focus goals and how far along you are.

## Focus stats

Focus stats summarise your focus sessions over a period.

```bash
todopro stats
```

Stats are available for **today**, the **week**, and the **month**, so you can compare a single day against your recent baseline instead of judging it in isolation.

## Achievements

The CLI also tracks achievements — milestones you unlock as you keep completing tasks and focus sessions.

```bash
todopro achievements
```

## A worked routine

```bash
# See what is on today
todopro today

# Drop into full-screen focus mode and work a session
todopro focus

# At the end of the day, check how much focused work you did
todopro stats
```

!!! note
    Focus sessions and task completion are separate things. Finishing a Pomodoro does not complete the task — you decide whether the task is done.

## Related pages

- [Today, Upcoming and Review](today-and-upcoming.md)
- [Reporting and analytics](reporting-and-analytics.md)
- [The CLI](../apps/cli.md)
