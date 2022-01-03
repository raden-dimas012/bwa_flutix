part of 'services.dart';

class AuthServices {
  static final auth.FirebaseAuth _auth = auth.FirebaseAuth.instance;

  static Future<SignInSignUpResult> signUp(String email, String password,
      String name, List<String> selectedGenres, String selectedLanguage) async {
    try {
      auth.UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = convertToUser(result.user,
          name: name,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguage);
      await UserServices.updateUser(user);
      return SignInSignUpResult(user: user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split(']')[1].trim());
    }
  }

  static Future<SignInSignUpResult> signIn(
      String email, String password) async {
    try {
      auth.UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User user = await fromFireStore(result.user);
      return SignInSignUpResult(user: user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split(']')[1].trim());
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  static Future<ResetPasswordResult> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return ResetPasswordResult();
    } catch (e) {
      return ResetPasswordResult(message: e.toString().split(']')[1].trim());
    }
  }

   static Stream<auth.User> get userStream => _auth.authStateChanges();
}

class ResetPasswordResult {
  final String message;

  ResetPasswordResult({this.message});
}

class SignInSignUpResult {
  final User user;
  final String message;

  SignInSignUpResult({this.user, this.message});
}



