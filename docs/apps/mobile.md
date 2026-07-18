---
title: Mobile app
description: The TodoPro Android app — offline-first capture, reminders, and push notifications.
updated_at: 2026-07-19T02:04:39+07:00
---

# Mobile app

The TodoPro mobile app is available for **Android**. It is built for capture on the move and for staying on top of reminders, and it carries most of what the web app can do.

Sign in with your email and password, with **Google sign-in**, or reset your password from the app if you have forgotten it. There is no iOS app — on an iPhone or iPad, use the web app at [app.todopro.xyz](https://app.todopro.xyz).

## What the app can do

**Planning views**

- **Today** — tasks due today plus overdue tasks
- **Inbox** — tasks with no project
- **Upcoming** — an agenda of the coming days, with a calendar view
- **Browse** — move around your projects and lists
- **Filters & Labels** — your saved filters and labels, with a filter builder that supports projects and labels
- **Search** — find tasks, including completed ones

**Projects**

- Project detail with **sections**
- **List** and **board** layouts, with **drag-and-drop** between columns
- A display options sheet for grouping, sorting, and showing completed tasks
- Project members and invitations for shared projects

**Tasks**

- **Natural-language quick add** — the same syntax as the web app and CLI, so `Call the dentist tomorrow 3pm #Health p2` works exactly as you would expect
- A task detail bottom sheet with all the pickers: project, section, priority, dates, labels, reminders, and more
- **Voice dictation** — tap the microphone on Today or Inbox and speak your tasks
- Comments and attachments, with images previewing in the app
- Multi-select with bulk move

**Everything else**

- A notifications inbox
- Reporting charts
- Settings, avatar upload, and a light/dark theme toggle

## Offline-first

The app keeps your data on the device, so it opens and works immediately whether or not you have signal.

When you are offline, every change you make — creating tasks, completing them, editing, moving — is written locally and added to a **change queue**. As soon as you reconnect, the queue is replayed in order against your account, and your device catches up with anything that changed elsewhere while you were away.

That means you can plan on a plane, in a tunnel, or with a dead connection, and nothing is lost.

When you are online, updates arrive in **real time**, so a change made on the web app shows up on your phone without pulling to refresh.

!!! tip
    If something looks out of date, make sure the device actually has a connection. The queue drains automatically; you do not need to trigger a sync by hand.

## Push notifications

The app sends push notifications for things that need you, including **task reminders** and **project invitations**.

Tapping a notification deep-links straight to the relevant task, so you land where you need to be instead of on the home screen.

Choose what you are notified about in **Settings → Notifications** — those preferences are shared across your devices.

See [Reminders](../tasks/reminders.md) for how to attach reminders to tasks.

## Trials and purchases

You can start your **7-day Pro trial from inside the app**. Tap through from the upgrade prompt or your settings and the trial begins straight away, unlocking Pro features on every device.

Completing a paid purchase is done **on the web**, not in the app. When you are ready to subscribe, open [app.todopro.xyz](https://app.todopro.xyz) and go to **Settings → Billing**. See [TodoPro Pro](../pro/index.md) and the [pricing page](https://todopro.xyz/pricing).

## Related pages

- [Quick add syntax](../getting-started/quick-add-syntax.md)
- [Reminders](../tasks/reminders.md)
- [Views and layouts](../projects/views-and-layouts.md)
- [TodoPro Pro](../pro/index.md)
