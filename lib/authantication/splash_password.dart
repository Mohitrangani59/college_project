import 'dart:async';

import 'package:account_manager/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class slash_password extends StatefulWidget {
  const slash_password({Key? key}) : super(key: key);

  @override
  State<slash_password> createState() => _slash_passwordState();
}

class _slash_passwordState extends State<slash_password> {
  TextEditingController password = TextEditingController();
  // var data = Hive.box('password');

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.deepPurple,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30.h - statusBarHeight,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Account Manager",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
                    Center(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Home();
                            },
                          ));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 40.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 7.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Digit_holder(),
                            Digit_holder(),
                            Digit_holder(),
                            Digit_holder(),
                          ],
                        ),
                      ),
                      10.heightBox,
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:
                            [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  pass_field("1"),
                                  pass_field("2"),
                                  pass_field("3"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  pass_field("4"),
                                  pass_field("5"),
                                  pass_field("6"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  pass_field("7"),
                                  pass_field("8"),
                                  pass_field("9"),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  pass_field(null,Icon(Icons.arrow_back_outlined,color: Colors.deepPurple,)),
                                  pass_field("0"),
                                  pass_field(null,Icon(Icons.done,color: Colors.deepPurple,)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 30.h,
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget pass_field([String? s,Icon ?i]) {
    return InkWell(onTap: () {

    },
      child: Container(
        height: 60,
        width: 60,
        alignment: Alignment.center,
        child: (s!=null)?Text(
          s!,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ):i!,
      ),
    );
  }
}

class Digit_holder extends StatelessWidget {
  const Digit_holder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.deepOrange),
    );
  }
}

