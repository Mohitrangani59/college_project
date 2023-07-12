import 'package:account_manager/constant/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget drawer() {
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
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18)),
                          5.heightBox,
                          Text("Debit(-)",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18)),
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
          drawer_list(Icon(Icons.home),"Home"),
          drawer_list(Icon(Icons.backup),"Backup"),
          drawer_list(Icon(Icons.restore),"Restore"),
          drawer_list(Icon(Icons.currency_exchange),"Change currency"),
          drawer_list(Icon(Icons.change_circle_outlined),"Change password"),
          drawer_list(Icon(Icons.security),"Change security question"),
          drawer_list(Icon(Icons.settings),"Settings"),
          drawer_list(Icon(Icons.share),"Share app"),
          drawer_list(Icon(Icons.star),"Rate app"),
          drawer_list(Icon(Icons.privacy_tip_outlined),"Parivacy policy"),
        ],
      ),
    ),
  );
}
Widget drawer_list(Icon drawer_icon, String name) {
  return InkWell(onTap: () {

  },
    child: ListTile(
      leading: drawer_icon,
      title: Text("$name"),
    ),
  );
}

