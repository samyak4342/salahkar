import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salahkar/screens/Homescreen.dart';
import 'package:salahkar/screens/profile_setup/Mprofile_setup.dart';

import '../constants/constant_color.dart';
import '../widgets/Button1.dart';

class LemailLogin extends StatefulWidget {
  @override
  _LemailLoginState createState() => _LemailLoginState();
}
var size ,height,width;

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool _passwordVisible =false;
bool isChecked = false;



class _LemailLoginState extends State<LemailLogin> {
  @override
  void initState() {
    _passwordVisible = false;
  }
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
        resizeToAvoidBottomInset : false,
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
                        child: Text('I am so happy to see you. You can continue to login to manage your finance.', textAlign: TextAlign.left, style: TextStyle(
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
                        child:
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            Container(
                                width: width*0.35,
                                child:Text('Remember Me',
                                  style: TextStyle(
                                    color: darkBlue,
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                            Container(
                                width: width*0.35,
                                child:Text('Forgot Passward?',
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
                    ],
                ),

                      Column(
                        children: [
                      Button1(
                        onTap: (){},
                        text: 'Login',
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
                                    fontWeight: FontWeight.bold,
                                    height: 1
                                ),),
                                TextButton(
                                    onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (_)=>HomeScreen(),));
                                    },
                                    child: Text('Create Now',textAlign: TextAlign.center, style: TextStyle(
                                        color: lightBlue,
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1)
                                    ))]))
                    ],
                )

                    ])
            )
        )
    );

  }
}