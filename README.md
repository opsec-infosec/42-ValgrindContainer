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

Run the Build script:

```./build```

## Using the Container

### Running without the path in bashrc or zshrc

To run the container, run the start script from the directory you want to debug from:

```cd /<directory_to_use>```

```~/Documents/<Where this repo is cloned>/start```

To run commands within the container you can use the run script:

``` cd /<where this repo is cloned>```

```./run <cmd to execute in container> <arguments for command>```

### Running with the path in bashrc or zshrc

If you want to just use the start script or the run script without referencing the directory where this repo is stored, then you can add the path to the scrips in your .bashrc or .zshrc file as follows at the bottom:

```PATH=$PATH:/Users/<username>/<Directory where this repo is cloned>```

For example: ```PATH=$PATH:/Users/dfurneau/Documents/Tools/Valgrind```

## Enjoy
As always if you have issues or find bug, please do a Pull Request (PR) and provide a solution.
