---
title: Web app
description: A tour of the TodoPro web app at app.todopro.xyz.
updated_at: 2026-07-19T02:04:39+07:00
---

# Web app

The web app at [app.todopro.xyz](https://app.todopro.xyz) is the primary way to use TodoPro. It has every feature: planning views, projects and boards, collaboration, integrations, and reporting.

Sign in with your email and password, with [Google](../getting-started/create-account.md), or with a [passkey](../account/security.md).

## Navigation

The sidebar holds your main areas.

| Area | What it shows |
|---|---|
| **Today** | Tasks due today plus anything overdue |
| **Inbox** | Tasks with no project |
| **Upcoming** | An agenda of the coming days, with a calendar view |
| **Filters & Labels** | Your saved filters and your labels, each with its own page |
| **Hub** | A unified feed of items from your connected integrations (Pro) |
| **Reporting** | Completion statistics, trends, streaks, and more |
| **Settings** | Your account, appearance, notifications, security, tokens, billing, integrations |
| **Projects** | Each of your projects, in the order you arrange them |

There is also a **Review** view, which surfaces tasks that need attention so nothing sits forgotten. See [Today, Upcoming and Review](../productivity/today-and-upcoming.md).

Favourite projects are pinned for quick access, and archived projects are grouped out of the way.

## Quick add

Quick add is the fastest way to capture anything. Type one line and TodoPro pulls out the structured parts.

```
Email Sam about the deck tomorrow 9am #Work @email p1 !30m before
```

That creates a task called "Email Sam about the deck", due tomorrow at 9am, in the Work project, labelled `email`, at priority 1, with a reminder 30 minutes before.

The same syntax works in the mobile app and the CLI. See [Quick add syntax](../getting-started/quick-add-syntax.md) for the full reference.

Next to the quick add bar there is a **microphone button** for voice capture — speak freely and TodoPro turns what you say into structured tasks as you talk.

!!! tip
    You do not have to use tokens. Type a plain sentence and fill in the details in the task editor afterwards if you prefer.

## Working with tasks

Open a task to reach everything it holds: description, project and section, priority, due date, deadline, labels, reminders, subtasks, dependencies, comments, attachments, and its activity history.

You can also multi-select tasks and act on them together — complete, change priority, move, or label them in bulk.

## Views and layouts

Every project can be shown as a **list** or as a **board**, where the columns are your sections and you drag cards between them. Display options let you group and sort the view, show completed tasks, and hide the "(No section)" group. See [Views and layouts](../projects/views-and-layouts.md).

## Offline support and real-time sync

The web app keeps a copy of your data in your browser. If you go offline, you can keep reading, adding, editing, and completing tasks; your changes are queued and sent as soon as you reconnect.

While you are online, changes sync in **real time**. If a teammate updates a task in a shared project, or you complete something on your phone, the web app updates without a refresh.

!!! note
    Because your data is cached in the browser, sign out on shared or public computers rather than just closing the tab.

## Theme

TodoPro follows a light and a dark theme. Switch between them in **Settings → Appearance**.

## Settings

| Section | What you manage there |
|---|---|
| **Profile** | Display name and avatar |
| **Appearance** | Theme |
| **Notifications** | Notification preferences, including the daily digest email |
| **Security** | Passkeys, known sign-in devices, signing out everywhere |
| **API tokens** | Personal access tokens for the CLI and your own scripts |
| **Billing** | Your plan, starting a trial, and managing a subscription |
| **Integrations** | GitHub Projects, Google Calendar, and Capy |

## Related pages

- [Quick add syntax](../getting-started/quick-add-syntax.md)
- [Projects and sections](../projects/projects-and-sections.md)
- [Sharing and collaboration](../projects/sharing-and-collaboration.md)
- [Reporting and analytics](../productivity/reporting-and-analytics.md)
- [Integrations](../integrations/index.md)
