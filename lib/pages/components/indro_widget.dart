import 'package:atrewebapplication/util/adaptive_layout.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroWidget extends StatefulWidget {
  const IntroWidget({super.key});

  @override
  State<IntroWidget> createState() => _IntroWidgetState();
}

class _IntroWidgetState extends State<IntroWidget> {
  

  @override
  Widget build(BuildContext context) {
            final bool isMobile = Adaptive.isMobile(context);

    return Container(
                  decoration:isMobile?null: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Group 8776.png"),
                          alignment: Alignment.bottomCenter),
                      color: Color(0xffEFF3F8)),
                  child: Column(
                    children: [
                      Image.asset("assets/companyname (2).png",),
                      Text(
                        "Advancing Health Responsibly",
                        style: GoogleFonts.dmSans(
                          fontSize: 26,
                        ),
                      )
                    ],
                  ),
                );
  }
}