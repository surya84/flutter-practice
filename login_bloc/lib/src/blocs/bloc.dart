import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'validators.dart';

class Bloc with Validators {
  final _email = new BehaviorSubject<String>();
  final _password = new BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream<bool> get submitValid =>
      CombineLatestStream([email, password], (values) {
        print(values);
        return true;
      });

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }

  submit() {
    print(_email.value);
    print(_password.value);
  }
}
