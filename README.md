# Valgrind Docker Container for Development in 42

## Installation Requirements

Install docker from the Managed Sofware Center

Make a directory in goinfre
```mkdir -p ~/goinfre/docker```

Add the above to the bottom of your .zshrc or .bashrc file.  This allways creates the directory if it doesn't exist when you move to a different machine in the lab.

Relink the docker containers to use goinfre

```rm -rf ~/Library/Containers/com.docker.docker```

```ln -s ~/goinfre/docker ~/Library/Containers/com.docker.docker```

Clone this repo into a empty directory on your mac (~/Documents)

## Using the Container
Run the Build script:

```./build```

To run the container, run the start script from the directory you want to debug from:

```~/Documents/libft/ ~/Documents/<Where this repos is saved>/start```

To run commands within the container you can use the run script:

```./run <cmd to execute in container> <arguments for command>```

## Enjoy
As always if you have issues or find bug, please do a Pull Request (PR) and provide a solution.
