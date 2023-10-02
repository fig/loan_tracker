source "https://rubygems.org"
ruby File.read(".ruby-version").strip

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "image_processing", "~> 1.12"
gem "jsbundling-rails"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.0"
gem "redis", "~> 4.0"
gem "sprockets-rails"
gem "sqlite3", "~> 1.4"
gem "stimulus-rails"
gem "turbo-rails"

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "factory_bot_rails", "~> 6.2"
  gem "faker", "~> 3.2"
  gem "rspec-rails", "~> 6.0", ">= 6.0.3"
end

group :development do
  gem "guard-rspec", require: false, git: "https://github.com/fig/guard-rspec.git", branch: "master"
  gem "rubocop", "~> 1.56"
  gem "rubocop-performance", "~> 1.19"
  gem "rubocop-rails", "~> 2.21"
  gem "rubocop-rspec", "~> 2.24"
  gem "web-console"
end
