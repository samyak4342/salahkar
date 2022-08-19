import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/screens/Msignup_page.dart';

import '../constants/Text_styles.dart';
import '../constants/constant_color.dart';
import 'login_mentor.dart';

class MsignUp extends StatefulWidget {
  @override
  _MsignUpState createState() => _MsignUpState();
}

class _MsignUpState extends State<MsignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
        child:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 20.0),
         child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child:IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios,color:Colors.black),
                    ),
                  ),
                  SizedBox(height: 30.0,),
                 Container(
                      width: 400,
                      height:MediaQuery.of(context).size.height * 0.4,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/signup1.png'),
                            fit: BoxFit.fill
                        ),
                      )

                  ),
                  Container(
                      child:Align(
                          alignment: Alignment.topLeft,
                          child:Text('Welcome  💛', textAlign: TextAlign.left, style: Heading1,))
                  ),
                  Container(
                    child: Text('Create an account so that you can start your financial journey.', textAlign: TextAlign.left, style: NormalText1,),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 310,
                    height: 54,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(7, 82, 100, 1),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Sign up with Google',
                              textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1
                              ),),
                            SizedBox(width: 10,),
                            Container(
                                width: 30,
                                height:30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(42),
                                  image : DecorationImage(
                                      image: AssetImage('assets/Googles.png'),
                                      fit: BoxFit.fill
                                  ),
                                )

                            ),
                          ],
                        )
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MsignupPage(),));
                    },
                    child:Container(
                      width: 310,
                      height: 54,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: darkBlue),
                      ),
                      child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Sign up with Email  ✉',
                                textAlign: TextAlign.left, style: TextStyle(
                                    color: darkBlue,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                            ],
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 7.0,),
                  Container(
                    child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('Already have a account,', textAlign: TextAlign.center, style: TextStyle(
                              color: darkBlue,
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1
                          ),),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=>Mlogin(),));
                              },
                              child: Text('Login',textAlign: TextAlign.center, style: TextStyle(
                                  color: lightBlue,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1)
                              ))
                        ]
                    ),
                  )
                ],
              )


    ]
    )
    )
        )
    );
  }
}