import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SignUp info",
          style: GoogleFonts.lato(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Your Name",
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.password_outlined),
                hintText: "Enter Password",
                labelText: "Password",
              ),
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, minimumSize: Size(200, 50)),
              onPressed: () {
                Navigator.pushNamed(context, MyPages.AdminSignUp);
              },
              child: const Text("Admin login")),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white, minimumSize: Size(200, 50)),
              onPressed: () {
                Navigator.pushNamed(context, MyPages.StaffSignUp);
              },
              child: const Text("Login"))
        ],
      )),
    );
  }
}
