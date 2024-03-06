import 'package:eduflex/utlis/color.dart';
import 'package:eduflex/views/welcomeScreen/welcomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    appId: '1:138772656427:android:406692091ed651c607156e',
    apiKey: 'AIzaSyBh1RtSYIR-n9Klmld-xFBk7yTw18rwBxo',
    messagingSenderId: '138772656427',
    projectId: 'eduflexapp-69747',
    storageBucket: "gs://eduflexxapp.appspot.com",
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "EduFlex",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: const ColorScheme.light(
          primary: AppColors.blackcolor,
        ),
        scaffoldBackgroundColor: AppColors.scaffoldcolor,
      ),
      home: const WelcomeScreen(),
    );
  }
}
