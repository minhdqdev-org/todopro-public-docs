---
title: Creating and managing tasks
description: Capture tasks with Quick Add or the full editor, add detail, use voice dictation, and manage tasks in bulk.
updated_at: 2026-07-19T02:04:39+07:00
---

# Creating and managing tasks

There are two ways to create a task in TodoPro: **Quick Add**, where you type one line and TodoPro works out the details, and the **full task editor**, where you fill in fields yourself. Most people use Quick Add for capture and the editor for refinement.

## Quick Add

Quick Add takes a single line of text, extracts the structured fields from it, and strips those tokens out of the title. Typing:

```
Email Sam about the deck tomorrow 9am #Work @email p1 !30m before
```

creates a task called "Email Sam about the deck" in the Work project, labelled `email`, priority P1, due tomorrow at 9:00, with a reminder 30 minutes before.

=== "Web"

    The Quick Add bar sits at the top of your task lists. Click it (or the add button in a list) and start typing. Tokens you type are recognised as you go. Press Enter to create the task.

    Inline add is available inside each project, section and board column, so a new task lands where you added it.

=== "Mobile"

    Tap the add button on Today, Inbox or a project. Type your line the same way — the same natural-language syntax applies.

=== "CLI"

    ```bash
    todopro add "Email Sam about the deck tomorrow 9am #Work @email p1"
    ```

    `tp` is an alias for `todopro`, so `tp add "..."` works too.

The full token reference lives in [Quick Add syntax](../getting-started/quick-add-syntax.md). Dates are covered in [Due dates and deadlines](due-dates-and-deadlines.md), priorities in [Priorities](priorities.md), and reminder tokens in [Reminders](reminders.md).

!!! note
    If you are on Free and your line includes a Pro-only piece — a deadline in braces, or an absolute or recurring reminder — the task is still created. The Pro part is dropped and TodoPro tells you why.

## The full task editor

Open a task to get the full editor. On the web this opens a task dialog; on mobile it opens a bottom sheet, with a full-screen task detail view available as well.

From the editor you can set every field: title, description, project, section, priority, due date, deadline (Pro), labels, reminders, recurrence, location (Pro), assignee in shared projects, subtasks and dependencies.

### Description

The description holds longer notes — context, links, a checklist of things to remember. It is separate from comments: the description is part of the task, while comments are a conversation about it.

### Attachments

You can upload files to a task. Images preview in place; other file types open in their usual application. Attachments work on web and mobile, and are visible to everyone with access to the project.

### Comments

Comments are a running discussion on the task. They are most useful in shared projects, where they appear in real time for every collaborator and show up in the project activity log. See [Sharing and collaboration](../projects/sharing-and-collaboration.md).

## Voice dictation (Dictate)

TodoPro can turn speech into structured tasks. Speak naturally for as long as you like; TodoPro transcribes what you say and builds tasks from it in real time, applying the same natural-language parsing as Quick Add.

=== "Web"

    Use the microphone button next to the Quick Add bar, then start talking. Tasks appear as you speak.

=== "Mobile"

    Tap the microphone button on Today or Inbox.

=== "CLI"

    ```bash
    todopro ramble
    todopro ramble --project Work --duration 60
    todopro ramble --text "call the plumber tomorrow morning" --dry-run
    ```

    `--text` skips the microphone and processes text you supply, `--duration` sets how long to listen, `--project` chooses where tasks land, and `--dry-run` shows what would be created without saving anything.

### Live voice corrections

You do not have to get it right first time. While dictating you can correct yourself out loud, and TodoPro applies the change to the tasks it has already drafted:

- "Actually, make that Monday at 10am" — changes the date on the task you just dictated.
- "Change the first one to high priority" — edits an earlier task in the session.
- "Rename that to Call the accountant" — replaces a task title.
- "Delete the last one" — removes the most recent task.
- "That's all" — ends the session.

!!! note
    Audio is processed in chunks as you speak and is not stored.

## Duplicating tasks with templates

If you create the same task repeatedly, save it as a **task template** and reuse it instead of retyping. Task templates are reusable task definitions managed from the CLI:

```bash
todopro template --help
```

For repeating whole project structures rather than single tasks, see [Templates](../projects/templates.md).

## Bulk actions and multi-select

Selecting several tasks at once lets you act on all of them:

- Complete them.
- Change their priority.
- Move them to another project or section.
- Add labels to them.
- Classify them on the [Eisenhower matrix](priorities.md#eisenhower-matrix).

=== "Web"

    Select tasks in a list, then use the bulk action bar that appears.

=== "Mobile"

    Long-press a task to enter multi-select, tap more tasks to add them, then choose an action. Bulk move between projects is supported.

## Search

Search looks across your tasks by title and content, and **includes completed tasks** — useful for confirming that something was done and when. Search is available in the web app and the mobile app.

## Completing, reopening and other actions

- **Complete** — tick the checkbox. Completed tasks disappear from your lists unless you turn on "show completed tasks" in the view's display options.
- **Reopen** — completed tasks can be reopened if you closed one by mistake or the work came back.
- **Skip** — for a recurring task, skip the current occurrence and jump to the next one without marking it done. See [Recurring tasks](recurring-tasks.md).
- **Reschedule** — move the due date. Overdue tasks can be rescheduled in bulk from Today.
- **Move** — send a task to a different project or section, from the task's overflow menu or in bulk from multi-select.
- **Pause and resume** — put a task on hold and pick it up later.
- **Delete** — remove the task permanently.

=== "CLI"

    ```bash
    todopro complete <task>
    todopro reopen <task>
    todopro reschedule <task> tomorrow
    todopro edit <task>
    todopro today
    ```

## Public task share links

You can create a share link for a single task. Anyone with the link can open it in a browser without a TodoPro account, which is handy for sending one item to someone outside your projects.

!!! warning
    A share link is public to anyone who has it. Only share tasks whose content you are happy for the recipient to see.

## Task activity history

Every task keeps an activity history: when it was created, completed, rescheduled, moved, or edited, and by whom in a shared project. Projects have their own activity log covering everything inside them.
