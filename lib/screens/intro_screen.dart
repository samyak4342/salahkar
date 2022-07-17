import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/learner/login_learner.dart';
import 'package:salahkar/screens/signup_mentor.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body:SafeArea(
        child:Padding(
        padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 20.0),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Flexible(
              flex: 3,
             fit: FlexFit.tight,
             child:Container(
                width: double.infinity,
                height:430,
                decoration: BoxDecoration(
                  image : DecorationImage(
                      image: AssetImage('assets/intro1.jpg'),
                      fit: BoxFit.fill
                  ),
                )
             ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
                child:Container(
                child:Text('How would you like to join Salahkar ?', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(7, 82, 100, 1),
                    fontFamily: 'Poppins',
                    fontSize: 26,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1.5909090909090908
                ),)
            ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
                child:Container(
              child: Text('Join us in the journey of making everyone financally free and help them in achieving their goals.', textAlign: TextAlign.left, style: TextStyle(
                  color: Color.fromRGBO(145, 145, 145, 1),
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.7857142857142858
              ),),
            ),),
            SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex:1,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>MsignUp(),));
                    },
                    child:Container(
                      width: 145,
                      height: 50,
                      child: Center(child:Text('Teacher 👨', textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:Border.all(color: Color.fromRGBO(7, 82, 100, 1)),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex:1,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LearnerLoginPage(),));
                    },
                    child:Container(
                      width: 145,
                      height: 50,
                      child: Center(child:Text('Learner 👶', textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:Border.all(color: Color.fromRGBO(7, 82, 100, 1)),
                          borderRadius: BorderRadius.circular(10.0)
                      ),
                    ),
                  ),
                ),
              ],
            )

        ]
      ),

      )
      )

    );
  }
}



