# tools

[![Build Status](https://travis-ci.org/flutter/tools.svg)](https://travis-ci.org/flutter/tools)

Tools for building Sky applications.

## Installing

To install, run:

    pub global activate sky_tools

or, depend on this package in your pubspec:

```yaml
dependencies:
  sky_tools: any
```

## Running sky_tools

Run `sky_tools` (or `pub global run sky_tools`) to see a list of available
commands:

- `init` to create a new project

Then, run a `sky_tools` command:

    sky_tools init --out my_sky_project

## Running sky_tools:sky_server

To serve the current directory using `sky_server`:

    pub run sky_tools:sky_server [-v] PORT

## Running sky_tools:build_sky_apk

```
usage: pub run sky_tools:build_sky_apk <options>

-h, --help
    --android-sdk
    --skyx
```

## Filing Issues

Please file reports on the
[GitHub Issue Tracker](https://github.com/flutter/tools/issues).
