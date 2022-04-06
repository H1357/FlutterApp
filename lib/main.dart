

import 'package:flutter/material.dart';
import 'package:mydapp/pages/list_in_page.dart';
import 'package:mydapp/pages/list_out_page.dart';
import 'package:mydapp/pages/main_page.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.deepPurpleAccent,
    ),
    initialRoute: '/', //main page
    routes: { //other pages
      '/': (context) => MainScreen(),
      '/to_list_in': (context) => ListInClass(),
      '/to_list_out': (context) => ListOutClass(),
    },
  ));
}

