import 'dart:async';

class AuthValidator{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink){
      if(email.contains("@")){
        sink.add(email);
      }else{
        sink.addError("Please input correct email format");
      }
    }
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (String password, sink){
        if(password.length > 6){
          sink.add(password);
        }else{
          sink.addError("Password must have more than 6 characters");
        }
      }
  );
}