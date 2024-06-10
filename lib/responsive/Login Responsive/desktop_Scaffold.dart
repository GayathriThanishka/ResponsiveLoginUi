import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
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
                child: Column(
                  children: [
                    Image.asset("assets/companyname (2).png"),
                    Padding(
                      padding: const EdgeInsets.only(left: 159, right: 165),
                      child: Text(
                        "Advancing Health Responsibly",
                        style: GoogleFonts.dmSans(
                          fontSize: 26,
                        ),
                      ),
                    )
                  ],
                ),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/Group 8776.png"),
                        alignment: Alignment.bottomCenter),
                    color: Color(0xffEFF3F8)),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Form(
                      key: appkey,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50, right: 14),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 157),
                              child: Text("Login",
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 32)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 300, left: 157),
                              child: Text(
                                "Please login to your account",
                                style: GoogleFonts.roboto(
                                    fontSize: 16, color: Colors.grey),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 157),
                              child: Text(
                                "Username",
                                style: GoogleFonts.roboto(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 157, right: 187),
                              child: TextFormField(
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
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 157),
                                  child: Text(
                                    "Password",
                                    style: GoogleFonts.roboto(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 187, left: 160),
                                  child: Text("Forgot password ?",
                                      style: GoogleFonts.roboto(
                                          fontSize: 12,
                                          color: const Color(0XFF7D86D0)),
                                      textAlign: TextAlign.end),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 157, right: 187),
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 157, right: 408),
                              child: ElevatedButton(
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
