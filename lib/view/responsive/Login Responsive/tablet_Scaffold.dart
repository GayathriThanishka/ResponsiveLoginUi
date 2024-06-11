import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(builder: (context, snap, child) {
      return Scaffold(
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Group 8776.png"),
                        alignment: Alignment.bottomCenter),
                    color: Color(0xffEFF3F8)),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      Image.asset("assets/companyname (2).png"),
                      Text(
                        "Advancing Health Responsibly",
                        style: GoogleFonts.dmSans(
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded( child: Center(
                child: SingleChildScrollView(
                  child: Form(
                    key: appkey,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
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
                          SizedBox(width: 400,
                            child: TextFormField(
                              controller: snap.emailIdController,
                              validator: (value) =>
                                  snap.emailValidation(value),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)),),
                                contentPadding: EdgeInsets.all(15),
                                isDense: true,
                                
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          
                           SizedBox(width: 400,
                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                           ),
                          
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(width: 400,
                            child: TextFormField(
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
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              snap.submitButtonClickEvent(
                                context: context,
                                appkey: appkey,
                              );
                            },
                            child: const Text("SUBMIT",
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(210, 45),
                              backgroundColor: const Color(0XFF6A75C9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),),
              
            
          ],
        ),
      );
    });
  }
}
