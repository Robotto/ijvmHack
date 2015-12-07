# ijvmHack
A Modification of the IJVM allowing it to print up to 32 stack entries + the stack size so you don't have to count :)

The important modifications are in [THIS commit](https://github.com/Robotto/ijvmHack/commit/36e3b016be7de5fbd691bf625f7f30b84077edad)

#If you want to build and install it yourself (sudo rights are needed):

1: clone this repo with `git clone git@github.com:Robotto/ijvmHack.git`

2: `cd ijvmHack`

3: `./configure`

3.5: i needed to install yacc and flex to make mine work: `sudo apt-get install flex byacc`

4: `make`

5: `sudo make install`

#Not able to build it yourself (no sudo rights??)

You can copy the precompiled binaries to a path of your choice.. see [This reddit comment](https://www.reddit.com/r/dComArk/comments/3qyfin/it2/cx4d8rm) (in danish) for instructions on installing it on a fresh horse.

or use the install_without_sudo.sh script as described [here](https://www.reddit.com/r/dComArk/comments/3ton3h/shell_script_til_at_installere_ijvm_og_ijvmasm/)

