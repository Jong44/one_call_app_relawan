import 'package:firebase_auth/firebase_auth.dart';

class LoginService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var response = {
    'status': false,
    'message': '',
    'data': null,
  };

  Future signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      User user = credential.user!;
      return response = {
        'status': true,
        'message': 'Sign in success',
        'data': user,
      };
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-not-found':
          return response = {
            'status': false,
            'message': 'User Tidak Ditemukan',
            'data': null,
          };
        case 'wrong-password':
          return response = {
            'status': false,
            'message': 'Password Salah',
            'data': null,
          };
        default:
          return response = {
            'status': false,
            'message': 'Error: ${e.code}',
            'data': null,
          };
      }
    }
  }
}
