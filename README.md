[license]: https://www.tldrlegal.com/license/mit-license
[tmdb]: https://www.themoviedb.org/
[tmdb-terms]: https://www.themoviedb.org/terms-of-use
[tmdb-api]: https://developers.themoviedb.org

# Shows Vault

![Dart version 3.5.0](https://img.shields.io/badge/SDK-v3.5.0-red?style=flat&logo=dart&logoColor=2cb8f7&labelColor=333333&color=01579b)
![Flutter version 3.24.0](https://img.shields.io/badge/SDK-v3.24.0-red?style=flat&logo=flutter&logoColor=2cb8f7&labelColor=333333&color=01579b)

Explore the world of movies and tv shows with **Shows Vault**, your go-to source
for comprehensive information and in-depth credits on all your favorite films
and series. Whether you're a casual viewer or a true cinephile, **Shows Vault**
brings you everything you need to know about the stories, actors, and crew
details that make your favorite titles memorable.

## Table Of Contents

- [Policies](#policies)
- [Developer Section](#developer-section)
  - [Requirements](#requirements)
  - [Setup](#setup)
  - [API Documentation](#api-documentation)
  - [Project Structures](#project-structures)
  - [Git Conventions](#git-conventions)
  - [Others](#others)

# Policies

- Project is licensed under [MIT License][license].
- Since this project is backed by [The Movie DB][tmdb], of course we need to
  follow their [Terms of Use][tmdb-terms].

# Developer Section

Anything you need to know if you want to contribute or just want to have a look.

## Requirements

- [Flutter](https://docs.flutter.dev/release/archive) v3.24.0 for consistent
  dependencies.

  You may use [fvm](https://fvm.app/documentation/getting-started/installation)
  for easy installation.

  ```sh
  fvm use
  ```

## Setup

1. Install dependencies

   ```bash
   flutter pub get
   ```

2. Intialize git hooks to validate commit messages

   ```bash
   dart run husky install
   ```

3. Now you're good to go!

   ```bash
   flutter run -d <device-id>

   # Check connected devices
   flutter devices

   # Check available emulators
   flutter emulators
   ```

## API Documentation

- [The Movie DB API Documentation][tmdb-api]

## Project Structures

This project is follow the
[Clean Architecture](https://www.geeksforgeeks.org/complete-guide-to-clean-architecture/)
principles.

1. `/lib` — Source code

   1.1. `/domain` — Domain layer (Entities and services abstractions).

   1.2. `/infrastructures` — Infrastructure layer (Services implementations).

   1.3. `/interfaces` — Interfaces layer (Application routes, states, etc).

   1.4. `/use_cases` — Application logic layer.

## Git Conventions

We use [Conventional Commits](https://www.conventionalcommits.org) to handle Git
commit messages, and Github PR titles.

Look at [`commitlint.yaml`](commitlint.yaml) to see supported commit
types/scopes.

### Issue Title

```
<type>(<scopes(optional)>): <content>
```

Examples

- `feat: add movies service`
- `bug(interfaces): unresponsive movies page`
- `test(use_cases): add tests for movies use cases`

### Commit Message / PR Title

```
<type>(<scopes(optional)>): <content> #<issue-number>
```

Examples

- `feat: add tv shows service #25`
- `fix(interfaces): fix unresponsive movies page #250`
- `fix(domain/infrastructures): fix error movies fetch #502`

### Branch Name

```
<type>-<content>-#<issue-number>
```

Examples

- `chore-commilint-#1`
- `fix-unresponsive-movies-page-#250`

## Others

Other documentations that might be useful:

- [Dart Language](https://dart.dev/guides)
- [Flutter Docs](https://docs.flutter.dev/)
- [Material Design](https://material.io)
