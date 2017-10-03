source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.4'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Custom Gems---------------------------------------------------------------------------
gem "minitest-rails"
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'slide-down-alerts-rails'
gem 'will_paginate', '~> 3.1'
gem 'mail_form', '~> 1.7'
gem "swf_fu", "~> 2.0"
gem 'devise', '~> 4.3'
gem 'simple_form'
gem 'bootsy'
gem 'will_paginate-bootstrap'
gem "paperclip", "~> 5.0.0"
#---------------------------------------------------------------------------------------

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem "minitest-rails-capybara"
end

group :production do
  gem 'pg', '~> 0.18.4'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
