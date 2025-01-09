#!/bin/sh
poetry init -q\
    --name={{ cookiecutter.project_slug}}\
    --author="{{ cookiecutter.author }}"\
    --python={{ cookiecutter.python_ver }}
poetry add django psycopg-binary psycopg invoke toml
poetry add --group=dev pylint black pydocstyle
printf "[tool.black]\nline-length = 79\n\n" >> pyproject.toml
printf '[tool.pylint]\nignore = ["manage.py"]\n\n' >> pyproject.toml
