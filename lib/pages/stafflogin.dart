import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';

class StaffSignUp extends StatefulWidget {
  const StaffSignUp({Key? key}) : super(key: key);

  @override
  State<StaffSignUp> createState() => _StaffSignUpState();
}

class _StaffSignUpState extends State<StaffSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Your Info',
        style: GoogleFonts.lato(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
      )),
      body: SingleChildScrollView(
        child: Column(children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Enter your name',
                  labelText: 'Name'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.business),
                hintText: 'Transport Company name',
                labelText: 'Company name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.route),
                hintText: 'Bus Route Name',
                labelText: 'Route',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyPages.Location);
              },
              child: Text(
                'Sign Up',
                style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
