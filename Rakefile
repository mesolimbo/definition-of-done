# frozen_string_literal: true

# Gemfile command to start Jekyll preview server via Docker
namespace :docker do
  desc 'Build Docker image'
  task :build do
    exec 'docker build -t jekyll-site .'
  end

  desc 'Run Jekyll in Docker'
  task :serve do
    exec 'docker run --rm -p 4000:4000 -v "$PWD:/usr/src/app" '\
          'jekyll-site bundle exec jekyll serve --source /usr/src/app/docs --host 0.0.0.0'
  end
end
