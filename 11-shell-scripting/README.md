## What is Automation?
- Automation means making tasks run automatically without manual work, usually using scripts or tools.

- Automation saves time, reduces errors, and increases efficiency.

## What is shell scripting?
- Shell scripting is writing a set of Linux commands in a file to automate tasks.

## What is the difference between touch and vim?
- touch works in scripts because it runs without user input.
- vim doesn't work in scripts because it needs user interaction (editor opens).

## What is #!?
`#!` is called **shebang**.

It tells the system which interpreter to use to run the script (like `#!/bin/bash`).

## What is #!/bin/bash and #!/bin/sh?
- bash is command line interpreter. Most default CLI in linux 
- sh acts as an linking to the bash. Even though it's sh shell, the scripts are linked to bash shell and executed over there but some distros links sh shell to dash based on their requirements.