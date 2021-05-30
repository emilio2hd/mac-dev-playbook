gem_group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
end

gem_group :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rails-controller-testing'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
end

run "bundle install"

generate('rspec:install')
append_to_file ".rspec", "--color\n"

file '.rubocop.yml', <<-CODE
require:
  - rubocop-rails

AllCops:
  Exclude:
    - db/**
    - db/migrate/**
    - bin/**
    - vendor/**/*

Layout/LineLength:
  Max: 120

Metrics/BlockLength:
  Exclude:
    - config/**/*

Style/Documentation:
  Enabled: false
CODE

run "bundle exec rubocop --auto-gen-config"

git :init
git add: "."
git commit: %Q{ -m 'Initial commit' }