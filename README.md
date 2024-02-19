# The Definition of Done

A guide for developers looking to release and maintain quality software, written as a data-driven DocOps Jekyll document.

[You can read the compiled documentation here](https://mesolimbo.github.io/definition-of-done/).

## Getting Started

These instructions will get your copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have Docker (and optionally Ruby) installed to test locally:

- Docker: You can install Docker by following the instructions on the official [Docker website](https://docs.docker.com/get-docker/).
- Ruby: You can install Ruby by following the instructions on the official [Ruby website](https://www.ruby-lang.org/en/documentation/installation/).
  
  After installing Ruby, you will need to install Bundler and Rake:
   
  ```bash
  gem install bundler rake
  ```

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/mesolimbo/definition-of-done.git
    ```
2. Navigate to the project directory:
    ```bash
    cd definition-of-done
    ```
3. If you are using bundler, install the dependencies:
    ```bash
    bundle install
    ```
4. Build the Docker image:
    ```bash
    docker build -t jekyll-site .
    ```
    or using bundler:
    ```bash
    bundle exec rake docker:build
    ```
   
5. You'll need to run steps 3 and 4 again to rebuild if the Gemfile or Gemfile.lock changes.


6. Run the Docker container:
    ```bash
    docker run --rm -p 4000:4000 -v "$PWD:/usr/src/app" \
      jekyll-site bundle exec jekyll serve              \
      --source /usr/src/app/docs --host 0.0.0.0
    ```
   or using bundler:
    ```bash
    bundle exec rake docker:run
    ```

Now, you can browse the documentation at [http://localhost:4000](http://localhost:4000).

## Usage

### Updating content

The Markdown documentation in this project is compiled automatically by Github using Jekyll whenever you commit changes to the main branch in the `docs` folder.

The core of the documentation is located in a set of YAML data files in the `_data` directory. The `sections.yml` file lists all the sections, their `title` and `blurb`, as well as a the name of each section's `details` YAML file.

Each section's details file contains a list of steps, each with a `title`, `summary`, and expandable `content`. The details are written in Markdown and can include HTML.

### Customize CSS

A stylesheet is located at `docs/assets/css/style.scss`. You can customize the CSS by editing this file.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
