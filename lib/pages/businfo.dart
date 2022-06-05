import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:locationapp/pagerouts/MyPages.dart';

class BusInfo extends StatefulWidget {
  const BusInfo({Key? key}) : super(key: key);

  @override
  State<BusInfo> createState() => _BusInfoState();
}

class _BusInfoState extends State<BusInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.numbers),
                  hintText: 'last four Digits Of Bus No.',
                  labelText: 'Bus Number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.route),
                  hintText: 'Bus Route name',
                  labelText: 'Bus Route'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.call),
                  hintText: 'Bus Conductor Number',
                  labelText: 'Conductor Number'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'Coordinator Name',
                  labelText: 'Coordinator'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                  icon: Icon(Icons.bus_alert_outlined),
                  hintText: 'Bus Stop  Names',
                  labelText: 'Bus Stops'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, MyPages.Home);
              },
              child: Text('Continue',
                  style: GoogleFonts.lato(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
