import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthenticationService{
  final FirebaseAuth  _firebaseAuth;

  AuthenticationService(this._firebaseAuth);
    
    Future<bool> SignIn({required String email, required String password}) async{
      return false;
    }
    Future <bool> signUp({required String email, required String password}) async{
      return false;
    }
    Future <bool> signIn ({required String email, required String password}) async{
      try {
        await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
        return true;

      }on FirebaseAuthException catch(e){
        debugPrint(e.message ?? "Unknown Error");
        return false;
      }
    }
  }





