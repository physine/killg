##$ killg

A  Bash script to find and kill all processes matching a given search term.

***

Usage:

```./killg [search term]```

For example, to kill all running instances of Firefox:

```./killg firefox```

The script will list all matching processes (PID and process name) and kill each listed process.

***

**Install:**

Save killg somewhere in your PATH (e.g., ~/bin/killg) and make it executable with:

```chmod +x ~/bin/killg```

***

**Warning:**

Use with caution! This script will kill all processes matching the search term.
