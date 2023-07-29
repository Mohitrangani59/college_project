import 'package:account_manager/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:currency_picker/currency_picker.dart';

Widget drawer(BuildContext context) {
  String g_val = r"$";
  List currency = [
    r"$",
    "€",
    "£",
    "¥",
    "CHF",
    r"AU$",
    r"CA$",
    "¥",
    "₹",
    "₽",
    "₩",
    r"R$",
    r"Mex$",
    "R",
    "₪",
    "₺",
    "kr",
    "kr",
    r"NZ$",
    r"S$",
    r"HK$",
    "RM",
    "Rp",
    "E£",
    "₦",
    "KSh",
    r"$",
    r"CL$",
    r"COL$",
  ];
  List country = [
    "United States",
    "European",
    "United Kingdom",
    "Japan",
    "Switzerland",
    "Australia",
    "Canada",
    "China",
    "India",
    "Russia",
    "South",
    "Brazil",
    "Mexico",
    "South Africa",
    "Israel",
    "Turkey",
    "Sweden",
    "Norway",
    "New Zealand",
    "Singapore",
    "Hong Kong",
    "Malaysia",
    "Indonesia",
    "Egypt",
    "Nigeria",
    "Kenya",
    "Argentina	 Peso",
    "Chile	Chilean",
    "Colombia",
  ];

  return Drawer(
    width: 300,
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              width: double.infinity,
              height: 310,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(sideimage))),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: [
                  // statusheight.heightBox,
                  Container(
                    width: 90,
                    height: 90,
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.white,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          5.heightBox,
                          Text("Credit(+)",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          5.heightBox,
                          Text("Debit(-)",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18)),
                          Divider(
                            thickness: 2,
                            color: Colors.white,
                          ),
                          Text("Balance",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )
                ]),
              )),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 270,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.deepPurple,
                            alignment: Alignment.center,
                            child: Text(
                              "BACKUP",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              style: TextStyle(color: Colors.deepOrange),
                              decoration: InputDecoration(
                                  fillColor: Colors.deepPurple,
                                  labelText: "Backup name",
                                  labelStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          10.heightBox,
                          Text(
                              "Back up your account data so if you lose your phone or switch to a new one, you account data is safe. You can restire your account data when you reinstall Account Manager App",
                              style: TextStyle(color: Colors.grey)),
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
                                      Navigator.pop(context);
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
                                    child: Text("BACKUP")),
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
            child: ListTile(
              title: Text("Backup"),
              leading: Icon(Icons.backup),
            ),
          ),
          ListTile(
            title: Text("Restore"),
            leading: Icon(Icons.restore),
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: double.infinity,
                              color: Colors.deepPurple,
                              alignment: Alignment.center,
                              child: Text(
                                "Select currency",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: double.infinity,
                              alignment: Alignment.center,
                            ),
                            Expanded(
                              child: Container(
                                  width: double.infinity,
                                  child: ListView.builder(
                                    itemCount: 27,
                                    itemBuilder: (context, index) {
                                      print("outside : $g_val");
                                      return RadioListTile(
                                        title: Text(country[index]),
                                        subtitle: Text(currency[index]),
                                        groupValue: g_val,
                                        value: currency[index],
                                        onChanged: (value) {
                                          g_val = value.toString();
                                          print("inside : $g_val");
                                        },
                                      );
                                    },
                                  )),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: ListTile(
                title: Text("Change currency"),
                leading: Icon(Icons.currency_exchange),
              )),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    child: Container(
                      height: 270,
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            color: Colors.deepPurple,
                            alignment: Alignment.center,
                            child: Text(
                              "Change password",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: Colors.deepOrange),
                              decoration: InputDecoration(
                                  fillColor: Colors.deepPurple,
                                  labelText: "Current password",
                                  labelStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              obscureText: true,
                              style: TextStyle(color: Colors.deepOrange),
                              decoration: InputDecoration(
                                  fillColor: Colors.deepPurple,
                                  labelText: "New password",
                                  labelStyle: TextStyle(color: Colors.grey)),
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
                                      Navigator.pop(context);
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
                                    child: Text("SET")),
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
            child: ListTile(
              title: Text("Change password"),
              leading: Icon(Icons.change_circle_outlined),
            ),
          ),
          ListTile(
            title: Text("Change security question"),
            leading: Icon(Icons.security),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return setting_page();
                },
              ));
            },
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
          ),
          ListTile(
            title: Text("Share app"),
            leading: Icon(Icons.share),
          ),
          ListTile(
            title: Text("Parivacy policy"),
            leading: Icon(Icons.privacy_tip_outlined),
          ),
        ],
      ),
    ),
  );
}

class setting_page extends StatefulWidget {
  const setting_page({Key? key}) : super(key: key);

  @override
  State<setting_page> createState() => _setting_pageState();
}

class _setting_pageState extends State<setting_page> {
  bool s1_val=false;
  bool s2_val=false;
  bool s3_val=false;
  bool s4_val=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color.fromARGB(222, 225, 225, 225),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Chronological Sorting",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19))),
                      Switch(value: s1_val, onChanged: (value) {
                        s1_val=value as bool;
                      },)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color.fromARGB(222, 225, 225, 225),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Vibration on Login Screen",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19))),
                      Switch(value: s2_val, onChanged: (value) {
                        s2_val=value as bool;
                      },)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color.fromARGB(222, 225, 225, 225),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Backup Reminder",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19))),
                      Switch(value: s3_val, onChanged: (value) {
                        s3_val=value as bool;
                      },)
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 70,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Color.fromARGB(222, 225, 225, 225),
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("Unlock with Fingerprint",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 19))),
                      Switch(value: s4_val, onChanged: (value) {
                        s4_val=value as bool;
                        setState(() {

                        });
                      },)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
