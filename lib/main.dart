import 'package:bwa_flutix/services/services.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  // final Future<FirebaseApp> _fbApp = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () async {
                 SignInSignUpResult result = await AuthServices.signUp("jennie@blackpink.com", "123456", "Jennie", ["Action","Horror","Music","Drama"], "Korean");
                 if(result.user == null) {
                   debugPrint(result.message);
                 } else {
                   debugPrint(result.user.toString());
                 }
                }, 
                child: const Text("Sign Up"))
            ],
          ),
        ),
      ),
    );
  }
}
