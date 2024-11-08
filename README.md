# Django Template

This is a [Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/)
project template for Django. Replace this intro with your own.

This will be updated as I go through the Feldroy's Two Scoops. In the meantime,
know that this cookie cutter has the following features:

1. The use of Docker and environment variables for the development workstation.
   This ensures that secret keys do not make their way into production docker
   images.
2. This sets up PostGres in Docker as well.
3. Rather than Makefiles, this will use [Invoke](https://www.pyinvoke.org/)
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
```

__This is not yet ready for deployment.__
