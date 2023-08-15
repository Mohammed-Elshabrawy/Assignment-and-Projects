import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        body: Padding(
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            height: 220,
            width: 220,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.network(
                  "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/295534355_1204822416918922_304107652964946904_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=be3454&_nc_ohc=s0eJDn_Bp-IAX8sUsO8&_nc_ht=scontent-hbe1-1.xx&oh=00_AfB6yRj4XYqrSVQ_2zsbs6KOjoHS00Yb31ltowWo1Cm7EQ&oe=64DFB244"),
            ),
          ),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Mohammed Elshabrawy",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          Container(padding: EdgeInsets.all(5), child: Text("@mohammed13545")),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("onsdds_45884 "),
                Icon(Icons.copy),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "9999 ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text("Followers"),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Edit Porfile")),
          Container(
              padding: EdgeInsets.all(5),
              child: Text(
                  "Mohammed Elshabrawy is a Computer Scincnse and Flutter Student")),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 20,
                  width: 20,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/733/733635.png")),
              Container(
                  height: 20,
                  width: 20,
                  child: Image.network(
                      "https://cdn3.iconfinder.com/data/icons/picons-social/57/46-facebook-512.png")),
              Container(
                  height: 20,
                  width: 20,
                  child: Image.network(
                      "https://cdn-icons-png.flaticon.com/512/1384/1384031.png")),
              Container(
                  height: 20,
                  width: 20,
                  child: Image.network(
                      "https://www.iconpacks.net/icons/1/free-linkedin-icon-112-thumb.png")),
            ],
          ),
          ElevatedButton(onPressed: () {}, child: Text("Joined may 2017")),
        ],
      ),
    )),
  ));
}

class FlatButton {}
