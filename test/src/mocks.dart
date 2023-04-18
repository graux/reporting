import 'package:mockito/mockito.dart';
import 'package:reporting/reporting.dart';
import 'package:tool_base/tool_base.dart';
import 'package:usage/usage.dart';

const kAnalyticsUA = 'analyticsUA';
const kSettings = '.settings';

class FakeUsage implements Usage {
  @override
  bool get isFirstRun => false;

  @override
  bool get suppressAnalytics => false;

  @override
  set suppressAnalytics(bool value) {}

  @override
  bool get enabled => true;

  @override
  set enabled(bool value) {}

  @override
  String get clientId => '00000000-0000-4000-0000-000000000000';

  @override
  void sendException(dynamic exception) {}

  @override
  Future<void> ensureAnalyticsSent() => Future<void>.value();

  @override
  void printWelcome() {}

  @override
  Stream<Map<String, dynamic>> get onSend => AnalyticsMock().onSend;

  @override
  void sendCommand(String command, {Map<String, String>? parameters}) {}

  @override
  void sendEvent(String category, String parameter,
      {Map<String, String>? parameters}) {}

  @override
  void sendTiming(String category, String variableName, Duration duration,
      {String? label}) {}
}

class MockClock extends Mock implements SystemClock {}
