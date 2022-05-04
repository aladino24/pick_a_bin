import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pick_a_bin/screen/list_contact.dart';
import 'package:pick_a_bin/screen/list_warga.dart';
import 'package:pick_a_bin/screen/petugas_page.dart';
import 'package:pick_a_bin/screen/profile.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.green,
      ),
      home: ProfilePage(),
    );
  }
}

