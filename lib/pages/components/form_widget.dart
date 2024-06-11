import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:atrewebapplication/util/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
    final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
        final bool isDesktop = Adaptive.isDesktop(context);
            final bool isMobile = Adaptive.isMobile(context);

    return Consumer<LoginProvider>(
        builder: (context, snap, child) => Container(
          padding: EdgeInsets.all(30),
          margin:EdgeInsets.all(10),
          decoration:!isMobile?null:  BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                      color:const Color(0xffEFF3F8)),
          child: Padding(
            padding:!isMobile?   EdgeInsets.symmetric(horizontal: 40):EdgeInsets.zero,
            child: Form(
              key: appkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 32)),
                  Text(
                    "Please login to your account",
                    style: GoogleFonts.roboto(
                        fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Username",
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    width:isDesktop? MediaQuery.of(context).size.width *0.3:null,               child: Column(
                      children: [
                        TextFormField(
                          controller: snap.emailIdController,
                          validator: (value) =>
                              snap.emailValidation(value),
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            contentPadding: EdgeInsets.all(15),
                            isDense: true,
                            
                          ),
                        ),
                        const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Password",
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      Text("Forgot password ?",
                          style: GoogleFonts.roboto(
                              fontSize: 12,
                              color: const Color(0XFF7D86D0)),
                          textAlign: TextAlign.end),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: snap.passwordController,
                    validator: (value) =>
                        snap.passwordValidation(value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(5))),
                      contentPadding: EdgeInsets.all(15),
                      isDense: true,
                     
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                      ],
                    ),
                  ),
                  
                  ElevatedButton(
                    onPressed: () {
                      snap.submitButtonClickEvent(
                        context: context,
                        appkey: appkey,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(210, 45),
                      backgroundColor: const Color(0XFF6A75C9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: const Text("SUBMIT",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ),)
          ;
  }
}