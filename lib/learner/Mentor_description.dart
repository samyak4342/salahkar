import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/models/mentor_model.dart';
import 'package:salahkar/screens/Setting_page.dart';

import '../../constants/constant_color.dart';


class MentorDescription extends StatefulWidget {
  final Mentor mentor;

  const MentorDescription({Key? key,required this.mentor }) : super(key: key);

  @override
  _MentorDescriptionState createState() => _MentorDescriptionState();
}

class _MentorDescriptionState extends State<MentorDescription> {
  @override
  Widget build(BuildContext context) {

    return  SafeArea(
        child:Scaffold(
            backgroundColor: Colors.white,
            body:SingleChildScrollView(
                child:Column(
                    children:[
                      Container(
                          child: Stack(
                              children: <Widget>[
                                Positioned(
                                  child: Container(
                                    height: 260,
                                    decoration: BoxDecoration(
                                      color: white,
                                    ),

                                  ),
                                ),
                                Positioned(
                                    child:Container(
                                        height: 190,
                                        decoration: BoxDecoration(
                                            color: darkBlue
                                        ),
                                        child:Column(
                                          children:[
                                        Container(
                                            padding: EdgeInsets.fromLTRB(25, 25, 25, 8),
                                            alignment: Alignment.topLeft,
                                            child:Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                BackButton(),
                                                  Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                        color:white,
                                                      ),
                                                      child:IconButton(
                                                        onPressed: (){
                                                          Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingPage(),));
                                                        },
                                                        icon: Icon(Icons.bookmark_border,color: darkBlue,),
                                                      )
                                                  )
                                                ]
                                            )
                                        ),
                                            Container(
                                              padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                                              child:Row(
                                                children: [
                                                Container(
                                                width: 54,
                                                height: 54,
                                                decoration: BoxDecoration(
                                                  image : DecorationImage(
                                                      image: AssetImage(widget.mentor.DisplayImage),
                                                      fit: BoxFit.fitWidth
                                                  ),
                                                  borderRadius : BorderRadius.all(Radius.elliptical(54, 54)),
                                                  color: white,
                                                )
                                                ),
                                                  SizedBox(width: 10,),
                                                  Expanded(
                                                    child:Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Text(widget.mentor.username, textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(255, 255, 255, 1),
                                                            fontFamily: 'Poppins',
                                                            fontSize: 18,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1.5 /*PERCENT not supported*/
                                                        ),),
                                                        Text(widget.mentor.exprtise, textAlign: TextAlign.left, style: TextStyle(
                                                            color: Color.fromRGBO(255, 255, 255, 1),
                                                            fontFamily: 'Poppins',
                                                            fontSize: 12,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.normal,
                                                            height: 1.5 /*PERCENT not supported*/
                                                        ),),
                                                      ],
                                                    )
                                                  )
                                                ],
                                              )
                                            )
                                        ]
                                        )
                                    )

                                ),
                                Positioned(
                                    top: 150,
                                    left: 20,
                                    right: 20,

                                    child:Container(
                                      height: 80,
                                      decoration: BoxDecoration(
                                        color: white.withOpacity(0),
                                      ),
                                      child: Card(
                                        elevation: 6,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child:Padding(
                                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                            child:Row(
                                          children:<Widget>[
                                            Expanded(
                                        child:SizedBox(
                                          height: 46,
                                              width: 150,
                                              child:ElevatedButton(
                                                onPressed: (){

                                                },
                                                  style:  ElevatedButton.styleFrom(
                                                      primary: darkBlue,
                                                      elevation: 5
                                                  ),
                                                child:Text('Message', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(255, 255, 255, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14,
                                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.5 /*PERCENT not supported*/
                                                ),)

                                              )
                                            )),
                                            SizedBox(width: 20,),
                                            Expanded(
                                                child:SizedBox(
                                                    height: 46,
                                                    width: 150,
                                                    child:ElevatedButton(
                                                        onPressed: (){
                                                          showModalBottomSheet<void>(
                                                              context: context,
                                                              shape: const RoundedRectangleBorder(
                                                                borderRadius: BorderRadius.vertical(
                                                                  top: Radius.circular(20.0),
                                                                ),
                                                              ),
                                                              isScrollControlled:true ,
                                                              builder: (context)=>
                                                                  SingleChildScrollView(
                                                                      child:Wrap(
                                                                          children: [
                                                                            Column(
                                                                              children: [
                                                                                Container(
                                                                                    padding:EdgeInsets.fromLTRB(10, 10, 10, 0),
                                                                                    child:Text('Meet Type', textAlign: TextAlign.left, style: TextStyle(
                                                                                        color: Color.fromRGBO(16, 23, 41, 1),
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 20,
                                                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        height: 1.5 /*PERCENT not supported*/
                                                                                    ),)),
                                                                                Container(
                                                                                  padding: EdgeInsets.all(40),
                                                                                  child: Row(
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    children: [
                                                                                      Column(
                                                                                    children:[
                                                                                      Container(
                                                                                        height:66,
                                                                                        width: 66,
                                                                                        child:Icon(Icons.video_call_rounded,color: darkBlue,),
                                                                                        decoration: BoxDecoration(
                                                                                            color: Color.fromRGBO(226, 242, 246, 1),
                                                                                            borderRadius: BorderRadius.circular(10)

                                                                                        ),
                                                                                      ),
                                                                                      Text('Vedio Meet')
                                                                                      ]
                                                                                      ),
                                                                                      Column(
                                                                                          children:[
                                                                                            Container(
                                                                                              height:66,
                                                                                              width: 66,
                                                                                              child:Icon(Icons.phone,color: darkBlue,),
                                                                                              decoration: BoxDecoration(
                                                                                                  color: Color.fromRGBO(226, 242, 246, 1),
                                                                                                  borderRadius: BorderRadius.circular(10)

                                                                                              ),
                                                                                            ),
                                                                                            Text('Call Meet')
                                                                                          ]
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ])));
                                                        },
                                                        style:  ElevatedButton.styleFrom(
                                                            primary: white,
                                                            side: BorderSide(width: 1.0, color:darkBlue,),
                                                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                                                            elevation: 5
                                                        ),
                                                        child:Text('Meet', textAlign: TextAlign.left, style: TextStyle(
                                                            color: darkBlue,
                                                            fontFamily: 'Poppins',
                                                            fontSize: 14,
                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight: FontWeight.w600,
                                                            height: 1.5 /*PERCENT not supported*/
                                                        ),)

                                                    )
                                                )),

                                          ]
                                        )
                                        )
                                      ),
                                    )
                                )
                              ]
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.all(20),
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('About :',style:TextStyle(
                                fontFamily:'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,),textAlign: TextAlign.left,),
                              Container(
                                child:Text(widget.mentor.description,style:TextStyle(
                                  fontFamily:'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,),textAlign: TextAlign.left,),
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    flex:1,
                                    child:Container(
                                        padding: EdgeInsets.fromLTRB(15, 15, 7, 15),
                                        height:250,
                                        //width: 210,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:Card(
                                            elevation: 6,
                                            color: white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(color: darkBlue, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child:Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(15),
                                                  child:Container(
                                                      width: 48,
                                                      height: 48,
                                                      padding: EdgeInsets.all(3),
                                                      child:Image.asset('assets/exp5.png'),
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(10),
                                                        // border: Border.all(color: Color.fromRGBO(164, 164, 164, 1),width: 1)
                                                      )
                                                  ),),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                                  child:Align(
                                                    alignment: Alignment.topLeft,
                                                    child:Text('Blogs', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 78, 100, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 22,
                                                        letterSpacing: 0,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1
                                                    ),),),),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text('Read blogs of your mentor and learn new things', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(160, 160, 160, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.5 ,
                                                  )),
                                                ),

                                              ],
                                            )
                                        )
                                    ),
                                  ),
                                  Flexible(
                                    flex:1,
                                    child:Container(
                                        padding: EdgeInsets.fromLTRB(15, 15, 7, 15),
                                        height:250,
                                        //width: 210,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:Card(
                                            elevation: 6,
                                            color: white,
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(color: darkBlue, width: 1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child:Column(
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.all(15),
                                                    child:Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children:[
                                                          Container(
                                                              width: 48,
                                                              height: 48,
                                                              padding: EdgeInsets.all(3),
                                                              child:Image.asset('assets/exp5.png'),
                                                              decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.circular(10),
                                                                // border: Border.all(color: Color.fromRGBO(164, 164, 164, 1),width: 1)
                                                              )
                                                          ),
                                                          IconButton(onPressed: (){},
                                                              icon: Icon(Icons.add_circle,color: darkBlue,size: 30,))
                                                        ])),
                                                Padding(
                                                  padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                                                  child:Align(
                                                    alignment: Alignment.topLeft,
                                                    child:Text('Reviews', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 78, 100, 1),
                                                        fontFamily: 'Poppins',
                                                        fontSize: 22,
                                                        letterSpacing: 0,
                                                        fontWeight: FontWeight.w700,
                                                        height: 1
                                                    ),),),),
                                                Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Text('Check out what others say about the mentor.', textAlign: TextAlign.left, style: TextStyle(
                                                    color: Color.fromRGBO(160, 160, 160, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 16,
                                                    letterSpacing: 0,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1.5 ,
                                                  )),
                                                ),

                                              ],
                                            )
                                        )
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                      )
                    ]
                )
            )
        )
    );

  }
}