import 'package:account_manager/common/drawer.dart';
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
  TextEditingController name=TextEditingController();
  Map account=Map();

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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(222, 222, 222, 222),
        child: ListView.builder(itemCount: cnt,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                  )
                ], borderRadius: BorderRadius.circular(5)),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return SimpleDialog(
                children: [
                  Column(
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
                              hintText: "Account name",
                              labelText: "Account name",
                              labelStyle: TextStyle(color: Colors.deepOrange)),
                        ),
                      ),
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
                  )
                ],
              );
            },
          );
        },
        child: Icon(Icons.add_to_photos_outlined),
      ),
    );
  }
}
