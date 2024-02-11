# The Definition of Done

A guide for developers looking to release and maintain quality software.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You need to have Docker installed to test locally:

- Docker: You can install Docker by following the instructions on the official [Docker website](https://docs.docker.com/get-docker/).

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/mesolimbo/definition-of-done.git
    ```
2. Navigate to the project directory:
    ```bash
    cd definition-of-done
    ```
3. Build the Docker image:
    ```bash
    docker build -t jekyll-site .
    ```
4. Run the Docker container:
    ```bash
    docker run --rm -p 4000:4000 -v "$PWD:/usr/src/app" \
      jekyll-site bundle exec jekyll serve              \
      --source /usr/src/app/docs --host 0.0.0.0
    ```

Now, you can browse the documentation at [http://localhost:4000](http://localhost:4000).

## Usage

The Markdown documentation in this project is compiled automatically by Github using Jekyll whenever you commit changes to the main branch in the `docs` folder. The compiled documentation is then available [here](https://mesolimbo.github.io/definition-of-done/).


## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## Contact

Project Link: [https://github.com/mesolimbo/definition-of-done](https://github.com/mesolimbo/definition-of-done)