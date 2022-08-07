import 'package:flutter/material.dart';
import 'package:salahkar/data.dart';
import 'package:salahkar/learner/Mentor_description.dart';
import 'package:salahkar/models/mentor_model.dart';
import 'package:google_fonts/google_fonts.dart';

class MentorListTile extends StatefulWidget {
  @override
  _MentorListTileState createState() => _MentorListTileState();
}

 class _MentorListTileState extends State<MentorListTile> {
  Widget _buildMentorListTileState(BuildContext context, int index) {

    Mentor mentor=MentorList[index];
    return GestureDetector(
      child:ListTile(
        leading: Container(
            width: 46,
            height:46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              image : DecorationImage(
                  image: AssetImage(mentor.DisplayImage),
                  fit: BoxFit.fill
              ),
            )
        ),
        title: Text(mentor.username,textAlign: TextAlign.left, style: GoogleFonts.poppins(
            color: Color.fromRGBO(16, 23, 41, 1),
            fontSize: 16,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.w600,
            height: 1.5 /*PERCENT not supported*/
        ),),
        subtitle: Text(mentor.exprtise,textAlign: TextAlign.left, style:
        GoogleFonts.poppins(
            color: Color.fromRGBO(160, 160, 160, 1),
            fontSize: 12,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.normal,
            height: 1.5 /*PERCENT not supported*/
        ),),
        trailing: Text("₹ " + mentor.vediocallrates.toString() + "/min",textAlign: TextAlign.right, style: TextStyle(
            color: Color.fromRGBO(16, 23, 41, 1),
            fontFamily: 'DM Sans',
            fontSize: 18,
            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.w600,
            height: 1.5 /*PERCENT not supported*/
        ),),
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MentorDescription(mentor: mentor, ),
            ),
          );
        },
      )

    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: MentorList.length,
        itemBuilder: (context, index) {
          return _buildMentorListTileState(context, index);
        },
      ),
    );
  }}