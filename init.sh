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

if brew ls --versions python@2 > /dev/null; then
  echo "Python 2 installed"
else
  brew install python@2
fi

which -s ansible
if [[ $? != 0 ]] ; then
    pip install ansible
else
    echo "Ansible installed"
fi

ansible-galaxy install -r requirements.yml
ansible-playbook main.yml -i inventory -K