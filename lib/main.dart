import 'package:axnol_machine_test/view/edit_profile_page.dart';
import 'package:axnol_machine_test/view/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Axnol Test',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home:LoginScreen(), debugShowCheckedModeBanner: false,
    );
  }
}
