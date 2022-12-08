import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rttv/homepage.dart';
import 'package:rttv/loginPage.dart';
import 'package:rttv/nav_screen.dart';
import 'package:rttv/signuppage.dart';
import 'package:rttv/videoscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp();
  runApp(const RTTV());
  // runApp(const NavScreen());
}

class RTTV extends StatelessWidget {
  const RTTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(displaySmall: TextStyle(color: Colors.white),displayMedium:  TextStyle(color: Colors.white)),
        primarySwatch: Colors.brown,
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
        )
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return const NavScreen();
            } else if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            }
          }
          if(snapshot.connectionState == ConnectionState.waiting)
            {
              return const Center(
                child: CircularProgressIndicator(
                  color:  Colors.white,
                ),
              );
            }
          return const LoginPage();
        },
      ),
    );
  }
}
