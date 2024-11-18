# Shows Vault

[dart-badge]: https://img.shields.io/badge/SDK-^3.5.0-red?style=flat&logo=dart&logoColor=2cb8f7&labelColor=333333&color=01579b
[fl-badge]: https://img.shields.io/badge/SDK-^3.24.0-red?style=flat&logo=flutter&logoColor=2cb8f7&labelColor=333333&color=01579b

![Dart version 3.5.0 or higher][dart-badge] ![Flutter version 3.24.0 or higher][fl-badge]

Explore the world of movies and tv shows with **Shows Vault**, your go-to source
for comprehensive information and in-depth credits on all your favorite films
and series. Whether you're a casual viewer or a true cinephile, **Shows Vault**
brings you everything you need to know about the stories, actors, and crew
details that make your favorite titles memorable.

## Table Of Contents

- [Policies](#policies)
- [Developer Section](#developer-section)
  - [Requirements](#requirements)
  - [Dependencies](#dependencies)
  - [Setup](#setup)
  - [API Documentation](#api-documentation)
  - [Project Structures](#project-structures)
  - [Git Conventions](#git-conventions)
  - [Others](#others)

## Policies

[license]: https://www.tldrlegal.com/license/mit-license
[tmdb]: https://www.themoviedb.org/
[tmdb-terms]: https://www.themoviedb.org/terms-of-use

- Project is licensed under [MIT License][license].
- Since this project is backed by [The Movie DB][tmdb], of course we need to
  follow their [Terms of Use][tmdb-terms].

## Developer Section

Anything you need to know if you want to contribute or just want to have a look.

### Requirements

[fl-archive]: https://docs.flutter.dev/release/archive
[fvm]: https://fvm.app/documentation

- [Flutter][fl-archive] with the same version as defined on [`.fvmrc`](.fvmrc)
  file.

  You may use [FVM][fvm] (Flutter Version Manager) for easy installation.

  ```sh
  fvm use
  ```

### Dependencies

[build-runner]: https://pub.dev/packages/build_runner
[injectable]: https://pub.dev/packages/injectable
[freezed]: https://pub.dev/packages/freezed
[chopper]: https://pub.dev/packages/chopper
[shared_preferences]: https://pub.dev/packages/shared_preferences
[go_router]: https://pub.dev/packages/go_router
[riverpod]: https://riverpod.dev

Main packages that are used as foundation for this project.

- [injectable][injectable] -- Dependency injection framework.
- [freezed][freezed] -- Data model with short and simple syntax.
- [chopper][chopper] -- HTTP client service.
- [shared_preferences][shared_preferences] -- Local storage.
- [go_router][go_router] -- Web friendly routing.
- [riverpod][riverpod] -- State management framework.

Most of them need to generate its utilities with [build_runner][build-runner].

### Setup

1. Install dependencies

   ```sh
   flutter pub get
   ```

2. Intialize git hooks to validate commit messages

   ```sh
   dart run husky install
   ```

3. Create `.env` file on the project root. Use [`.env.example`](.env.example) as
   a reference.

4. Build project environment.

   ```sh
   dart run build_runner build -d
   ```

5. Now you're good to go!

   ```sh
   # Check connected devices
   flutter devices

   # Check available emulators
   flutter emulators

   # Run app
   flutter run -d <device-id>
   ```

### API Documentation

- [The Movie DB API Documentation](https://developers.themoviedb.org)

### Project Structures

[clean-architecture]: https://medium.com/@DrunknCode/clean-architecture-simplified-and-in-depth-guide-026333c54454

This project is follow the [Clean Architecture][clean-architecture] principles.

[main.dart]: ./lib/main.dart
[locator]: ./lib/service_locator.dart

- `/lib` -- Source code

  - [`main.dart`][main.dart] -- Application entry point.

  - [`service_locator.dart`][locator] -- Service locator to get services that
    registered by [injectable][injectable].

  - `/domain` -- Domain layer (Entities and services abstractions).

  - `/infrastructures` -- Infrastructure layer (Services implementations).

  - `/interfaces` -- Interfaces layer (Application routes, states, etc).

    - `/routes` -- Application routes and screen widgets.
    - `/providers` -- Application UI states.
    - `/widgets` -- Reusable widgets.

  - `/use_cases` -- Application logic layer.

  - `/libs` -- Main constants and utilities. Other folders may contain this folder
    name as well to define its own constants/utilities.

### Git Conventions

[conventional-commits]: https://www.conventionalcommits.org

We use [Conventional Commits][conventional-commits] to handle Git commit messages,
and Github PR titles.

Look at [`commitlint.yaml`](commitlint.yaml) to see supported commit types/scopes.

#### Issue Title

```sh
<type>(<scopes(optional)>): <content>
```

Examples:

- `feat: add movies service`
- `bug(interfaces): unresponsive movies page`
- `test(use_cases): add tests for movies use cases`

##### Commit Message / PR Title

```sh
<type>(<scopes(optional)>): <content> sv-<issue-number>
```

Examples:

- `feat: add tv shows service sv-25`
- `fix(interfaces): fix unresponsive movies page sv-250`
- `fix(domain/infrastructures): fix error movies fetch sv-502`

##### Branch Name

```sh
<type>-<content>-sv-<issue-number>
```

Examples:

- `chore-commitlint-sv-1`
- `fix-unresponsive-movies-page-sv-250`

### Others

Other documentations that might be useful:

- [Dart Docs](https://dart.dev/guides)
- [Flutter Docs](https://docs.flutter.dev/)
- [Material Design](https://material.io)
