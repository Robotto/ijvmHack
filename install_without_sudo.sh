#!/bin/bash
echo "Hello! Let's install ijvm-tools without sudo rights! yay! :D"
echo

echo "creating bin folder in home dir..."
mkdir ${HOME}/bin

echo "fetching files from github..."
wget https://raw.githubusercontent.com/Robotto/ijvmHack/master/ijvm.spec -O ${HOME}/bin/ijvm.spec
wget https://raw.githubusercontent.com/Robotto/ijvmHack/master/precompiled_binaries/ijvm -O ${HOME}/bin/ijvm
wget https://raw.githubusercontent.com/Robotto/ijvmHack/master/precompiled_binaries/ijvm-asm -O ${HOME}/bin/ijvm-asm


echo "making the binaries executable..."
chmod 755 ${HOME}/bin/ijvm-asm
chmod 755 ${HOME}/bin/ijvm

echo "creating bashrc.d scripts with appropriate settings..."
echo "export PATH=\$PATH:${HOME}/bin" >  ${HOME}/.daimi-setup/bash/bashrc.d/add_home_bin_folder_to_path.rc

echo -e "export IJVM_SPEC_FILE=${HOME}/bin/ijvm.spec\nexport IJVM_DATADIR=${HOME}/bin/" >  ${HOME}/.daimi-setup/bash/bashrc.d/env.rc

echo "All Done! ... remember to log off and on again before trying to run either:"
echo "ijvm, or ijvm-asm"
echo
echo "have a nice day."
echo