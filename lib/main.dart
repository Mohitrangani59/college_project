import 'dart:io';

import 'package:account_manager/Home_page.dart';
import 'package:account_manager/authantication/splash_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';


void main(){
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



