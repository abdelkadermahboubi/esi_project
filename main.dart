
import 'package:flutter/material.dart';
import 'package:drawer_swipe/drawer_swipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'personal stuff',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var drawerKey = GlobalKey<SwipeDrawerState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SwipeDrawer(
        radius: 20,
        key: drawerKey,
        bodyBackgroundPeekSize: 30,
        backgroundColor: Color(0xFFF0F1F7),
        // pass drawer widget
        drawer: buildDrawer(context),
        // pass body widget
        child: buildBody(),
      ),
    );
  }

  Widget buildDrawer(context) {
    return Container(
      margin: EdgeInsets.only(left: 20, top: 80),
      child: Column(
        children: [
          SizedBox(height: 60), //for an image
          ListTile(
            leading: Icon(
              Icons.calendar_today,
              color: Color(0xff26104A),
              size: 30,
            ),
            title: Text(
              'time table',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff26104A),
                  fontWeight: FontWeight.w400),
            ),
            onTap: () => null,
          ),

          ListTile(
            leading: Icon(
              Icons.map_outlined,
              color: Color(0xff26104A),
              size: 30,
            ),
            title: Text(
              'ESI map',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff26104A),
                  fontWeight: FontWeight.w400),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.access_time_sharp,
              color: Color(0xff26104A),
              size: 30,
            ),
            title: Text(
              'pomodoro',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff26104A),
                  fontWeight: FontWeight.w400),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
              color: Color(0xff26104A),
              size: 30,
            ),
            title: Text(
              'useful information',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff26104A),
                  fontWeight: FontWeight.w400),
            ),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Color(0xff26104A),
              size: 30,
            ),
            title: Text(
              'settings',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xff26104A),
                  fontWeight: FontWeight.w400),
            ),
            onTap: () => null,
          ),
          Material(
                borderRadius: BorderRadius.circular(500),
                child: InkWell(
                  borderRadius: BorderRadius.circular(500),
                  splashColor: Colors.black45,
                  onTap: () {
                    drawerKey.currentState.closeDrawer();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff26104A),
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
                ),
              ),
        ],
      ),
      
    );

  }

  Widget buildBody() {
    return Column(
      children: [
        // build your appBar abdechakor but keep that leading
        AppBar(
          title: Text('AppBar title'),
          leading: InkWell(
            //dont change it
            onTap: () {
              if (drawerKey.currentState.isOpened()) {
                drawerKey.currentState.closeDrawer();
              } else {
                drawerKey.currentState.openDrawer();
              }
            },
            child: Icon(Icons.menu),
          ),
        ),
        // build your home screen body abdechakor
        Expanded(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text('Home Screen'),
            ),
          ),
        ),
      ],
    );
  }
}
