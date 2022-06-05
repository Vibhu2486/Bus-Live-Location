import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:locationapp/signup/adminsignup.dart';
import '../pagerouts/MyPages.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        titleTextStyle: GoogleFonts.lato(fontSize: 30),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter Your Name',
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.key_sharp),
                  hintText: 'Enter the password',
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "New User?",
                  textAlign: TextAlign.center,
                ),
                InkWell(
                  onTap: (() {
                    Navigator.pushNamed(context, MyPages.SignUp);
                  }),
                  child: Text(
                    "SignUp",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(color: Colors.blue, fontSize: 15),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushNamed(context, MyPages.Home);
                },
                child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Login",
                      style:
                          GoogleFonts.lato(fontSize: 40, color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }
}
