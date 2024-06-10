import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:atrewebapplication/responsive/Login%20Responsive/desktop_Scaffold.dart';
import 'package:atrewebapplication/responsive/Login%20Responsive/mobile_Scaffold.dart';
import 'package:atrewebapplication/view/login_Page.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [ChangeNotifierProvider<LoginProvider>(
          create: (context) => LoginProvider(),
        ),],
      child: const MaterialApp(
        
        debugShowCheckedModeBanner: false,
        home: LoginPage()
      ),);
    
  }
}


