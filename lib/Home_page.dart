import 'package:account_manager/common/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var statusheight = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashbord"),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.deepPurpleAccent,
        ),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
        ],
      ),
      drawer: drawer(),
      body: Column(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
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
                          style: TextStyle(color: Colors.deepOrange),
                          decoration: InputDecoration(
                            hintText: "Account name",
                            labelText: "Account name",
                            labelStyle: TextStyle(color: Colors.deepOrange)
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          5.widthBox,
                          Expanded(
                              child: SizedBox(
                                height: 40,
                                child: ElevatedButton(
                                    onPressed: () {},
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
                                    onPressed: () {}, style: ButtonStyle(
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
                                                color: Colors.deepPurple)))), child: Text("SAVE")),
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
