import 'package:account_manager/Home_page.dart';
import 'package:account_manager/authantication/splash_password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main()
{

  runApp(Sizer(
      builder: (context, orientation, deviceType) {
      return MaterialApp(debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.deepPurple
          ),
          home : slash_password());
    }
  ),);

}

