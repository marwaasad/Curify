import 'package:flutter/material.dart';

class background extends StatelessWidget {
   background({Key? key,
   required this.image,
     required this.child
   }) : super(key: key);
   Widget child;
   String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: child,
    );
  }
}
