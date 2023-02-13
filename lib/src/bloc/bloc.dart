import 'dart:async';
import './validator/authValidator.dart';

class Bloc extends Object with AuthValidator{
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  // stream getter
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  // set new value
  Function(String) get setEmailChanged => _email.sink.add;
  Function(String) get setPasswordChanged => _password.sink.add;

  dispose(){
    _email.close();
    _password.close();
  }

}