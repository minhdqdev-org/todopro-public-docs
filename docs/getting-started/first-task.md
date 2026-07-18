---
title: Add your first task
description: Capture a task on web, mobile, or the CLI, find it in your Inbox, complete it, and move it to a project.
updated_at: 2026-07-19T02:04:39+07:00
---

# Add your first task

Capturing a task should take a couple of seconds. Type what you need to do, press Enter, move on.

## Add it

=== "Web"

    1. Open [app.todopro.xyz](https://app.todopro.xyz).
    2. Click the quick-add field at the top of the page.
    3. Type your task, for example `Buy milk`.
    4. Press Enter.

    The task appears in the list immediately. There is also a microphone button next to quick add if you would rather speak your tasks.

=== "Mobile"

    1. Open the TodoPro app on **Today** or **Inbox**.
    2. Tap the add button.
    3. Type your task, for example `Buy milk`.
    4. Confirm.

    This works with no connection. The task is stored on the device and sent to your account the next time you are online.

=== "CLI"

    ```bash
    todopro add "Buy milk"
    ```

    `tp` is a shorter alias for the same command:

    ```bash
    tp add "Buy milk"
    ```

## Where it lands

A task with no project goes to your **Inbox**. The Inbox is the catch-all: capture first, organize later.

If the task has a due date of today, or is overdue, it also shows up in **Today**. Tasks due in the coming days appear in **Upcoming**.

!!! tip
    Do not stop to pick a project while you are capturing. Getting the thought out of your head is the important part. Sorting the Inbox takes a minute later.

## Complete it

=== "Web"

    Click the circular checkbox to the left of the task. It is marked done and disappears from the active list.

=== "Mobile"

    Tap the checkbox on the task row. An undo snackbar appears in case you tapped the wrong one.

=== "CLI"

    ```bash
    todopro complete <task-id>
    ```

Completed a task by mistake? You can reopen it. Completed tasks are still found by search and can be shown in any view with the **show completed tasks** display option.

## Every new task is P4

TodoPro has four priority levels: **P1** is the highest and **P4** is the lowest. New tasks are created as **P4** unless you say otherwise.

That is deliberate — most things are not urgent, and reserving P1 for what really matters keeps it meaningful. To set a priority while capturing, add `p1`, `p2`, or `p3` to the text:

```text
Call the dentist tomorrow p1
```

See [Priorities](../tasks/priorities.md).

## Move it to a project

Once your Inbox has a few related tasks, group them into a project.

=== "Web"

    Open the task, then change its project in the task editor. You can also multi-select several tasks and move them all at once.

=== "Mobile"

    Open the task detail sheet and use the overflow menu to move it, or multi-select tasks in a list and use bulk move.

=== "CLI"

    Create the project first, then add tasks straight into it with `#ProjectName`:

    ```bash
    todopro project create Home
    todopro add "Buy milk #Home"
    ```

Projects can be divided into **sections**, given a color and icon, marked as favorites, and viewed as a list or as a board. See [Projects and sections](../projects/projects-and-sections.md).

## Next step

You now know the basics. The real speed comes from typing dates, labels, priorities, and reminders directly into the quick-add field.

- [Quick-add syntax reference](quick-add-syntax.md) — the full token list.
- [Creating tasks](../tasks/creating-tasks.md) — every other way to create a task.
