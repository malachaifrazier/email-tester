source "https://rubygems.org"

ruby "2.2.1"

gem "bourbon", "~> 4.2.0"
gem "coffee-rails", "~> 4.1.0"
gem "delayed_job_active_record"
gem "email_validator"
gem "i18n-tasks"
gem "jquery-rails"
gem "neat", "~> 1.7.0"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "rack-timeout"
gem "rails", "4.2.1"
gem "recipient_interceptor"
gem "refills"
gem "sass-rails", "~> 5.0"
gem "uglifier"
gem "unicorn"

gem 'cancan',                         '~> 1.6.10'
gem 'devise',                         '~> 3.4.1'
gem 'exception_notification',         '~> 4.0.1'
gem 'figaro',                         '~> 1.1.0'
gem 'paper_trail',                    '~> 3.0.6'
gem 'rolify',                         '~> 4.0.0'
gem 'simple_form',                    '~> 3.1.0'
gem 'thin',                           '~> 1.6.3'
gem 'country_select',                 github: 'stefanpenner/country_select'
gem 'rails_admin',                    github: 'sferik/rails_admin'

group :production do
  gem 'rails_12factor',  '~> 0.0.3'
end

group :development do
  gem 'annotate',  '~> 2.6.5'
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-rails"
  gem "rspec-rails",    "~> 3.1.0"
  gem 'letter_opener',  '~> 1.3.0'
  gem 'brakeman',                require: false
  gem 'sextant'
  gem 'rails_best_practices',    '~> 1.15.6'
  gem 'better_errors',           '~> 2.1.1'
  gem 'binding_of_caller',       '~> 0.7.2'
end

group :test do
  gem "capybara-webkit", ">= 1.2.0"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
end
