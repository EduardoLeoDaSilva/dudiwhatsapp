import 'package:dudiwhatsapp/pages/homepage.dart';
import 'package:dudiwhatsapp/services/getI-service.dart';
import 'package:flutter/material.dart';

Future main(List<String> args) async{
// WidgetsFlutterBinding.ensureInitialized();

// await Firebase.initializeApp();

GetIService().setup();

  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}
