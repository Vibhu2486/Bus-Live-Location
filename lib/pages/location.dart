import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(52, 199, 199, 198),
        title: Text(
          "BUS Route: ",
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.bus_alert_sharp),
              iconColor: Colors.white,
              title: Text(
                "Nearest Bus",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.route),
              iconColor: Colors.white,
              title: Text(
                "Routes",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyPages.Home);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_support),
              iconColor: Colors.white,
              title: Text(
                "About Us",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.perm_contact_calendar_sharp),
              iconColor: Colors.white,
              title: Text(
                "Contact Us",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: Colors.white,
              title: Text(
                "Sign Out",
                style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(context, MyPages.Login);
              },
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: Text(
              "Live Location",
              style: GoogleFonts.lato(fontSize: 20),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey, width: 2)),
            child: Text(
              "Bus Conductor Number: \n\nBus No.: \n\nBus Coordinator Name: ",
              style:
                  GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 300,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 2),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)),
              child: Text("Bus Stops and time",
                  style: GoogleFonts.lato(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
        ),
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.green, //<-- SEE HERE
          child: IconButton(
            alignment: Alignment.topCenter,
            icon: const Icon(
              Icons.phone,
              color: Colors.white,
              size: 45,
            ),
            onPressed: () {},
          ),
        )
      ])),
    );
  }
}
