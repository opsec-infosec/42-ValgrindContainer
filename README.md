# THIS IS FOR INSIDE 42 INSTALL ON MAC'S IN LAB
# Valgrind Docker Container for Development in 42
This container is for running Valgrind in the 42 Labs.

## Installation Requirements

-------========= FOR INSIDE 42 LABS ONLY =========-------

# INSTALLATION

## AUTOMATIC INSTALL

Clone Repo to your 42 Lab Machine.  Do not rename the repo, as the scripts use the clone name as references...
Execute the install script:
```bash ./install```
Follow the instruction provided in the install script.  When the Managed Software Center opens, be sure to install Docker, then continue with the install.
After installation, close the terminal and reopen.

## MANUAL INSTALL
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

# Using the Container
The start script will automatically share the current directory into the container.
cd into your source code directory where you want to compile your program and run valgrind.  Type ```start```, you will see a ```[DOCKER]->``` prompt.  The prompt indicates that you are in the docker container, from there you can execute valgrind.

To run commands inside the container from another terminal run:
```./run <cmd to execute in container> <arguments for command>```
This will execute the command inside the container and print the results on your mac terminal.

To exit the docker container, type ```exit```, this will take you back to the mac-osx shell prompt.

### (MANUAL) Running with the path in bashrc or zshrc

Don't do this is you have already run the install script during the automatic install.
If you want to just use the start script or the run script without referencing the directory where this repo is stored, then you can add the path to the scrips in your .bashrc or .zshrc file as follows at the bottom:

```PATH=$PATH:/Users/<username>/<Directory where this repo is cloned>```

For example: ```PATH=$PATH:/Users/dfurneau/Documents/Tools/42-ValgrindContainer```

### (OPTION MANUAL) Running without the path in bashrc or zshrc

To run the container, run the start script from the directory you want to debug from:

```cd /<directory_to_use>```

```~/Documents/<Where this repo is cloned>/start```

### Running internal shell commands from outside the container

To run commands within the container you can use the run script:

``` cd /<where this repo is cloned>```

```./run <cmd to execute in container> <arguments for command>```


## Enjoy
As always if you have issues or find bug, please do a Pull Request (PR) and provide a solution.
