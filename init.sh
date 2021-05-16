#!/usr/bin/env bash

if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
   test -d "${xpath}" && test -x "${xpath}" ; then
   echo "Xcode Installed"
else
   xcode-select --install
fi

which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Brew installed"
fi

which -s ansible
if [[ $? != 0 ]] ; then
    pip3 install ansible
else
    echo "Ansible installed"
fi

python3_path=$(which python3)

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml \
  -i inventory -K \
  -e "ansible_python_interpreter=${python3_path}"