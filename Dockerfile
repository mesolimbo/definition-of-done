# Use the official Ruby image from the Docker Hub
FROM ruby:3.3.0-bookworm

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs

# Install Jekyll and Bundler
RUN gem install jekyll bundler

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile /usr/src/app/Gemfile
COPY Gemfile.lock /usr/src/app/Gemfile.lock

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of your application's code into the container
COPY . /usr/src/app

# Expose the port Jekyll will run on
EXPOSE 4000

# Command to build and serve the site on http://localhost:4000
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
