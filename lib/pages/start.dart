import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';
import 'package:locationapp/pages/loginpage.dart';

class Start extends StatefulWidget {
  const Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Login(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 2.0);
        const end = Offset.infinite;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 500,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/DB35.gif'),
                    fit: BoxFit.fitWidth)),
          ),
        ),
        Container(
          height: 80,
          width: double.maxFinite,
          child: Text(
            "SRM Transport",
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyPages.Login);
          },
          child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blueAccent),
            child: Text(
              "Login",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 80,
          width: double.maxFinite,
          alignment: Alignment.bottomCenter,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/images.png"),
                  fit: BoxFit.fitHeight)),
        )
      ],
    ));
  }
}
