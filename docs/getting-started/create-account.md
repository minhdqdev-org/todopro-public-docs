---
title: Create your account
description: Sign up for TodoPro on the web, verify you are signed in, and install the mobile app and CLI.
updated_at: 2026-07-19T02:04:39+07:00
---

# Create your account

One TodoPro account covers every surface: the web app, the Android app, the CLI, and the API. Create it once on the web, then sign in anywhere else with the same credentials.

## Sign up on the web

1. Go to [app.todopro.xyz](https://app.todopro.xyz).
2. Choose how you want to sign up:
   - **Email and password** — enter your email address and pick a password.
   - **Sign in with Google** — use your existing Google account. No password to remember.
3. Submit the form. You are signed in and taken straight to your task list.

Both methods create the same kind of account. If you sign up with Google, you can still add a passkey later for another way in.

!!! note
    New accounts start on the Free plan. You can start a 7-day Pro trial at any time from **Settings → Billing**. See [TodoPro Pro](../pro/index.md).

## Check that you are in

You know the account is ready when you can see:

- The sidebar with **Today**, **Inbox**, **Upcoming**, **Filters & Labels**, and **Reporting**.
- An empty **Inbox** waiting for your first task.
- Your name or avatar in **Settings → Profile**.

While you are in Settings, it is worth setting your display name, uploading an avatar, and choosing a light or dark theme under **Appearance**.

## Forgot your password later?

Use the **Forgot password** link on the sign-in screen. TodoPro emails you a reset link. This works in the mobile app too.

## Install the apps

You can stop here and use the web app alone. Most people add at least one more surface.

=== "Mobile"

    The TodoPro Android app gives you offline capture and push notifications for reminders and project invitations. Sign in with the same email and password, or with Google.

    See [Mobile app](../apps/mobile.md).

=== "CLI"

    The `todopro` command (alias `tp`) adds tasks from your terminal. Sign in with `todopro auth login`, and use `todopro add` to capture without leaving your shell.

    See [CLI](../apps/cli.md).

Everything you add stays in sync. Changes made on one device appear on the others in real time, and offline changes are sent as soon as you reconnect.

## Add a passkey later

Once you are settled in, consider adding a **passkey** under **Settings → Security**. A passkey lets you sign in without typing a password — and without typing your email either. You can add several, list them, and remove any you no longer use.

The same Security section is where you review known sign-in devices and create personal access tokens for scripts and the CLI.

[Account security](../account/security.md)

## Next step

[Add your first task](first-task.md)
