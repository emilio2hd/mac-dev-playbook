# Mac Development Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for web and software development.

*See also*:

  - [Jeff Geerling](https://github.com/geerlingguy/mac-dev-playbook) (the inspiration for this repository)
  - [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks) (the original inspiration for this project)

## Installation

  1. Clone this repository to your local drive.
  2. Run `bash init.sh` inside this directory to install required libs and applications.
  5. Run `ansible-playbook main.yml -i inventory -K` inside this directory. Enter your account password when prompted.

> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag. The tags available are `dotfiles`, `homebrew`, `mas`, `extra-packages` and `osx`.

    ansible-playbook main.yml -i inventory -K --tags "dotfiles,homebrew"

## Overriding Defaults

Not everyone's development environment and preferred software configuration is the same.

You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:

    homebrew_installed_packages:
      - cowsay
      - git
      - go

Any variable can be overridden in `config.yml`; see the supporting roles' documentation for a complete list of available variables.

## Included Applications / Configuration (Default)

Applications (installed with Homebrew Cask):

  - [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/)
  - [Docker](https://www.docker.com/)
  - [Firefox](https://www.mozilla.org/en-US/firefox/new/)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Handbrake](https://handbrake.fr/)
  - [Java 8](https://java.com/en/download/faq/java8.xml)
  - [Slack](https://slack.com/)
  - [Sublime Text](https://www.sublimetext.com/)
  - [Visual Studio Code](https://code.visualstudio.com/)

Packages (installed with Homebrew):

  - [autoconf](https://formulae.brew.sh/formula/autoconf)
  - [git](https://formulae.brew.sh/formula/git)
  - [httpie](https://formulae.brew.sh/formula/httpie)
  - [imagemagick](https://formulae.brew.sh/formula/imagemagick)
  - [mcrypt](https://formulae.brew.sh/formula/mcrypt)
  - [nvm](https://formulae.brew.sh/formula/nvm)
  - [openssl](https://formulae.brew.sh/formula/openssl)
  - [postgresql@9.4](https://formulae.brew.sh/formula/postgresql@9.4)
  - [rbenv](https://formulae.brew.sh/formula/rbenv)
  - [readline](https://formulae.brew.sh/formula/readline)
  - [redis@3.2](https://formulae.brew.sh/formula/redis@3.2)
  - [ruby-build](https://formulae.brew.sh/formula/ruby-build)
  - [wget](https://formulae.brew.sh/formula/wget)
  - [yarn](https://formulae.brew.sh/formula/yarn)

## Future additions

### Things that still need to be done manually

It's my hope that I can get the rest of these things wrapped up into Ansible playbooks soon, but for now, these steps need to be completed manually (assuming you already have Xcode and Ansible installed, and have run this playbook).

### Custom brew instalation:

Application which has custom task to install

  - [Ruby 2.3.7](http://www.ruby-lang.org/en/)
  - [Node 8.9.1](https://nodejs.org/en/)

### Configuration to be added:

## Ansible for DevOps

Check out [Ansible for DevOps](https://www.ansiblefordevops.com/), which teaches you how to automate almost anything with Ansible.

## Author

Emilio, [Jeff Geerling](https://www.jeffgeerling.com/), 2014 (originally inspired by [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)).