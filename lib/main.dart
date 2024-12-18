import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled3/controllers/home_page_provider.dart';
import 'package:untitled3/screens/login.dart';
import 'package:untitled3/screens/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomePageProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: "Cairo",
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Login(),
      ),
    );
  }
}
