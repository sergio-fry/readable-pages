# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem 'fastimage'
gem 'require_all'
gem 'ruby-readability'
gem 'sinatra'

group :development do
  gem 'rubocop'
end

group :development, :test do
  gem 'byebug'
end

group :test do
  gem 'rack-test'
  gem 'rspec'
  gem 'vcr'
  gem 'webmock'
end
