---
title: Priorities
description: Set P1 to P4 priorities, change them in bulk, and use the Eisenhower urgent/important matrix.
updated_at: 2026-07-19T02:04:39+07:00
---

# Priorities

Every task in TodoPro has a priority from **P1** to **P4**.

| Priority | Meaning |
|---|---|
| **P1** | Highest. Do this first. |
| **P2** | High. |
| **P3** | Medium. |
| **P4** | Lowest. The default for new tasks. |

The numbering runs the way it reads: 1 is the top. New tasks are created as **P4** unless you say otherwise, so nothing is loud by default and P1 keeps its meaning.

Priority is shown on the task itself, and you can group or sort any view by it. See [Views and layouts](../projects/views-and-layouts.md).

## Setting a priority

### In quick add

Add a priority token anywhere in the line. It is stripped from the title.

| Token | Result |
|---|---|
| `p1` `p2` `p3` `p4` | That priority |
| `!!1` `!!2` `!!3` `!!4` | That priority |
| `!!!` | P1 |
| `urgent` | P1 |
| `high` | P2 |
| `medium` | P3 |
| `low` | P4 |

```
Call the supplier tomorrow p1
Tidy the shared drive low
Fix the broken link !!!
```

!!! note
    The word aliases only take effect when they read as a priority instruction. Write the task the way you naturally would and check the priority TodoPro assigned before you save.

### In the task editor

=== "Web"

    Open the task and pick a priority from the priority control. It is also available on the inline add form, so you can set it before the task exists.

=== "Mobile"

    Open the task's bottom sheet and use the priority picker.

=== "CLI"

    ```bash
    todopro add "Call the supplier tomorrow p1"
    todopro edit <task>
    ```

## Changing priority in bulk

Select several tasks and apply a priority to all of them at once. This is the fastest way to triage: sweep through a project, select everything that actually matters this week, and lift it to P2 in one action.

=== "Web"

    Select the tasks in the list, then choose a priority from the bulk action bar.

=== "Mobile"

    Long-press a task to enter multi-select, tap the rest, then apply the change.

## Eisenhower matrix

Priority answers "how important is this?" with one number. The **Eisenhower matrix** splits that into two separate questions:

- Is it **urgent**? Does it demand attention now?
- Is it **important**? Does it move something that matters?

Each task can be marked urgent, important, both, or neither. TodoPro then arranges your tasks into the four quadrants:

| | Important | Not important |
|---|---|---|
| **Urgent** | Do it now | Delegate or trim it |
| **Not urgent** | Schedule it | Drop it |

The value of the matrix is in the top-right and bottom-left cells. Urgent-but-not-important work is what eats a day without advancing anything; important-but-not-urgent work is what you keep postponing until it becomes a crisis.

### Classifying tasks

You can set urgent and important on an individual task, or classify a whole selection at once with bulk classification — select the tasks, then apply the urgent and important flags together. Triaging a project this way takes a couple of passes rather than dozens of clicks.

!!! tip
    The matrix and P1–P4 are complementary, not duplicates. Use the matrix when you are deciding what to work on this week, and priority for ordering within a list.

Related: [Creating tasks](creating-tasks.md), [Labels and filters](labels-and-filters.md), [Reporting and analytics](../productivity/reporting-and-analytics.md).
