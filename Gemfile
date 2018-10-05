source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.4.1"

gem "rails", "~> 5.2.1"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "puma", "~> 3.11"
gem "bootsnap", ">= 1.1.0", require: false
gem "rack-cors"

group :development, :test do
  gem "capybara"
  gem "rspec-rails", "~> 3.8"
  gem "shoulda-matchers"
  gem "database_cleaner"
  gem "factory_bot_rails", require: false
  gem "faker"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
end


gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
