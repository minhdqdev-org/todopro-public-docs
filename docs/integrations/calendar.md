---
title: Calendar
description: Sync tasks with Google Calendar, or subscribe to a read-only calendar feed for any project.
updated_at: 2026-07-19T02:04:39+07:00
---

# Calendar

TodoPro offers two separate ways to see your work in a calendar.
They are independent — you can use either one, or both.

- **Google Calendar integration** — a two-way connection to your Google account. Push tasks to a calendar, pull events into TodoPro, and keep them in sync.
- **Project calendar feed** — a read-only link for a single project that you subscribe to in any calendar app.

Pick the Google Calendar integration if you want your tasks and events to stay in step.
Pick a calendar feed if you just want to *see* a project's tasks in your calendar, including in apps that are not Google Calendar.

## Google Calendar integration

### Connect your Google account

1. Go to **Settings → Integrations**.
2. Find the **Google Calendar** section and start the connection.
3. Sign in with Google and allow TodoPro access to your calendars.

Once connected, the section shows the connected account and the sync options.

### Choose a calendar

After connecting, pick which of your Google calendars TodoPro should use.
Choosing a dedicated calendar (rather than your main one) keeps TodoPro's entries easy to spot and easy to hide.

### Push tasks to your calendar

Pushing sends your TodoPro tasks with dates to the calendar you chose, so they show up alongside your meetings.

### Pull events into TodoPro

Pulling brings your calendar events into TodoPro, so what is already booked in your day is visible next to what you planned to do.

### Keep things in sync

Once you have pushed or pulled, syncing keeps both sides up to date as things change.
Run a sync from the same section in **Settings → Integrations**.

!!! tip
    Changing a task's date in TodoPro and then syncing moves the matching calendar entry too.
    Keep the sync running regularly so the two views do not drift apart.

### Disconnect

Use **Disconnect** in **Settings → Integrations** to remove the Google Calendar connection.
Syncing stops immediately.
Entries that were already created stay where they are — remove them in Google Calendar if you no longer want them.

### From the CLI

The CLI has a `calendar` command group for the Google Calendar integration:

```bash
todopro calendar --help
```

See [CLI](../apps/cli.md).

## Project calendar feeds

Every project offers a calendar feed you can subscribe to in any calendar app that supports subscribed calendars — Google Calendar, Apple Calendar, Outlook, and others.

The feed is **read-only**.
Your calendar app shows the project's dated tasks and refreshes them on its own schedule.
You cannot edit tasks from the subscribed calendar; make changes in TodoPro and they show up on the next refresh.

### Subscribe to a project feed

1. Open the project in TodoPro.
2. Find the project's calendar feed link.
3. Copy the link.
4. In your calendar app, add a new subscribed calendar (often called "subscribe from URL", "add by URL", or "add other calendar") and paste the link.

!!! note
    Refresh timing is decided by your calendar app, not by TodoPro.
    Some apps only refresh subscribed calendars every few hours, so a task you just added may take a while to appear.

!!! warning
    The feed link works for anyone who has it, without signing in.
    Treat it like a password: share it only with people you want to see that project's tasks, and do not post it publicly.

### Which one should I use?

| | Google Calendar integration | Project calendar feed |
|---|---|---|
| Direction | Two-way (push tasks, pull events) | Read-only, out of TodoPro |
| Scope | Your tasks and a chosen calendar | One project |
| Calendar apps | Google Calendar | Any app that supports subscribed calendars |
| Setup | Connect your Google account | Copy a link, paste it in your calendar app |

## Related pages

- [Integrations overview](index.md)
- [Due dates and deadlines](../tasks/due-dates-and-deadlines.md)
- [Today and Upcoming](../productivity/today-and-upcoming.md)
