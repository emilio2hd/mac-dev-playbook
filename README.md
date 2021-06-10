# Mac Development Ansible Playbook

A playbook that installs and configures most of the software I use on my Mac for web and software development.

*See also*:

  - [Jeff Geerling](https://github.com/geerlingguy/mac-dev-playbook) (the inspiration for this repository)
  - [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks) (the original inspiration for this project)

## Installation

  1. Clone this repository to your local drive.
  2. Run `bash init.sh` inside this directory to install required libs and applications. Enter your account password when prompted.

> Note: If some Homebrew commands fail, you might need to agree to Xcode's license or fix some other Brew issue. Run `brew doctor` to see if this is the case.

### Running a specific set of tagged tasks

You can filter which part of the provisioning process to run by specifying a set of tags using `ansible-playbook`'s `--tags` flag.
```bash
bash run.sh --tags "dotfiles,homebrew"
```
To see all the available tags, run:
```bash
bash init.sh --list-tags
```
## Overriding Defaults

Not everyone's development environment and preferred software configuration is the same.

You can override any of the defaults configured in `default.config.yml` by creating a `config.yml` file and setting the overrides in that file. For example, you can customize the installed packages and apps with something like:

    homebrew_installed_packages:
      - cowsay
      - git
      - go

Any variable can be overridden in `config.yml`; see the supporting roles' documentation for a complete list of available variables.

## Included Applications / Configuration (Default)

### Applications (installed with Homebrew Cask):

  - [ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/)
  - [Docker](https://www.docker.com/)
  - [Firefox](https://www.mozilla.org/en-US/firefox/new/)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Handbrake](https://handbrake.fr/)
  - [Slack](https://slack.com/)
  - [Visual Studio Code](https://code.visualstudio.com/)
  - [Postman](https://formulae.brew.sh/cask/postman)
  - [KeePassXC](https://formulae.brew.sh/cask/keepassxc)
  - [Rectangle](https://formulae.brew.sh/cask/rectangle)
  - [VLC media player](https://formulae.brew.sh/cask/vlc)
  - [iTerm2](https://formulae.brew.sh/cask/iterm2#default)
  - [font-meslo-lg-nerd-font](https://github.com/Homebrew/homebrew-cask-fonts/blob/master/Casks/font-meslo-lg-nerd-font.rb)

### Packages (installed with Homebrew):

  - [autoconf](https://formulae.brew.sh/formula/autoconf)
  - [git](https://formulae.brew.sh/formula/git)
  - [httpie](https://formulae.brew.sh/formula/httpie)
  - [imagemagick](https://formulae.brew.sh/formula/imagemagick)
  - [mcrypt](https://formulae.brew.sh/formula/mcrypt)
  - [nvm](https://formulae.brew.sh/formula/nvm)
  - [openssl](https://formulae.brew.sh/formula/openssl)
  - [rbenv](https://formulae.brew.sh/formula/rbenv)
  - [readline](https://formulae.brew.sh/formula/readline)
  - [ruby-build](https://formulae.brew.sh/formula/ruby-build)
  - [wget](https://formulae.brew.sh/formula/wget)
  - [htop](https://formulae.brew.sh/formula/htop)
  - [tree](https://formulae.brew.sh/formula/tree)
  - [libpq](https://formulae.brew.sh/formula/libpq)
  - [zsh](https://formulae.brew.sh/formula/zsh)
  - [ctop](https://formulae.brew.sh/formula/ctop)
  - [tmux](https://formulae.brew.sh/formula/tmux)

### Visual Studio Code Extension:

  - [Angular Language Service](https://marketplace.visualstudio.com/items?itemName=Angular.ng-template)
  - [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
  - [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
  - [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Angular Snippets](https://marketplace.visualstudio.com/items?itemName=johnpapa.Angular2)
  - [Peacock](https://marketplace.visualstudio.com/items?itemName=johnpapa.vscode-peacock)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
  - [TSLint](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-tslint-plugin)
  - [Debugger for Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
  - [Nx Console](https://marketplace.visualstudio.com/items?itemName=nrwl.angular-console)
  - [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
  - [Partial Diff](https://marketplace.visualstudio.com/items?itemName=ryu1kn.partial-diff)
  - [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
  - [Ruby Language](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
  - [Ruby Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)
  - [VSCode Ruby](https://marketplace.visualstudio.com/items?itemName=wingrunr21.vscode-ruby)
  - [YAML](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml)
  - [Ruby Test Explorer](https://marketplace.visualstudio.com/items?itemName=connorshea.vscode-ruby-test-adapter)
  - [Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)

## Ruby and Rails
Installs ruby versions and configures `.railsrc` with my [rails_template](https://github.com/emilio2hd/rails_template.git).

## Author

Emilio, [Jeff Geerling](https://www.jeffgeerling.com/), 2014 (originally inspired by [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)).