import 'dart:async';

class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (String email, sink) async {
      if (email.contains('@')) {
        sink.add(email);
      } else {
        sink.addError('Invalid email address');
      }
    },
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (String passsword, sink) async {
      if (passsword.length > 3) {
        sink.add(passsword);
      } else {
        sink.addError('Password must be at least 4 characters');
      }
    },
  );
}
