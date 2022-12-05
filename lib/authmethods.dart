import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Sign Up user
  Future<String> signUpUser({
    required String email,
    required String password,
    required String name,
  }) async{
    String res = "Some error occurred";
    try{
      if(email.isNotEmpty||password.isNotEmpty||name.isNotEmpty){
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);

        await  _firestore.collection('users').doc(cred.user!.uid).set({
          'username':name,
          'uid':cred.user!.uid,
          'email':email,
        }
        );
        res = 'Success';
      }
    }
    catch(err)
    {
      res = err.toString();
    }
    if(res=='[firebase_auth/invalid-email] The email address is badly formatted.')
      {
        res = 'Invaild Email';
      }
    else if(res == '[firebase_auth/weak-password] Password should be at least 6 characters')
      {
        res = 'Password should be atleast 6 character';
      }
    else if(res == '[firebase_auth/email-already-in-use] The email address is already in use by another account.')
      {
        res = 'Email Already in use';
      }
    return res;
  }

  Future<String> loginUser({
  required String email,
    required String password,
}) async{
    String res = "Some error occurred";

    try{
      if(email.isNotEmpty||password.isNotEmpty){
         await _auth.signInWithEmailAndPassword(email: email, password: password);
          res = "Success";
      }else
        {
          res = "Enter all the fields";
        }
    }catch(err)
    {
        res = err.toString();
    }

    return res;
  }
}