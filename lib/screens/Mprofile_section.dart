import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/screens/Mlogin_page.dart';
import 'package:salahkar/screens/Setting_page.dart';

import '../../constants/constant_color.dart';


class MprofileSection extends StatefulWidget {
  @override
  _MprofileSectionState createState() => _MprofileSectionState();
}

class _MprofileSectionState extends State<MprofileSection> {
  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController = TextEditingController();

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
                                      child:
                                      Container(
                                        padding: EdgeInsets.all(25),
                                        alignment: Alignment.topLeft,
                                        child:Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            width: 150,
                                        child:Row(
                                            children:[
                                          Flexible(

                                              child:IconButton(
                                                onPressed: (){},
                                                icon: Icon(Icons.arrow_back_ios,color: white,),
                                              ) ),
                                          Flexible(

                                            child:Text('Profile',style:TextStyle(
                                                fontFamily:'Poppins',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: white),),
                                          ),
                                          ]
                                          ),
                                          ),
                                          Container(

                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),
                                              color:white,
                                            ),
                                            child:IconButton(
                                              onPressed: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (_)=>SettingPage(),));
                                              },
                                              icon: Icon(Icons.settings,color: darkBlue,),
                                            )
                                          )
                                          ]
                                        )
                                      )
                                    )

                                ),
                                Positioned(
                                    top: 140,
                                    left: 20,
                                    right: 20,

                                            child:Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  color: white.withOpacity(0),
                                                ),
                                              child: Card(
                                                elevation: 6,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
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
                              child:SizedBox(height: 100,),
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