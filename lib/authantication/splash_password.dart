import 'package:account_manager/Home_page.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:sizer/sizer.dart';

class slash_password extends StatefulWidget {
  const slash_password({Key? key}) : super(key: key);

  @override
  State<slash_password> createState() => _slash_passwordState();
}

class _slash_passwordState extends State<slash_password> {
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

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
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return Home();
                          },));
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
                        height: 70,
                        child: TextField(
                          controller: password,
                        ),
                      )
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

  Widget pass_field() {
    return Container(
      margin: EdgeInsets.all(5),
      width: 50,
      height: 50,
      decoration: BoxDecoration(color: Colors.cyan, shape: BoxShape.circle),
    );
  }
}
