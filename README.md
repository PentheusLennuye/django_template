# Django Template

<!-- markdownlint-disable MD031 -->
<!-- markdownlint-disable MD032 -->

This is a [Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/)
project template for Django. Replace this intro with your own.

This cookie cutter template has the following features:

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
python3 -m pipx cookiecutter ensurepath
sudo pipx3 ensurepath --global  # optional
pipx install --include-deps poetry poetry-plugin-export
```

## Download and adapt

```sh
git clone https://github.com/PentheusLennuye/django_template.git
cookiecutter django_template
```
