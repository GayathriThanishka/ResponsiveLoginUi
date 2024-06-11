import 'package:atrewebapplication/modelView/login_Page_Provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final appkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     var mediaQueryWidth=MediaQuery.of(context).size.width;
      var mediaQueryHight=MediaQuery.of(context).size.height;
    return Consumer<LoginProvider>(builder: (context, snap, child) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 65,left: 147,right: 160),
                child: Image.asset("assets/companyname (2).png"),
              ),
              Text(
                "Advancing Health Responsibly",
                style: GoogleFonts.dmSans(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 25,),
             
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(7)),color:Color(0XFFEFF3F8), ),
                  child: Form(
                    
                    key: appkey,
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Login",
                              style: GoogleFonts.roboto(
                                  color: Color(0XFF333333),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 26)),
                          Text(
                            "Please login to your account",
                            style: GoogleFonts.roboto(fontSize: 17, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Username",
                            style: GoogleFonts.roboto(fontSize: 16),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: snap.emailIdController,
                            validator: (value) => snap.emailValidation(value),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))),
                              contentPadding: EdgeInsets.all(15),
                              isDense: true,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Password",
                                  style: GoogleFonts.roboto(fontSize: 16),
                                ),
                                Text("Forgot password ?",
                                    style: GoogleFonts.roboto(
                                        fontSize: 12, color: const Color(0XFF7D86D0)),
                                    textAlign: TextAlign.end),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            controller: snap.passwordController,
                            validator: (value) => snap.passwordValidation(value),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(7))),
                              contentPadding: EdgeInsets.all(15),
                              isDense: true,
                            ),
                          ),
                        
                          const SizedBox(
                            height: 35,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              snap.submitButtonClickEvent(
                                context: context,
                                appkey: appkey,
                              );
                            },
                            child: const Text("Login",
                                style: TextStyle(color: Colors.white)),
                            style: ElevatedButton.styleFrom(
                              fixedSize: const Size(160, 48),
                              backgroundColor: const Color(0XFF6A75C9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          ],
                      ),
                    )
                  ),
                ),
              ),SizedBox(height: 80),
                     Container(
                     width: mediaQueryWidth,
                      height: mediaQueryHight*0.24,
                       decoration: const BoxDecoration(
                           image: DecorationImage(
                               image: AssetImage("assets/Group 8776.png"),
                               fit: BoxFit.cover),
                          ),
                     ),
              ],
                ),
        ),
            
          
        );
      
    });
  }
}
