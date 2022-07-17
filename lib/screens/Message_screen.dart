import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant_color.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}



class _MessageScreenState extends State<MessageScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child:Scaffold(
            backgroundColor: Colors.white,
            body:DefaultTabController(
              length: 2,
              child:Scaffold(
                appBar: AppBar(
                  backgroundColor: darkBlue,
                  toolbarHeight: 80,
                  title: Text('Messages',textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w700,
                      height: 1.5 /*PERCENT not supported*/
                  ),),
                  bottom: TabBar(
                    indicatorColor: white,
                    indicatorWeight: 4,
                    tabs: [
                      Tab(text:'Message',),
                      Tab(text:'Requests'),
                    ],
                  ),

                ),
              )

            )
        )
    );

  }
}