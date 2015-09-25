// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library sky_tools.cache;

import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:logging/logging.dart';

import 'artifacts.dart';

final Logger _logging = new Logger('sky_tools.cache');

class CacheCommand extends Command {
  final name = 'cache';
  final description = 'Manages sky_tools\' cache of binary artifacts.';
  CacheCommand() {
    addSubcommand(new _ClearCommand());
    addSubcommand(new _PopulateCommand());
  }
}

class _ClearCommand extends Command {
  final name = 'clear';
  final description = 'Clears all artifacts from the cache.';
  _ClearCommand() {
    argParser.addOption('package-root', defaultsTo: 'packages');
  }

  @override
  Future<int> run() async {
    ArtifactStore artifacts = new ArtifactStore(argResults['package-root']);
    await artifacts.clear();
    return 0;
  }
}

class _PopulateCommand extends Command {
  final name = 'populate';
  final description = 'Populates the cache with all known artifacts.';
  _PopulateCommand() {
    argParser.addOption('package-root', defaultsTo: 'packages');
  }

  @override
  Future<int> run() async {
    ArtifactStore artifacts = new ArtifactStore(argResults['package-root']);
    await artifacts.populate();
    return 0;
  }
}
