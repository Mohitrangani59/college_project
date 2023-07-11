import 'package:account_manager/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Dashbord"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        width: 300,
        child: Column(
          children: [
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.fill,image: AssetImage(sideimage))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
