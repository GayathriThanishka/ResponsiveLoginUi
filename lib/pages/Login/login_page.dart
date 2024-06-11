import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:atrewebapplication/pages/components/form_widget.dart';
import 'package:atrewebapplication/util/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../components/indro_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Form Key
    final appkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    
    final bool isMobile = Adaptive.isMobile(context);
    final bool isTablet = Adaptive.isTablet(context);
    return  Scaffold(
      body:    Row(
            children: [
              if(!isMobile)
          const Expanded(
                flex: 1,
                child: IntroWidget()
              ),
               Expanded(
                child: Column(
                  mainAxisAlignment:!isMobile?MainAxisAlignment.center: MainAxisAlignment.start,
                  crossAxisAlignment: !isMobile? CrossAxisAlignment.start:CrossAxisAlignment.center,
                  children: [
                    if(isMobile)
                 const   IntroWidget(),
                 
                   if(isMobile)
                  const SizedBox(height: 50,),
                 const FormWidget(),
                  if(isMobile)
                  Expanded(child: buildBottomImg())
                 
                  ],
                )
              ),
            ],
          ),
     
    
    );
  }
Widget  buildBottomImg(){
  return Image.asset("assets/Group 8776.png");
}
}