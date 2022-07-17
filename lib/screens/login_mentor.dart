import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/screens/Mlogin_page.dart';

import '../constants/constant_color.dart';

class Mlogin extends StatefulWidget {
  @override
  _MloginState createState() => _MloginState();
}

class _MloginState extends State<Mlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(
            child:Padding(
                padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 20.0),
                child:Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                      Container(
                          width: 400,
                          height:400,
                          decoration: BoxDecoration(
                            image : DecorationImage(
                                image: AssetImage('assets/login.jpg'),
                                fit: BoxFit.fill
                            ),
                          )

                      ),
                      Container(
                          child:Align(
                              alignment: Alignment.topLeft,
                              child:Text('Welcome Back!!  👋', textAlign: TextAlign.left, style: TextStyle(
                                  color: Color.fromRGBO(7, 82, 100, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 26,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5909090909090908
                              ),))
                      ),
                      Container(
                        child: Text('I am so happy to see you. You can continue to login to manage your finance.', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(145, 145, 145, 1),
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.7857142857142858
                        ),),
                      ),
                      SizedBox(height: 20,),

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
                                Text('Login with Google',
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
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>MloginPage(),));
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
                                Text('Login with Email  ✉',
                                  textAlign: TextAlign.left, style: TextStyle(
                                      color: darkBlue,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1
                                  ),),
                                /* Container(
                            width: 30,
                            height:30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(42),
                              image : DecorationImage(
                                  image: AssetImage('assets/Googles.png'),
                                  fit: BoxFit.fill
                              ),
                            )

                        ),*/
                              ],
                            )
                        ),
                      ),
                      ),
                      SizedBox(height: 10.0,),
                      Container(
                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('Don’t have an account,', textAlign: TextAlign.center, style: TextStyle(
                                  color: darkBlue,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1
                              ),),
                              TextButton(
                                  onPressed: (){},
                                  child: Text('Create Now.',textAlign: TextAlign.center, style: TextStyle(
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

                    ]
                )
            )
        )
    );
  }
}