# {{ cookiecutter.project_name }}

<!-- markdownlint-disable MD031 -->
<!-- markdownlint-disable MD032 -->

This Django project has the following features:

- The use of Docker and environment variables for the development workstation.
  This ensures that secret keys do not make their way into production docker
  images.
- This sets up PostGres in Docker as well.
- Rather than Makefiles, this will use [Invoke](https://www.pyinvoke.org/)
  tasks.

## Prerequisites

Your user profile -- not the virtual environment -- needs the Python packages
_pipx_, _invoke_, _poetry_, and _toml_ to develop effectively with this
template. Poetry will create the virtual environment for the Django application
you develop.

```sh
python3 -m pip install --user invoke pipx toml
python3 -m pipx ensurepath
sudo pipx3 ensurepath --global  # optional
pipx install --include-deps poetry poetry-plugin-export
cp development/creds.env.example development/creds.env
```

Edit _development/creds.env_ to your specific security needs.

## Usage

### Invoke

[Invoke](https://www.pyinvoke.org/) is the Pythonic "Makefile." To use it in
this template you must operate within the virtual environment:

```sh
poetry shell
invoke <command>
```

### Development

#### Create the Docker image for the development environment

```sh
invoke build
```

#### Start the development server image

```sh
invoke debug
```

#### Stop the development server image

```sh
CTRL-C
```

#### Destroy the database

```sh
invoke destroy
```

To list all the other commands, use `invoke --list`
