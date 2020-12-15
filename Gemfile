source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'rails', '6.0.3.4'
gem 'puma', '4.3.6'
gem 'sass-rails', '6.0.0'
gem 'webpacker', '4.0.7'
gem 'turbolinks', '5.2.0'
gem 'jbuilder', '2.9.1'
gem 'bootsnap', '1.4.5', require: false
gem 'pg', '1.2.3'
gem 'rack-cors', require: 'rack/cors'

group :development, :test do
  gem 'byebug', '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails"
end

group :development do
  gem 'web-console', '4.0.1'
  gem 'listen', '3.2.1'
  gem 'spring', '2.1.1'
  gem 'spring-watcher-listen', '2.0.1'
end

group :test do
  gem 'capybara', '3.28.0'
  gem 'selenium-webdriver', '3.142.4'
  gem 'webdrivers', '4.1.2'
end

group :production do
  
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
