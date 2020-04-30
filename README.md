# Checklist syntax for Vim

This is a vim checklist (.check, .checklist) syntax file type plugin.

Checklist files are intended to contain organized trees of pending, completed,
and optional tasks, as well as section headings and tags. The first character
each line determines the type of checklist entry:

    # Section heading (must be first character of the line)
    * Bullet list item; information related to the task
    - Pending task
    + Completed task
    ? Optional task

Tasks and bullets can be nested into trees:

    # Section
      - Pending
        * info
        * more info
      ? Optional
      + Completed
        * Outcome

Tags can be added to any item with the help of '[' and ']':

    - [me] Pending task with a tag
      + [valerie] Upscale drone
      - [benny] Bring the boba


