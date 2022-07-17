import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/screens/Msignup_page.dart';

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
          mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child:Icon(Icons.arrow_back_ios_rounded),
              ),
              Flexible(
                flex: 3,
                  child:Container(
                  width: 400,
                  height:400,
                  decoration: BoxDecoration(
                    image : DecorationImage(
                        image: AssetImage('assets/signup1.png'),
                        fit: BoxFit.fill
                    ),
                  )

              ),
              ),
              Flexible(

                  child:Container(
                  child:Align(
                    alignment: Alignment.topLeft,
                      child:Text('Welcome  💛', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(7, 82, 100, 1),
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5909090909090908
                  ),))
              ),
              ),
              Flexible(
                flex: 2,
                  child:Container(
                child: Text('Create an account so that you can start your financial journey.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),),
              SizedBox(height: 15,),
              /*Container(
                  width: 310,
                  height: 81,

                  child: Stack(
                      children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 0,
                            child: Text('Welcome', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(7, 82, 100, 1),
                                fontFamily: 'Poppins',
                                fontSize: 26,
                                letterSpacing: 0 *//*percentages not used in flutter. defaulting to zero*//*,
                                fontWeight: FontWeight.bold,
                                height: 1
                            ),)
                        ),
                        Container(
                          width: 350,
                            child:Positioned(
                            top: 50,
                            left: 0,
                            child: Text('Create an account so that you can start your financial journey.', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(145, 145, 145, 1),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                letterSpacing: 0 *//*percentages not used in flutter. defaulting to zero*//*,
                                fontWeight: FontWeight.normal,
                                height: 1.7692307692307692
                            ),)
                        ),),
                            Positioned(
                            top: 2,
                            left: 116,
                            child: Text('💛', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(16, 23, 41, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 20,
                                letterSpacing: 0 *//*percentages not used in flutter. defaulting to zero*//*,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),)
                        ),
                      ]
                  )
              ),*/
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

    ]
    )
    )
        )
    );
  }
}