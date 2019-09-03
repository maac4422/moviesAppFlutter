import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = MessageLookup();

// ignore: unused_element
final _keepAnalysisHappy = Intl.defaultLocale;

// ignore: non_constant_identifier_names
typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary {
  get localeName => 'en';

  static m0(task) => "Deleted \"$task\"";

  final messages = _notInlinedMessages(_notInlinedMessages);

  static _notInlinedMessages(_) => {
    "hello": MessageLookupByLibrary.simpleMessage("Hello :D")
  };
}