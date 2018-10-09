source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.4.1"

gem "bootsnap", ">= 1.1.0", require: false
gem "carrierwave"
gem "cloudinary"
gem "figaro"
gem "mini_magick"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "puma", "~> 3.11"
gem "rack-cors"
gem "rails", "~> 5.2.1"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara"
  gem "database_cleaner"
  gem "factory_bot_rails", require: false
  gem "faker"
  gem "rspec-rails", "~> 3.8"
  gem "rubocop", "~> 0.54.0", require: false
  gem "shoulda-matchers"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :production do
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
