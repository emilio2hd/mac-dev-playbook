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

which -s docker
if [[ $? != 0 ]] ; then
    brew install --cask docker
    open --background -a Docker
    while ! docker system info > /dev/null 2>&1; do sleep 1; done
else
    echo "Docker installed"
fi

pip3 show docker --quiet
if [[ $? != 0 ]] ; then
  pip3 install docker
  pip3 install docker-compose
fi

python3_path=$(which python3)

ansible-galaxy install -r requirements.yml

if [[ $# -gt 0 ]]; then
    ansible-playbook main.yml \
    -i inventory \
    -e "ansible_python_interpreter=${python3_path}" \
    "$@"
else
    ansible-playbook main.yml \
    -i inventory \
    -e "ansible_python_interpreter=${python3_path}"
fi