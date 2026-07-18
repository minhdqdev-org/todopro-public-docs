---
title: TodoPro Pro
description: What Pro unlocks, how the 7-day trial works, and how to manage your subscription.
updated_at: 2026-07-19T02:04:39+07:00
---

# TodoPro Pro

TodoPro is free to use for everyday task management.
**Pro** unlocks the features built for planning further ahead, working with other people, and pulling work in from other tools.

For current prices, see the [pricing page](https://todopro.xyz/pricing).

## Free vs Pro

| Feature | Free | Pro |
|---|---|---|
| [Deadlines](../tasks/due-dates-and-deadlines.md) on tasks | — | Yes |
| [Locations](../tasks/creating-tasks.md) (location-based tasks) | — | Yes |
| Relative [reminders](../tasks/reminders.md) ("30 minutes before due") | Yes | Yes |
| Absolute reminders (a fixed date and time) | — | Yes |
| Recurring reminders | — | Yes |
| [Project sharing and collaboration](../projects/sharing-and-collaboration.md) | — | Yes |
| [GitHub Projects integration](../integrations/github-projects.md) | — | Yes |
| Capy integration | — | Yes |
| The [Hub](../integrations/index.md#the-hub) | — | Yes |
| AI assistant | — | Yes |
| Projects | 10 | 100 |
| Scratchpads per project | 2 | 20 |

Everything else — tasks, due dates, priorities, recurring tasks, subtasks, dependencies, labels, filters, sections, board and list views, templates, Today and Upcoming, focus and Pomodoro, reporting, voice dictation, import and export, the CLI, and the mobile app — is available on every plan.

## Start a 7-day trial

You can try Pro for **7 days** before paying anything.

=== "Web"

    Go to **Settings → Billing** and start the trial.
    You can also start it from any upgrade prompt you hit while using a Pro feature.

=== "Mobile"

    Start the trial from the app's settings.

### How trials behave

- The trial lasts **7 days** from the moment you start it.
- While the trial is live, you have full access to every Pro feature — it counts as Pro everywhere, including integrations.
- When the trial ends, your account returns to Free unless you subscribe.
- Nothing is deleted when a trial ends. Content that goes beyond Free limits stays in your account; you just cannot add more or use the Pro-only features until you upgrade.

## Subscribe and manage billing

Subscribe from **Settings → Billing**.

Once you have a paid subscription, the same page gives you a **billing portal** where you can:

- update your payment details
- see your billing history
- cancel your subscription

If you cancel, your access continues to the **end of the period you already paid for**.
You are not cut off immediately, and you are not charged again.

!!! note "Buying on mobile"
    You can start a trial directly in the mobile app, but you complete the purchase on the web.
    Open [app.todopro.xyz](https://app.todopro.xyz) in a browser and go to **Settings → Billing** to subscribe.
    Once the subscription is active, it applies to every device signed in to your account.

## What happens on Free when you hit a Pro feature

TodoPro never fails silently.
When you reach a Pro-only feature on the Free plan, you get an upgrade prompt explaining what the feature does and how to try it.

Quick add behaves a little differently, and deliberately so.
If you type a line that includes a Pro-only piece — a deadline in braces, or an absolute or recurring reminder — **the task is still created**.
TodoPro drops just the Pro part and tells you why.

For example, on Free:

```
Ship the report friday {jan 5} p1
```

creates a P1 task due Friday, without the deadline, and tells you the deadline needed Pro.
Nothing is lost — you keep the task, and adding the deadline later is one click after you upgrade.

See [Quick-add syntax](../getting-started/quick-add-syntax.md) for the full list of tokens.

## Related pages

- [Due dates and deadlines](../tasks/due-dates-and-deadlines.md)
- [Reminders](../tasks/reminders.md)
- [Sharing and collaboration](../projects/sharing-and-collaboration.md)
- [Integrations](../integrations/index.md)
