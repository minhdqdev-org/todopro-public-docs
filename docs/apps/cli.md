---
title: CLI
description: Use TodoPro from your terminal with the todopro command, including local and remote contexts.
updated_at: 2026-07-19T02:04:39+07:00
---

# CLI

The TodoPro CLI puts your tasks in your terminal. The command is `todopro`, with `tp` as a shorter alias — the two are interchangeable.

It can work two ways: against your TodoPro account, or entirely on your own machine with a local database. See [Contexts](#contexts-local-vs-remote).

## Getting started

The CLI is a Python program. Once it is installed, `todopro` and `tp` are both on your path.

```bash
todopro version
```

Sign in to connect the CLI to your account:

```bash
todopro auth login
```

`todopro auth` also covers `signup` and `logout`. Credentials are stored per context in your user configuration directory with restrictive file permissions, so other users on the machine cannot read them.

!!! tip
    For scripts and automation, create a **personal access token** in Settings instead of reusing your password. See [Security](../account/security.md).

## Everyday shortcuts

The most common actions are available at the top level, without a command group:

```bash
todopro add "Email Sam about the deck tomorrow 9am #Work @email p1"
todopro today
todopro complete <task>
todopro reschedule <task> tomorrow
todopro edit <task>
todopro reopen <task>
```

`todopro add` accepts the same [quick add syntax](../getting-started/quick-add-syntax.md) as the web and mobile apps, so `#Project`, `@label`, `p1`–`p4`, dates, recurrence, and reminders all work identically.

`todopro update` updates the CLI itself.

## Command groups

| Group | What it does |
|---|---|
| `auth` | `login`, `logout`, `signup` |
| `task` | `list`, `get`, `create`, and other task operations |
| `project` | `list`, `create`, and other project operations |
| `section` | Manage sections within a project |
| `label` | Manage your labels |
| `context` | Switch between data sources — see below |
| `config` | `view`, `get`, `set`, `reset` |
| `focus` | Full-screen Pomodoro focus mode |
| `goals` | Focus goals and progress |
| `stats` | Focus stats for today, the week, and the month |
| `analytics` | Completion statistics, trends, and reports |
| `achievements` | Milestones you have unlocked |
| `sync` | `push`, `pull`, `status` |
| `data` | `export`, `import` |
| `template` | Task templates |
| `github` | GitHub Projects integration |
| `hub` | Unified feed of external items |
| `import` | Import from Todoist or from a JSON export |
| `calendar` | Google Calendar |
| `ramble` | Turn speech into tasks |

See [Focus and Pomodoro](../productivity/focus-and-pomodoro.md) for `focus`, `goals`, `stats`, and `achievements`.

## Contexts: local vs remote

A **context** is a data source the CLI reads from and writes to. You always work in exactly one context at a time.

- **`local`** — everything is stored in a database file on your machine. No account and no network needed. Good for private notes, offline work, or trying the CLI out.
- **`remote`** — the CLI talks to your TodoPro account, so what you do shows up in the web and mobile apps immediately.

Switch contexts by name:

```bash
todopro context use local
todopro context use remote
```

Use `todopro context` to see what is available and which one you are in.

!!! note
    Local and remote data are separate. Adding a task in the `local` context does not put it in your account until you sync — see below.

## Syncing between contexts

If you work in `local`, the `sync` commands move data between your local database and your account.

```bash
# Bring your account's data down into the local database
todopro sync pull --context=remote

# Send your local changes up to your account
todopro sync push --context=remote
```

Useful flags:

| Flag | Effect |
|---|---|
| `--dry-run` | Show what would change without changing anything |
| `--full` | Sync everything instead of only what changed since last time |
| `--strategy=local-wins` | On a conflict, keep the local version |
| `--strategy=remote-wins` | On a conflict, keep the account version |

Check where things stand:

```bash
todopro sync status
```

This shows your sync history and when each context last synced.

!!! warning
    Run `--dry-run` first when you are syncing a large or unfamiliar local database, especially with a conflict strategy. It prints the plan so there are no surprises.

### Worked example: a laptop that is often offline

```bash
# Start the day by pulling the latest from your account
todopro context use local
todopro sync pull --context=remote

# Work all day with no network
todopro add "Draft the Q3 summary friday #Work p2"
todopro today
todopro complete 14

# Back online — preview, then push
todopro sync push --context=remote --dry-run
todopro sync push --context=remote
```

### Worked example: recovering after editing in both places

If you changed the same tasks in the app and in your local database, pick which side wins:

```bash
todopro sync status
todopro sync pull --context=remote --full --strategy=remote-wins --dry-run
todopro sync pull --context=remote --full --strategy=remote-wins
```

Here the account is treated as the source of truth and your local copy is brought fully in line with it.

## Voice capture

`todopro ramble` turns speech into structured tasks. Speak naturally and TodoPro transcribes and parses as you go.

```bash
todopro ramble
todopro ramble --project Work
todopro ramble --duration 60
todopro ramble --dry-run
todopro ramble --text "call the dentist tomorrow at 3pm and email Sam friday"
```

| Flag | Effect |
|---|---|
| `--text` | Parse text you pass in instead of recording |
| `--duration` | How long to record |
| `--project` | Put the resulting tasks in a specific project |
| `--dry-run` | Show the tasks that would be created without creating them |

You can correct yourself while speaking — say things like "actually, make that Monday at 10am", "delete the last one", or "that's all" to finish. Audio is processed in chunks and is not stored.

## Configuration

`todopro config` manages the CLI's own settings.

```bash
todopro config view
todopro config get <key>
todopro config set <key> <value>
todopro config reset
```

Configuration lives in your user configuration directory, alongside the per-context credentials.

## Related pages

- [Quick add syntax](../getting-started/quick-add-syntax.md)
- [Focus and Pomodoro](../productivity/focus-and-pomodoro.md)
- [Import and export](../account/import-export.md)
- [GitHub Projects](../integrations/github-projects.md)
