import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant_color.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}
class _SettingPageState extends State<SettingPage> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
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
                                    height: 300,
                                    decoration: BoxDecoration(
                                      color: white,
                                    ),

                                  ),
                                ),
                                Positioned(
                                    child:Container(
                                        height: 200,
                                        decoration: BoxDecoration(
                                            color: darkBlue
                                        ),
                                        child:Container(
                                            padding: EdgeInsets.all(25),
                                            alignment: Alignment.topLeft,
                                            child:Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Container(
                                                    width: 170,
                                                    child:Row(
                                                        children:[
                                                          Flexible(

                                                              child:IconButton(
                                                                onPressed: (){},
                                                                icon: Icon(Icons.arrow_back_ios,color: white,),
                                                              ) ),
                                                          Flexible(
                                                            child:Text('Settings',style:TextStyle(
                                                                fontFamily:'Poppins',
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 20,
                                                                color: white),),
                                                          ),
                                                        ]
                                                    ),
                                                  ),
                                                ]
                                            )
                                        )

                                    )

                                ),
                                Positioned(
                                    top: 100,
                                    left: 20,
                                    right: 20,
                                    child:Container(
                                      height: 150,
                                      decoration: BoxDecoration(
                                        color: white.withOpacity(0),
                                      ),
                                      child:Card(
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
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.notifications_rounded,color: darkBlue,)
                        ),
                        title: Text('Notifications', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing:IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)) ,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.person_sharp,color: darkBlue,)
                        ),
                        title: Text('Account Settings', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.switch_account,color: darkBlue,)
                        ),
                        title: Text('Switch Account', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.keyboard_voice,color: darkBlue,)
                        ),
                        title: Text('Language Settings', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.account_balance_wallet,color: darkBlue,)
                        ),
                        title: Text('Payment Settings', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)),
                      ),
                      ListTile(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(226, 242, 246, 1),
                            ),
                            child:Icon(Icons.headset,color: darkBlue,)
                        ),
                        title: Text('Customer Support', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(7, 82, 100, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        trailing: IconButton(
                            onPressed: (){},
                            icon:Icon(Icons.arrow_forward_ios,color: darkBlue,size: 20,)),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        leading: Container(
                            width: 42,
                            height: 42,
                            decoration: BoxDecoration(
                              borderRadius : BorderRadius.circular(10.0),
                              color : Color.fromRGBO(255, 227, 227, 1),
                            ),
                            child:Icon(Icons.logout,color: Colors.red,)
                        ),
                        title: Text('Logout', textAlign: TextAlign.left, style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                      ),
                      Padding(
                          padding:EdgeInsets.all(20),
                          child:Container(
                              height:250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color:Color.fromRGBO(226, 242, 246, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:Row(
                                children: [
                                  Flexible(
                                    flex:3,
                                    child:Padding(
                                        padding:EdgeInsets.all(20),
                                        child:Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex:1,
                                              child:Text('Refer and Earn', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(7, 82, 100, 1),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 24,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1 /*PERCENT not supported*/
                                              ),),),
                                            Flexible(
                                              flex: 2,
                                              child:Container(
                                                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                                  width: 200,
                                                  child:Text('Refer about salahkar to your friends and family and earn Rs. 100 on every sign up from your given link. ', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(136, 136, 136, 1),
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.bold,
                                                      height: 1.75 /*PERCENT not supported*/
                                                  ),)
                                              ),),
                                            SizedBox(height: 10,),
                                            Flexible(
                                                flex: 1,
                                                child:SizedBox(
                                                    width: 100,
                                                    height: 40,
                                                    child:ElevatedButton(
                                                        onPressed: (){},
                                                        style:  ElevatedButton.styleFrom(
                                                            primary: darkBlue,
                                                            elevation: 5
                                                        ),

                                                        child:Text('Invite',textAlign: TextAlign.left, style: TextStyle(
                                                          color: white,
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.bold,
                                                        )
                                                        )
                                                    )
                                                )
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                  Expanded(
                                      flex:2,
                                      child:Container(
                                        padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                                        child:Image.asset('assets/RNE.png'),
                                      )
                                  )
                                ],
                              )
                          )
                      ),
                    ]
                )
            )
        )
    );

  }
}
