// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

part of reporting;

class DisabledUsage implements Usage {
  @override
  bool get isFirstRun => false;

  @override
  bool get suppressAnalytics => true;

  @override
  set suppressAnalytics(bool value) {}

  @override
  bool get enabled => false;

  @override
  set enabled(bool value) {}

  @override
  String get clientId => Uuid().generateV4();

  @override
  void sendCommand(String command, {Map<String, String>? parameters}) {}

  @override
  void sendEvent(String category, String parameter,
      {Map<String, String>? parameters}) {}

  @override
  void sendTiming(String category, String variableName, Duration duration,
      {String? label}) {}

  @override
  void sendException(dynamic exception) {}

  @override
  Stream<Map<String, dynamic>> get onSend => AnalyticsMock().onSend;

  @override
  Future<void> ensureAnalyticsSent() => Future<void>.value();

  @override
  void printWelcome() {}
}
