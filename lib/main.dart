import 'package:flutter/material.dart';
import 'package:locationapp/pagerouts/MyPages.dart';
import 'package:locationapp/pages/businfo.dart';
import 'package:locationapp/pages/homepage.dart';
import 'package:locationapp/pages/location.dart';
import 'package:locationapp/pages/loginpage.dart';
import 'package:locationapp/pages/stafflogin.dart';
import 'package:locationapp/pages/start.dart';
import 'package:locationapp/signup/admin.dart';
import 'package:locationapp/signup/signup.dart';

void main(List<String> args) {
  runApp(const BusLocation());
}

class BusLocation extends StatefulWidget {
  const BusLocation({Key? key}) : super(key: key);

  @override
  State<BusLocation> createState() => _BusLocationState();
}

class _BusLocationState extends State<BusLocation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        initialRoute: '/start',
        routes: {
          MyPages.Start: (context) => const Start(),
          MyPages.Home: ((context) => const Home()),
          MyPages.Login: ((context) => const Login()),
          MyPages.Location: ((context) => const Location()),
          MyPages.SignUp: ((context) => const SignUp()),
          MyPages.AdminSignUp: (((context) => const AdminSignUp())),
          MyPages.StaffSignUp: (((context) => const StaffSignUp())),
          MyPages.BusInfo: (((context) => const BusInfo())),
        });
  }
}
