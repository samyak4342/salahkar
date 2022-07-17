import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/constants/size_config.dart';
import 'package:salahkar/screens/profile_setup/Mprofile_setup.dart';

import '../constants/constant_color.dart';
import 'login_mentor.dart';

class MsignupPage extends StatefulWidget {
  @override
  _MsignupPageState createState() => _MsignupPageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool _passwordVisible =false;
bool isChecked = false;



class _MsignupPageState extends State<MsignupPage> {

  @override
  void initState() {
    _passwordVisible = false;
  }
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: Colors.white,
        body:SafeArea(
            child:Container(
              height: height,
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 20.0),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Align(
              alignment: Alignment.topLeft,
                child:Icon(Icons.arrow_back_ios_rounded),
              ),
              SizedBox(height: 30.0,),

              Container(
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
              Container(
                child: Text('Create an account so that you can start your financial journey.', textAlign: TextAlign.left, style: TextStyle(
                    color: Color.fromRGBO(145, 145, 145, 1),
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7857142857142858
                ),),
              ),
                  SizedBox(height: 30.0,),
                  TextField(
                    controller: nameController,
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
                              width: 2
                          )
                      ),
                      //labelText: 'Email Id',
                      hintText: 'Email id',
                    ),
                  ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType: TextInputType.text,
                controller: passwordController,
                obscureText: !_passwordVisible,//This will obscure text dynamically
                decoration: InputDecoration(
                  //labelText: 'Password',
                  hintText: 'Enter your password',
                  filled: true,
                  fillColor: grey,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(15)
                      ),
                      borderSide: BorderSide(
                          color: darkBlue,
                          width: 2
                      )
                  ),
                  // Here is key idea
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    child:
                        Row(
                      children: [
                      Checkbox(
                      checkColor: Colors.white,
                      //fillColor: false,
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                        Flexible(
                          flex:1,
                            child:Text('By signing up you are agree with our,',
                              style: TextStyle(
                                color: darkBlue,
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                  TextButton(onPressed: (){},
                      child: Text('Terms & Conditions.')),
                  SizedBox(height: height / 5,),
                  Expanded(
                    flex: 2,
                      child:Align(
                          alignment: Alignment.bottomCenter,
                          child:Container(
                              child:Column(
                                  children:[
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (_)=>MprofileSetup(),));
                                      },
                                      child:Container(
                                        alignment: Alignment.bottomCenter,
                                        width: double.infinity,
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
                                                Text('Sign up ',
                                                  textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(255, 255, 255, 1),
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
                                    SizedBox(height: 10.0,),
                                    Container(
                                        child:Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children:[
                                              Text('Already have a account,', textAlign: TextAlign.center, style: TextStyle(
                                                  color: darkBlue,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.bold,
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
                                                  ))]))

                                  ]
                              )
                          )
                      )
                  )
                ]
              )
    )
    )
    );

    }
}