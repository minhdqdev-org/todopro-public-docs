---
title: Troubleshooting
description: Fixes for the most common problems, grouped by what you are seeing.
updated_at: 2026-07-19T02:04:39+07:00
---

# Troubleshooting

Find the symptom that matches what you are seeing and work down the steps.

## Changes are not appearing on another device

While every device is online, changes sync in real time.
If one device looks stale:

1. Check that the device showing old data actually has a working internet connection.
2. Confirm both devices are signed in to the **same account** — it is easy to end up in a second account after signing in with Google using a different address. See [Sign-in and security](account/security.md).
3. Reload the web app, or reopen the mobile app, to force a fresh pull.
4. If you were recently offline, give the queued changes a moment to replay.

!!! note
    Layout (list or board) and sort direction are deliberately **per device**.
    If a project looks like a board on your laptop and a list on your phone, that is by design, not a sync failure.
    See [Views and layouts](projects/views-and-layouts.md).

## Offline changes have not synced yet

Both the web app and the Android app work offline and queue your changes.
When you reconnect, the queue replays in order.

If changes still look missing after reconnecting:

1. Confirm the device is really back online, not on a captive Wi-Fi portal that has not been accepted.
2. Keep the app open for a moment — the queue replays in the background and a long offline stretch can take several seconds.
3. Do not sign out on that device until the queue has drained, or unsent changes may be lost.

!!! tip
    Make edits on one device at a time while offline.
    Two devices editing the same task offline will both replay, and the last change to arrive wins.

## I am not getting reminders or push notifications

Work through these in order:

1. Open **Settings → Notifications** and check the channel you expect is switched on. See [Your account](account/index.md).
2. Check your device's own notification settings allow TodoPro (Android system settings, or your browser's site permissions).
3. Confirm the reminder actually exists on the task — open it and look at its reminders. See [Reminders](tasks/reminders.md).
4. Check the reminder kind. **Relative** reminders ("30 minutes before due") are free. **Absolute** and **recurring** reminders are Pro — on Free they are not created.
5. A relative reminder needs a due date to count back from. No due date means nothing to fire before.

!!! warning
    If you added a reminder while on Free using an absolute time like `!6pm`, it was dropped at creation.
    Upgrade and add it again — it will not appear retroactively. See [TodoPro Pro](pro/index.md).

## A quick-add token was ignored

Quick Add strips tokens it recognises out of the title.
If a token stayed in the title as plain text, it was not recognised.

Common causes:

- **The token needs to be a single word.** `#Work` works; `#Client Work` does not — the project and label tokens stop at the first space. Rename the project to a single word, or set the project from the task editor instead.
- **You are on Free and the token is Pro-only.** Deadlines in braces (`{jan 5}`) and absolute or recurring reminders are Pro. The task is still created, the Pro piece is dropped, and TodoPro tells you why.
- **Typo in the token.** Check the exact forms on [Quick add syntax](getting-started/quick-add-syntax.md).
- **The project or label does not match.** Check the name against your sidebar and [Filters and labels](tasks/labels-and-filters.md).

!!! tip
    If a line is not parsing the way you expect, add the task anyway and then fix the fields in the task editor.
    Nothing is lost.

## I cannot set a deadline

Deadlines are a Pro feature, separate from due dates.

- On Free, the deadline picker shows a Pro marker and an upgrade prompt.
- Typing `{jan 5}` in Quick Add on Free still creates the task, but without the deadline.

Start the 7-day trial from **Settings → Billing** to try it.
See [Due dates and deadlines](tasks/due-dates-and-deadlines.md) and [TodoPro Pro](pro/index.md).

## I cannot invite someone to a project

1. **Project sharing is Pro.** On Free the invite option prompts you to upgrade. See [TodoPro Pro](pro/index.md).
2. Check you have permission on that project — some roles cannot invite. The owner or an admin can.
3. Check the email address. Invites autocomplete over existing users, so an exact match is the surest route.
4. If they never got it, look at the pending invitations on the project: you can revoke and re-send.
5. They can also accept from **their notifications** rather than the emailed link.

See [Sharing and collaboration](projects/sharing-and-collaboration.md).

## GitHub integration shows nothing or fails

1. **Check the token's permissions.** Your personal access token needs read access to **projects** and **repositories**. A token missing either shows an empty or partial list.
2. **Organization projects need org approval.** If the project belongs to an organization, that organization must allow member read access. Without it your token cannot see the project at all, even though you can in the browser.
3. **Give large syncs time.** Big syncs, pushes, and imports run in the background and report progress. An operation that looks stuck is often still working — leave the page and come back.
4. **Re-connect if the token changed.** If you regenerated or revoked the token on GitHub, add the new one in **Settings → Integrations**.
5. **Expect drafts sometimes.** Pushing a task creates a real GitHub Issue only when the linked GitHub Project has exactly one repository. Otherwise you get a draft item — that is expected, not an error.

GitHub Projects is a Pro integration. See [GitHub Projects](integrations/github-projects.md).

## Calendar events are not appearing

1. Check the integration is still connected in **Settings → Integrations**, and that you picked the **right calendar** — it is easy to sync into a calendar you do not normally look at.
2. Run a sync and wait for it to finish.
3. If you subscribed to a project's **.ics feed** instead, remember it is **read-only** and your calendar app decides how often to refresh it. That refresh can lag by hours.
4. Confirm the tasks you expect actually have dates. Tasks with no date have nothing to place on a calendar.

See [Calendar](integrations/calendar.md).

## I cannot sign in

Match your situation:

- **Forgot your password.** Use **Forgot password** on the sign-in screen and follow the emailed link. Check spam if it does not arrive.
- **Your passkey is on another device.** A passkey only works on the device or password manager where you created it. Sign in with your password or Google on the new device, then add a passkey there. See [Sign-in and security](account/security.md).
- **Google account mismatch.** Signing in with Google signs you into the account for *that* Google address. If you see an empty account, you are probably in a different one — sign out and use the email and password you originally signed up with.
- **You deleted your account.** If you are inside the 30-day grace period, sign in and cancel the pending deletion. See [Your account](account/index.md).

!!! warning
    If you did not expect a sign-in that you were emailed about, use the one-click **"This wasn't me"** action in that email, then sign out of all devices.

## The CLI shows the wrong data

Almost always a **context** problem: the CLI can talk to a local database on your machine or to your TodoPro account, and it is easy to be pointed at the wrong one.

1. Check which context is active and switch if needed:

    ```bash
    todopro context use <name>
    ```

2. `local` means everything is stored on your machine only, and will not match the web app. `remote` talks to your account.
3. If you meant to be on `remote`, make sure you are signed in there with `todopro auth login`.
4. To move data between the two, use `todopro sync pull` and `todopro sync push`. Preview first with `--dry-run`, and resolve conflicts with `--strategy=local-wins` or `--strategy=remote-wins`.
5. `todopro sync status` shows your sync history and last sync times.

See [The CLI](apps/cli.md).

## I have hit a project or scratchpad limit

Free and Pro have different limits:

| | Free | Pro |
| --- | --- | --- |
| Projects | 10 | 100 |
| Scratchpads per project | 2 | 20 |

If you are at the limit, you can either:

- **Archive projects you have finished.** Archived projects do not count against you as active clutter, and you can unarchive them later. See [Projects and sections](projects/projects-and-sections.md).
- **Delete scratchpads** you no longer need.
- **Upgrade to Pro**, or start the 7-day trial, for the higher limits. See [TodoPro Pro](pro/index.md).

## Still stuck

If none of the above helped, get in touch through <https://todopro.xyz>.

It speeds things up if you can say:

- Which surface you were using (web, Android, or CLI).
- What you did, what you expected, and what happened instead.
- Whether you are on Free, on a trial, or on Pro.
