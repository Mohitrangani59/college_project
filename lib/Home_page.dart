import 'package:account_manager/common/drawer.dart';
import 'package:account_manager/dashbord.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static SharedPreferences? pref;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cnt = 0;
  TextEditingController name = TextEditingController();
  Map account = Map();
  String ac_name = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    get_pref();
  }

  get_pref() async {
    Home.pref = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    var statusheight = MediaQuery.of(context).viewPadding.top;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbord"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      drawer: drawer(),
      body: ListView.builder(
        itemCount: cnt,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Dashbord();
                  },
                ));
              },
              child: Container(
                width: double.infinity,
                height: 150,
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
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Container(
                                width: width*0.65,
                                height: double.infinity,
                                child: Text(
                                  "Xyz",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: double.infinity,
                              alignment: Alignment.centerRight,
                              child: Wrap(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.edit_calendar_outlined,
                                        color: Colors.deepPurple,
                                      )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.delete_outline,
                                          color: Colors.deepPurple))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(222, 243, 243, 243),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              child: Text("Credit(+)",style: TextStyle(fontSize: 16),))),
                                      Expanded(
                                          child: Container(child: Text("0",style: TextStyle(fontSize: 16),))),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(222, 218, 218, 218),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              alignment: Alignment.center,
                                              child: Text("Debit(-)",style: TextStyle(fontSize: 16),))),
                                      Expanded(
                                          child: Container(child: Text("0",style: TextStyle(fontSize: 16),))),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                  child: Container(
                height: 200,
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      width: double.infinity,
                      color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: Text(
                        "Add new account",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: name,
                        style: TextStyle(color: Colors.deepOrange),
                        decoration: InputDecoration(
                            fillColor: Colors.deepPurple,
                            labelText: "Account name",
                            labelStyle: TextStyle(color: Colors.deepOrange)),
                      ),
                    ),
                    10.heightBox,
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
                                              color: Colors.deepPurple)))),
                              child: Text("CANCEL")),
                        )),
                        5.widthBox,
                        Expanded(
                            child: SizedBox(
                          height: 40,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
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
                                              color: Colors.deepPurple)))),
                              child: Text("SAVE")),
                        )),
                        5.widthBox,
                      ],
                    )
                  ],
                ),
              ));
            },
          );
        },
        child: Icon(Icons.add_to_photos_outlined),
      ),
    );
  }
}
