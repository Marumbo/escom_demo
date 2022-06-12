
import 'package:escom_demo/pages/inbox.dart';
import 'package:escom_demo/pages/reportFault.dart';
import 'package:escom_demo/pages/token.dart';
import 'package:escom_demo/pages/usage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      home : DefaultTabController(
        length : 4,
        child : Scaffold(
          /* End AppBar. */
          body : TabBarView(
            children : [
              Usage(),
              ReportFault(),
              Token(),
              Inbox()
            ] /* End TabBarView.children. */
          ),

          bottomNavigationBar: 
          Container(
            color: Colors.blue,
            child:
              TabBar(
              tabs : [
                Tab(icon : Icon(Icons.history), text : "Usage"),
                Tab(icon : Icon(Icons.note), text : "Report"),
                Tab(icon : Icon(Icons.payment), text : "Buy token"),
                Tab(icon : Icon(Icons.mail_outline), text : "Inbox")
              ] /* End TabBar.tabs. */
            ) 
          )
           /* End TabBarView. */
        ) /* End Scaffold. */
      ) /* End DefaultTabController. */
    );
  }
}