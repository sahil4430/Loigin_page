import 'package:firebase_auth/firebase_auth.dart';
class authFirebase{
  final FirebaseAuth _auth= FirebaseAuth.instance;
   signupwithmail( String email,String password) async{
    try {
      UserCredential credential=
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("their is some error");
      print(e);
    }
    return null;
    }
    signinwithmail( String email, String password) async{
    try{
      UserCredential credential=
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    }
    catch(e){
      print("error occur in signin");
      print(e);
    }
    return null;
    }
  }