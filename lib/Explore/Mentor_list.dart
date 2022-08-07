import 'package:flutter/material.dart';
import 'package:salahkar/constants/constant_color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salahkar/learner/Mentor_listtile.dart';

class MentorList extends StatefulWidget {
  @override
  _MentorListState createState() => _MentorListState();
}

class _MentorListState extends State<MentorList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:DefaultTabController(
            length: 4,
            child:Scaffold(
              appBar: AppBar(
                backgroundColor: white,
                toolbarHeight: 80,
                leading: BackButton(),
                title: Text('Mentor',textAlign: TextAlign.left, style: GoogleFonts.poppins(
                    color: darkBlue,
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.w600,
                    height: 1.5 /*PERCENT not supported*/
                ),),
                bottom: TabBar(
                  indicatorColor: darkBlue,
                  indicatorWeight: 4,
                  labelColor: darkBlue,
                  labelStyle: GoogleFonts.poppins(
                    color: darkBlue,
                    fontWeight: FontWeight.w400
                  ),
                  isScrollable: true,
                  tabs: [
                    Tab(text:'Stock Market',),
                    Tab(text:'Income Tax'),
                    Tab(text:'Gst'),
                    Tab(text:'Others'),
                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  MentorListTile(),
                  Icon(Icons.music_note),
                  Icon(Icons.music_video),
                  Icon(Icons.camera_alt),
                ],
              ),
            )

        )
    );
  }
}