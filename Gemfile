source 'https://rubygems.org'
ruby "3.1.0"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "actionpack-page_caching"
gem 'rails'
gem 'slim-rails'
gem 'sass-rails'
gem 'puma'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end