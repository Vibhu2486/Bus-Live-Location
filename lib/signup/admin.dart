import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';

class AdminSignUp extends StatefulWidget {
  const AdminSignUp({Key? key}) : super(key: key);

  @override
  State<AdminSignUp> createState() => _AdminSignUpState();
}

class _AdminSignUpState extends State<AdminSignUp> {
  //NumberInputElement _buses = NumberInputElement();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Admin Info",
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: const InputDecoration(
                icon: Icon(Icons.add_business_outlined),
                hintText: "Name Of the Company",
                labelText: "Company Name"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            //controller: _buses,
            decoration: const InputDecoration(
                icon: Icon(Icons.bus_alert_rounded),
                hintText: "Number of buses",
                labelText: "Buses"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, MyPages.BusInfo);
            },
            child: Text(
              'Add Bus Details',
              style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
            ))
      ]),
    );
  }
}
