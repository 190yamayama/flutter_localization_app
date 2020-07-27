import 'package:intl/intl.dart';

mixin Messages {
  String get hello => Intl.message(
        'こんにちは',
        name: 'hello',
        desc: '挨拶', // オプション
      );
}
