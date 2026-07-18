---
title: Frequently asked questions
description: Short answers to the questions people ask most about TodoPro.
updated_at: 2026-07-19T02:04:39+07:00
---

# Frequently asked questions

Short answers, with a link to the full page for each.

## Getting started

### Do I need to install anything to use TodoPro?

No. The web app at <https://app.todopro.xyz> is the primary way to use TodoPro and runs in your browser.
The [Android app](apps/mobile.md) and the [CLI](apps/cli.md) are optional extras on the same account.

### How do I add a task quickly?

Type one line in Quick Add, using tokens like `#Project`, `@label`, `p1`, and a date in plain words.
For example: `Email Sam about the deck tomorrow 9am #Work @email p1`.
See [Quick add syntax](getting-started/quick-add-syntax.md).

### Where do I start?

Create an account, then add your first task and get familiar with Today.
See [Getting started](getting-started/index.md) and [Your first task](getting-started/first-task.md).

## Tasks and dates

### What is the difference between a due date and a deadline?

A **due date** is when you plan to work on the task.
A **deadline** is the hard date it must be finished by, tracked separately so you can schedule work well before the deadline arrives.
Deadlines are a Pro feature — see [Due dates and deadlines](tasks/due-dates-and-deadlines.md).

### Why is my new task P4?

That is the default.
New tasks are created at **P4**, the lowest priority, unless you say otherwise — add `p1`, `p2`, or `p3` in Quick Add, or change it in the task editor.
See [Priorities](tasks/priorities.md).

### Which priority is highest, P1 or P4?

**P1 is the highest** and P4 is the lowest.
See [Priorities](tasks/priorities.md).

### What does `every!` do?

`every!` makes a recurring task count its next occurrence from the moment you **complete** it, rather than from its due date.
Use it for things like "water the plants every! 3 days", where what matters is the gap since you last did it.
See [Recurring tasks](tasks/recurring-tasks.md).

### Do reminders cost money?

Some of them.
**Relative** reminders that fire a set time before the due date (like `!30m before`) are **free**.
**Absolute** reminders at a fixed moment and **recurring** reminders are Pro.
See [Reminders](tasks/reminders.md).

### Can I clear a due date from Quick Add?

Yes — include `no date` or `no due date` in the line.
See [Quick add syntax](getting-started/quick-add-syntax.md).

### What happens to tasks I did not finish yesterday?

They show up as overdue in **Today**, and you can reschedule all of them at once from there.
See [Today and Upcoming](productivity/today-and-upcoming.md).

## Projects

### How do I move a task to a project?

Open the task and change its project, or select several tasks and use the bulk move action.
When creating a task you can also just type `#ProjectName` in Quick Add.
See [Projects and sections](projects/projects-and-sections.md).

### Where do tasks with no project go?

To the **Inbox**.
It is the catch-all for anything you capture without deciding where it belongs yet.
See [Projects](projects/index.md).

### How many projects can I have?

**10 on Free** and **100 on Pro**.
Scratchpads are limited too: 2 per project on Free, 20 on Pro.
See [TodoPro Pro](pro/index.md).

### What is a "Done" section?

A section you mark as the completion column, so dragging a card into it in board view completes the task.
See [Views and layouts](projects/views-and-layouts.md).

### Can I reuse a project structure?

Yes. Save a project's sections and tasks as a template and apply it when creating new projects.
There is also a built-in **Kanban** template.
See [Templates](projects/templates.md).

## Pro and billing

### How long is the trial?

**7 days**, started from the app in **Settings → Billing** or from any upgrade prompt.
See [TodoPro Pro](pro/index.md).

### How much does Pro cost?

See the pricing page at <https://todopro.xyz/pricing>.

### What happens to my data if I cancel Pro?

Nothing is deleted.
Your access continues to the end of the period you have already paid for, then Pro-only features stop being editable and you return to the Free limits.
Your tasks, projects, and history stay exactly where they are.
See [TodoPro Pro](pro/index.md) and [Your account](account/index.md).

### What happens if I use a Pro-only token on Free?

The task is still created — the Pro part (a deadline, or an absolute or recurring reminder) is dropped and TodoPro tells you why.
See [Quick add syntax](getting-started/quick-add-syntax.md).

### Can I share a single task with someone who has no account?

Yes. Create a public share link for that task and they can open it without signing up.
Full project sharing is different — that needs Pro and invites real accounts.
See [Sharing and collaboration](projects/sharing-and-collaboration.md).

## Apps and sync

### Is there an iOS app?

Not at the moment.
The TodoPro mobile app is **Android**.
On iPhone or iPad, use the web app at <https://app.todopro.xyz>.
See [Apps](apps/index.md).

### Can I use TodoPro offline?

Yes. Both the web app and the Android app work offline and queue your changes, replaying them when you reconnect.
See [The web app](apps/web.md) and [The mobile app](apps/mobile.md).

### Will changes I make on my laptop show up on my phone?

Yes, in real time while both are online.
Everything is backed by one account.
See [Apps](apps/index.md).

### What is a CLI "context"?

A context is the data source the CLI talks to: `local` keeps everything in a database file on your machine, `remote` uses your TodoPro account.
Switch with `todopro context use <name>`.
See [The CLI](apps/cli.md).

## Integrations

### What do I need to connect GitHub Projects?

A GitHub **personal access token** with read access to projects and repositories, added in **Settings → Integrations**.
For organization projects, the organization must allow member read access.
GitHub Projects is a Pro integration — see [GitHub Projects](integrations/github-projects.md).

### Can I see my TodoPro tasks in my calendar app?

Yes, in two ways: connect **Google Calendar** for a two-way sync, or subscribe to a project's read-only calendar feed in any calendar app.
See [Calendar](integrations/calendar.md).

### What is the Hub?

One unified feed of external items from the integrations you have connected.
It is a Pro feature — see [TodoPro Pro](pro/index.md).

## Account and security

### How do I get my data out?

Take a full account export — JSON (downloaded gzipped), or a ZIP that also includes your uploaded files.
Individual projects can be exported to CSV, and analytics can be exported on their own.
See [Import and export](account/import-export.md).

### Can I sign in without a password?

Yes. Add a **passkey** in **Settings → Security** and sign in with your device unlock — you do not even need to type your email.
**Sign in with Google** also works on web and mobile.
See [Sign-in and security](account/security.md).

### Someone signed in from a device I do not recognise. What now?

Use the one-click **"This wasn't me"** action in the new-device email TodoPro sends you, then change your password and review your known devices.
See [Sign-in and security](account/security.md).

### If I delete my account, can I get it back?

Within **30 days**, yes.
Deletion is scheduled with a 30-day grace period, and you can cancel it in that window.
After that it is permanent.
See [Your account](account/index.md).
