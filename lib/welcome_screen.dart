import 'package:curify/doctor_login.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Container.dart';
import 'bg.dart';

class button extends StatelessWidget {
   button({Key? key,
    required this.navigator_class,
    required this.width,
    required this.height,
    required this.child,
    required this.border,
    required this.color,

  }) : super(key: key);

  Widget navigator_class;
  double width;
  double height;
  Widget child;
  Color color;
  double border;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>navigator_class));
      },
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(border)),color: color,border: Border.all(color: Colors.black, width: 3)),
          child: Center(child: child),
        )
    );
  }
}



class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/GreenBg.png'),
              fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.loose,
              child: Container(
                  width: double.maxFinite
              ),
            ),
            Flexible(
                flex: 2,
                fit: FlexFit.loose,
                child: container1(
                  child: Center(
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      animatedTexts: [
                        TyperAnimatedText('WELCOME',
                          speed: const Duration(milliseconds: 500),
                          textStyle: const TextStyle(
                              fontFamily: 'bitter',
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 40
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Flexible(
                flex: 9,
                fit: FlexFit.loose,
                child: container1(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      button(navigator_class: const doctorlogin(), width: MediaQuery.of(context).size.width*.70, height: 70, border: 20, color: Colors.greenAccent,
                        child: const Center(child: Text('Doctor',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 1),),),)
                    ],
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}


