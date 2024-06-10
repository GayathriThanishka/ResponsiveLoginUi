import 'package:atrewebapplication/responsive/Login%20Responsive/desktop_Scaffold.dart';
import 'package:atrewebapplication/responsive/Login%20Responsive/mobile_Scaffold.dart';
import 'package:atrewebapplication/responsive/responsive_Layout.dart';
import 'package:atrewebapplication/responsive/Login%20Responsive/tablet_Scaffold.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileScaffold:const  MobileScaffold(), tabletScaffold: TabletScaffold(), desktopScaffold:const DesktopScaffold());

    
  }
}