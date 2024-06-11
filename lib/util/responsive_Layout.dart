import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
   final Widget mobileScaffold;
 final Widget tabletScaffold;
 final Widget desktopScaffold;
 const ResponsiveLayout({super.key, required this.mobileScaffold,required this.tabletScaffold,required this.desktopScaffold});

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
 

  @override
  Widget build(BuildContext context) {
    
    //Declare Screen Size for mbl,desktop and tablet
      return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth<=767) {
        return widget.mobileScaffold;
        
      }
      else if(constraints.maxWidth<=1366 || constraints.minWidth>=768 ){
        return widget.tabletScaffold;
      }
      else{
        return widget.desktopScaffold;
      }
    },);
  }
}