import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/learner/login_learner.dart';
import 'package:salahkar/screens/signup_mentor.dart';

import '../constants/Text_styles.dart';
import '../learner/signup_learner.dart';

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
            Align(
              alignment: Alignment.topLeft,
              child:IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios,color:Colors.black),
              ),
            ),
            Flexible(
              flex: 3,
             fit: FlexFit.tight,
             child:Container(
                width: double.infinity,
                height:430,
                decoration: BoxDecoration(
                  image : DecorationImage(
                      image: AssetImage('assets/into_screen.png'),
                      fit: BoxFit.fill
                  ),
                )
             ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
                child:Container(
                child:Text('How would you like to join Salahkar ?', textAlign: TextAlign.left, style: Heading1,)
            ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
                child:Container(
              child: Text('Join us in the journey of making everyone financally free and help them in achieving their goals.', textAlign: TextAlign.left,
                style: NormalText1,),
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
                      child: Center(child:Text('Mentor 👨', textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>LearnerSignupPage(),));
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



