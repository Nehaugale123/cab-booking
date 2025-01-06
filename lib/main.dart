import 'package:cab_booking_app/widgets/addmoneyscreen.dart';
import 'package:cab_booking_app/widgets/availabletaxiscreen.dart';
import 'package:cab_booking_app/widgets/bookingscreen.dart';
import 'package:cab_booking_app/widgets/carddetailscreen.dart';
import 'package:cab_booking_app/widgets/createpassword_screen.dart';
import 'package:cab_booking_app/widgets/destinationscreen.dart';
import 'package:cab_booking_app/widgets/driverfoundscreen.dart';
import 'package:cab_booking_app/widgets/forgetpassword_screen.dart';
import 'package:cab_booking_app/widgets/login_screen.dart';
import 'package:cab_booking_app/widgets/map_screen.dart';
import 'package:cab_booking_app/widgets/myaccountscreen.dart';
import 'package:cab_booking_app/widgets/mybookingoage.dart';
import 'package:cab_booking_app/widgets/notificationscreen.dart';
import 'package:cab_booking_app/widgets/passwordchange_screen.dart';
import 'package:cab_booking_app/widgets/paymentdone_screen.dart';
import 'package:cab_booking_app/widgets/paymentmethod.dart';
import 'package:cab_booking_app/widgets/peoplenamescren.dart';
import 'package:cab_booking_app/widgets/promocode_screen.dart';
import 'package:cab_booking_app/widgets/ridingbook_screen.dart';
import 'package:cab_booking_app/widgets/setdestination_screen.dart';
import 'package:cab_booking_app/widgets/sign_up_screen.dart';
import 'package:cab_booking_app/widgets/splash_screen.dart';
import 'package:cab_booking_app/widgets/verify_email_screen.dart';
import 'package:cab_booking_app/widgets/walletscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Riderbook()
      ,
    );
  }
}

