import 'dart:io';

import 'package:account_manager/Home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(Sizer(
            builder: (context, orientation, deviceType) {
              return MaterialApp(debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                      primarySwatch: Colors.deepPurple
                  ),
                  home: Home());
            }
        ),);
}

  // Future<void> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
  //   Hive.init(appDocumentsDir.path);
  //   Hive.registerAdapter(myclassAdapter());
  //   var box = await Hive.openBox('acmanage');
  //
  //   runApp(Sizer(
  //       builder: (context, orientation, deviceType) {
  //         return MaterialApp(debugShowCheckedModeBanner: false,
  //             theme: ThemeData(
  //                 primarySwatch: Colors.deepPurple
  //             ),
  //             home: Home());
  //       }
  //   ),);
  // }



