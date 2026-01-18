## Setup
The deafult `~/.bashrc` file can just source the versioned `bashrc/.bashrc` file from its parent directory, like so:

```bash
# In ~/.bashrc

cd $REPO_PARENT/scripts-and-tools/bashrc
source .bashrc
cd - > /dev/null # Must be redirected because `cd -` prints the new working directory
```

Create the `.bash_aliases` file in the `bashrc` directory of the repository:

```bash
# In your shell

cd $REPO_PARENT/scripts-and-tools/bashrc/
touch .bash_aliases
chmod u+x .bash_aliases
cd -
```

### Scripts in `.bashrc.d`

By default, `.bashrc` executes every script in `.bashrc.d`, with no arguments.

Each script defines a top-level function which is called and checked for any errors.
For example, in `.bashrc.d/ssh_config.sh`:

```bash
generate_ssh_config() {
    : # ...
}

generate_ssh_config
if [[ $? -ne 0 ]]; then
    : # ...
    return 1
fi
```

This is done so you can just comment out the function call if you want to disable the script. You can name this function anything you like.

#### Adding a new script

Other than creating the script, you have to make it executable and add a shebang pointing to your bash executable:

```bash
cd $REPO_PARENT/scripts-and-tools/bashrc/.bashrc.d/
echo -e '#!/bin/bash\n' > my_script.sh
chmod u+x my_script.sh
cd -
```

