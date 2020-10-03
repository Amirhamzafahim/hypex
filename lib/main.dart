import 'package:flutter/material.dart';
import 'package:hypex/airport.dart';
import 'package:hypex/cellphone.dart';
import 'package:hypex/confrimscreen.dart';
import 'package:hypex/congratulations.dart';
import 'package:hypex/marketplace%20_list.dart';
import 'package:hypex/quarnlist.dart';
import 'package:hypex/sellpage.dart';
import 'package:hypex/sign_in.dart';
import 'package:hypex/signup.dart';

import 'purchase_details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
    
      home: Airport(),
    );
  }
}

