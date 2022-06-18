source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.2", ">= 7.0.2.3"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :production do
  gem "pg", "~> 1.3", ">= 1.3.5"
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 1.4"
  gem "web-console"
  gem "guard-livereload", "~> 2.5", require: false
  gem "rufo"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end

gem "wdm", ">= 0.1.0" if Gem.win_platform?
gem "devise", "~> 4.8", ">= 4.8.1"
gem "sassc-rails"
