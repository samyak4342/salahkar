import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/constant_color.dart';

class VedioFormMeet extends StatefulWidget {
  const VedioFormMeet({Key? key}) : super(key: key);

  @override
  State<VedioFormMeet> createState() => _VedioFormMeetState();
}

class _VedioFormMeetState extends State<VedioFormMeet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: white,
           appBar:AppBar(
             elevation: 0,
             backgroundColor: white,
            leading: BackButton(),
            title: Text("Meet Form",style: GoogleFonts.poppins(
                color: Color.fromRGBO(0, 78, 100, 1),
                fontSize: 20,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.w600,
                height: 1
            ),)
          ),
          body: Padding(
            padding:EdgeInsets.all(20),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Mentor :",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(16, 23, 41, 1),
                  fontSize: 16,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w600,
                  height: 1
              ),),
              SizedBox(width: 10,),
              Text("Details :",style: GoogleFonts.poppins(
                  color: Color.fromRGBO(16, 23, 41, 1),
                  fontSize: 16,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w600,
                  height: 1
              ),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Meet Type :",style: GoogleFonts.poppins(
                      color: Color.fromRGBO(16, 23, 41, 1),
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.w600,
                      height: 1
                  ),),
                  Text('Video Meet', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(7, 82, 100, 1),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.7857142857142858
                  ),)
                ],
              ),
              SizedBox(height: 10,),
              TextField(
                maxLines: 1,
                //controller: aboutController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor:grey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(15)
                      ),
                      borderSide: BorderSide(
                          //color: darkBlue,
                          width: 1
                      )
                  ),
                  //labelText: 'Email Id',
                  hintText: 'Name*',
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                maxLines: 8,
                //controller: aboutController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor:grey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(15)
                      ),
                      borderSide: BorderSide(
                          color: darkBlue,
                          width: 1
                      )
                  ),
                  //labelText: 'Email Id',
                  hintText: 'Question*',
                ),
              ),
            ],
          ),
          ),

        ));
  }
}
