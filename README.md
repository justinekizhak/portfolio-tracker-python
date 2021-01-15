# Portfolio tracker [Python]

## Install dependencies

```sh
poetry install
```

## Poetry

### To install all packages

```sh
poetry install
```

### To add new package

```sh
poetry add <package-name> # or poetry add --dev <package-name>
```

### To go into poetry shell

```sh
poetry shell
```

### To get help

```sh
poetry --help
```

Poetry Docs: https://python-poetry.org/

## Run project

The recommended way to run the project is using [ddot](https://pypi.org/project/ddot/).

First install _ddot_ using [pipx](https://pypi.org/project/pipx/)

```sh
pipx install ddot # OR pip install ddot
```

And later on run `ddot run` on the shell.

It should prompt you a list of all the things it can do in this project.

Just select those which you want.

All the commands are described in the `devfile.toml` file.

### Development mode

```sh
ddot run -m dev # OR python3 -m portfolio_tracker
```

### Production mode

```sh
ddot run -m deploy
```

### Help

```sh
python3 -m portfolio_tracker --help
```

## API docs

API docs are available at

ReDoc is the default. SwaggerUI is also available.

### ReDoc

http://localhost:5000/api

### Swagger UI

http://localhost:5000/api/swagger

## Support for `.env` files

`.env` files are supported.

Also stage based env files are also supported.

Stages supported:

- Development
- Production

Also includes support for `.local` files as well.

`.local` files have the higher priority over the non local files.

Supported files:

- `.env.development.local`
- `.env.development`
- `.env.production.local`
- `.env.production`
- `.env.local`
- `.env`

[Env files priority order](https://create-react-app.dev/docs/adding-custom-environment-variables/#what-other-env-files-can-be-used)

### ENV values

These variables will always be opposite of the `PRODUCTION_ENV` variable.

- `SERVER_RELOAD`
- `DEBUG`

Even though they are part of the `BaseSettings` their value will always be
overridden by the above logic.

## Testing

### Isolated testing

```sh
tox
```

### Testing once

```sh
pytest
```

### TDD

```sh
pytest-watch
```

### Type checking

```sh
mypy
```

### Linting, typechecking all at once

```sh
tox -e check
```

## Installing Pre commit hook

```sh
pre-commit install
```
