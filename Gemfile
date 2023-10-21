# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'aws-sdk-s3', '~> 1.114'
gem 'bootsnap', require: false
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'erb_lint', require: false
gem 'image_processing', '~> 1.2'
gem 'jbuilder'
gem 'kaminari'
gem 'mail_form', '~> 1.9'
gem 'nokogiri', '~> 1.13'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.6'
gem 'rails', '~> 7.0.2', '>= 7.0.2.2'
gem 'rubocop', require: false
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
# gem "redis", "~> 4.0"

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'
  gem 'faker', '~> 2.20'
  gem 'standard'
end

group :development do
  gem 'letter_opener_web', '~> 2.0'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem "tailwindcss-rails", "~> 2.0"

gem "jsbundling-rails", "~> 1.2"
