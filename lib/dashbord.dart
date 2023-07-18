import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class Dashbord extends StatefulWidget {
  const Dashbord({Key? key}) : super(key: key);

  @override
  State<Dashbord> createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  String rval = "credit";
  int cnt = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Xyz"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent,
        ),
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: 350,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              alignment: Alignment.center,
                              width: double.infinity,
                              color: Colors.deepPurple,
                              child: Text("Add transaction",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Transaction Date",
                                    fillColor: Colors.deepPurple),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Row(
                                children: [
                                  Text(
                                    "Transaction type :",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.grey),
                                  ),
                                  Radio(
                                    value: "credit",
                                    groupValue: rval,
                                    onChanged: (value) {
                                      rval = value.toString();
                                      setState(() {});
                                    },
                                  ),
                                  Text("Credit(+)"),
                                  Radio(
                                    value: "debit",
                                    groupValue: rval,
                                    onChanged: (value) {
                                      rval = value.toString();
                                      setState(() {});
                                    },
                                  ),
                                  Text("Debit(-)"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Amount",
                                    fillColor: Colors.deepPurple),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Particular",
                                    fillColor: Colors.deepPurple),
                              ),
                            ),
                            15.heightBox,
                            Row(
                              children: [
                                5.widthBox,
                                Expanded(
                                    child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.deepPurple),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  side: BorderSide(
                                                      color:
                                                          Colors.deepPurple)))),
                                      child: Text("CANCEL")),
                                )),
                                5.widthBox,
                                Expanded(
                                    child: SizedBox(
                                  height: 40,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        cnt++;
                                        setState(() {});
                                      },
                                      style: ButtonStyle(
                                          foregroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.white),
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.deepPurple),
                                          shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  side: BorderSide(
                                                      color:
                                                          Colors.deepPurple)))),
                                      child: Text("ADD")),
                                )),
                                5.widthBox,
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              icon: Icon(Icons.file_open)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(222, 243, 243, 243),
        child: Column(
          children: [
            Expanded(
              child: Container(),
            ),
            Container(
              width: double.infinity,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2,
                        spreadRadius: 1,
                        offset: Offset(0, 1))
                  ],
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text("Credit(+)",style: TextStyle(fontSize: 16),))),
                        Expanded(
                            child: Container(child: Text("0",style: TextStyle(fontSize: 16),))),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text("Debit(-)",style: TextStyle(fontSize: 16),))),
                        Expanded(
                            child: Container(child: Text("0",style: TextStyle(fontSize: 16),))),
                      ],
                    ),
                  )),
                  Expanded(
                      child: Container(
                        color: Colors.deepPurple,
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Balance",
                                  style: TextStyle(fontSize: 16,
                                      color: Colors.white),
                                ))),
                        Expanded(
                            child: Container(
                                child: Text(
                                  "0",
                                  style: TextStyle(fontSize: 16,color: Colors.white),
                                ))),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            5.heightBox
          ],
        ),
      ),
    );
  }
}
