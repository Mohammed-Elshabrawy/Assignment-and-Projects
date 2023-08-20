import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Stack(

              children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                "https://img.freepik.com/premium-photo/natural-marble-pattern-background_1258-22160.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(120, 30, 120, 40),
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.network(
                    "https://scontent-hbe1-1.xx.fbcdn.net/v/t39.30808-6/295534355_1204822416918922_304107652964946904_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=zf6KJ1-jU_0AX9Gqmd0&_nc_ht=scontent-hbe1-1.xx&oh=00_AfDfCfZeug1rkhdHqDwclHrWBWBNEknvvdNBSshHvNVztg&oe=64E79B44"),
              ),
            ),
            Container(
              height: 10,
              width: 10,
              padding: EdgeInsets.fromLTRB(370, 0, 0, 0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add_rounded),
                color: Colors.white,
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(140, 190, 150, 50),
                child: Text(
                  "Hi ,Mohammed!",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(140, 220, 150, 50),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  strutStyle: const StrutStyle(),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "what do you want",
                      hintStyle: TextStyle(color: Colors.black),
                      prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                )),
            Container(
                padding: EdgeInsetsDirectional.fromSTEB(100, 500, 100, 100),
                height: 20,
                width: 20,
                child: Image.network(
                    "https://w7.pngwing.com/pngs/382/583/png-transparent-stethoscope-computer-icons-medicine-stetoskop-text-heart-smile-thumbnail.png"))
          ]),
        ),
      ),
    ),
  ));
}
