import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/firebase_web_constant.dart';
import 'package:instagram_clone/screens/sign_up_screen.dart';
import '../utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///Check whether the app is running on the phone or computer
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: apiKey,
        appId: appId,
        messagingSenderId: messagingSenderId,
        projectId: projectId,
        storageBucket: storageBucket,
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: ResponsiveLayoutScreen(
      //   phoneScreenLayout: const PhoneScreenLayout(),
      //   webScreenLayout: const WebScreenLayout(),
      // ),
      home: SignUpScreen(),
    );
  }
}
