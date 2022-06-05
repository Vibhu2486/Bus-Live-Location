import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';
import 'package:locationapp/pages/location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Bus Locations"),
        ),
        body: SingleChildScrollView(
          child: Row(
            children: <Widget>[
              for (int i = 0; i < 2; i++)
                (Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    for (int i = 0; i < 10; i++)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, MyPages.Location);
                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 33, 166, 243),
                                  border:
                                      Border.all(color: Colors.red, width: 5),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                "Bus Number: ",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lato(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                            )),
                      ),
                  ],
                )),
            ],
          ),
        ));
  }
}
