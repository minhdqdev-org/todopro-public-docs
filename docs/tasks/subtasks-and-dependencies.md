---
title: Subtasks and dependencies
description: Break big tasks into subtasks and record which tasks block others.
updated_at: 2026-07-19T02:04:39+07:00
---

# Subtasks and dependencies

TodoPro has two ways to relate one task to another, and they answer different questions.

- **Subtasks** answer *"what is this task made of?"* — they break one item into smaller pieces.
- **Dependencies** answer *"what has to happen first?"* — they record order between separate tasks.

## Subtasks

A subtask is a child task nested under a parent. "Launch the newsletter" might have subtasks for drafting, proofreading, and scheduling the send.

Subtasks are full tasks in their own right. Each one can have its own due date, priority, labels, description, reminders and assignee — and its own subtasks, if the work really is that nested.

### Adding a subtask

=== "Web"

    Open the parent task and use the add-subtask control in the task dialog. Type the subtask the same way you would type any task — the natural-language syntax works here too, so `proofread tomorrow p2` sets a date and priority as you add it.

=== "Mobile"

    Open the task's bottom sheet and use add-subtask. The same quick-add syntax applies.

=== "CLI"

    Create the task and attach it to its parent when editing:

    ```bash
    todopro task create --help
    ```

### Completing subtasks

Tick a subtask to complete it, exactly like any other task. The parent shows how many of its subtasks are done, so you can see progress without opening it.

Completing the parent does not require every subtask to be done, and completing all the subtasks does not automatically complete the parent — you stay in control of when the parent is finished.

### Where subtasks live

Subtasks appear nested under their parent when you open it. They also behave as ordinary tasks elsewhere: a subtask with a due date of today shows up in Today, and a subtask with a label appears on that label's page.

!!! tip
    If a subtask starts growing its own subtasks and its own deadline, it is probably a real task in its own right. Move it out and use a dependency instead.

## Task dependencies

A dependency says one task cannot start or finish until another is done. Where subtasks nest, dependencies link — the two tasks stay independent items, often in different projects.

Each link has two sides:

- **Blocks** — this task is holding up another one.
- **Blocked by** — this task is waiting on another one.

"Get sign-off on the design" **blocks** "Send the design to print". Looked at from the other end, "Send the design to print" is **blocked by** "Get sign-off on the design". They are the same link.

### Adding a dependency

Open a task and add a dependency, choosing whether the task you are linking blocks this one or is blocked by it, then pick the other task. The link shows on both tasks, so you see it whichever end you open.

### Why it is worth recording

Writing down dependencies makes the shape of the work visible. When you are deciding what to do next, a task marked "blocked by" is one you can safely leave alone, and a task marked "blocks" is one worth doing sooner than its own priority suggests — because something else is waiting behind it.

!!! note
    Dependencies are informational: TodoPro records and displays the relationship rather than preventing you from completing a blocked task. Sometimes work goes ahead anyway, and TodoPro does not stand in your way.

### Removing a dependency

Remove the link from either task. Deleting the link does not affect either task itself.

Related: [Creating tasks](creating-tasks.md), [Priorities](priorities.md), [Projects and sections](../projects/projects-and-sections.md).
