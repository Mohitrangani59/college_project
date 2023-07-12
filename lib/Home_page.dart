import 'package:account_manager/common/drawer.dart';
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
    var statusheight = MediaQuery
        .of(context)
        .viewPadding
        .top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbord"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: drawer(),
    );
  }
}

