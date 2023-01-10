import 'package:finderhostel/Route/appRoute.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/Home_Page.dart';
import 'Theme/app_theme.dart';
import 'auth/auth_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel UI',
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
      home: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Something is wrong!'),
              );
            } else if (snapshot.hasData) {
              return HomePage();
            } else {
              return AuthPage();
            }
          }),
      onGenerateRoute: AppRoute.generate,
    );
  }
}
