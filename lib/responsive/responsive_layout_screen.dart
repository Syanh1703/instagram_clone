import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimensions.dart';

class ResponsiveLayoutScreen extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget phoneScreenLayout;
  ResponsiveLayoutScreen({
    required this.webScreenLayout,
    required this.phoneScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > webScreenSize){
              //The app looks like a web screen layout
            return webScreenLayout;
          }
          //Mobile screen layout
          return phoneScreenLayout;
        }
    );
  }
}
