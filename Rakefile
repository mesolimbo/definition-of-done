# frozen_string_literal: true

require 'html-proofer'

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

desc 'Build local Jekyll site'
task :local_jekyll_build do
  system 'bundle exec jekyll build --source ./docs --destination ./_site'
end

desc 'Pre-deploy test'
task :proof_html do
  print "Checking HTML syntax\n"
  HTMLProofer.check_directory('./_site', {
                                assume_extension: true,
                                typhoeus: { followlocation: true },
                                only_4xx: true
                              }).run
rescue Error => e
  abort "Error: #{e}"
end

desc 'Build local Jekyll site and ensure HTML is valid'
task local_jekyll_test: %i[local_jekyll_build proof_html]

task default: :local_jekyll_test
