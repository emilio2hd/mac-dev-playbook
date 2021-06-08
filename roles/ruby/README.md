# Ruby Role
This role installs multiple ruby versions, set the default version, creates `.railsrc` and checkout a rails template. All defined in the `default.config.yml`.
```yml
ruby_versions_install:
  - 2.6.4
  - 2.6.6

default_ruby_version: 2.6.4

rails_template_repo: https://github.com/emilio2hd/rails_template.git
rails_template_path: "{{ansible_env.HOME}}/.rails_template"
```

The role overwrites the `rails_template/env.example` with one that contains postgresql user and password used in the docker container created by the docker-containers role.