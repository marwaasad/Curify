import 'package:flutter/material.dart';

class container1 extends StatelessWidget {
   container1({Key? key, required this.child}) : super(key: key);
   Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: child,
    );
  }
}
