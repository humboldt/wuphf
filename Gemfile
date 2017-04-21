source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',            '~> 5.0.2'
gem 'pg',               '~> 0.18'
gem 'puma',             '~> 3.0'
gem 'sass-rails',       '~> 5.0'
gem 'uglifier',         '>= 1.3.0'
gem 'coffee-rails',     '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks',       '~> 5'
gem 'jbuilder',         '~> 2.5'
gem 'guard-livereload', '~> 2.5', '>= 2.5.2'
gem 'figaro',           '~> 1.1', '>= 1.1.1'
gem 'faker',            '~> 1.7', '>= 1.7.3'
gem 'selectize-rails',  '~> 0.12.4'


group :development do
  gem 'rails_real_favicon'
end

# Auth
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'oauth',  '~> 0.5.1'

# Styling
gem 'animate-rails',      '~> 1.0', '>= 1.0.10'
gem 'bootstrap',          '~> 4.0.0.alpha6'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

# External APIs
gem 'twilio-ruby', '~> 4.13'
gem 'twitter',     '~> 6.1'
gem 'koala',       '~> 3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
  gem 'rails-controller-testing', '~> 1.0', '>= 1.0.1'
  gem 'minitest-reporters',       '~> 1.1', '>= 1.1.14'
  gem 'guard',                    '~> 2.14', '>= 2.14.1'
  gem 'guard-minitest',           '~> 2.4', '>= 2.4.6'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
