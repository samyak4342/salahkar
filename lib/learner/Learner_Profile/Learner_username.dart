import 'package:flutter/material.dart';
import 'package:salahkar/constants/Text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/constant_color.dart';
import 'package:salahkar/screens/profile_setup/Mprofile_setup.dart';

class LUsername extends StatefulWidget {
  final PageController pageController;

  const LUsername({Key? key, required this.pageController}) : super(key: key);
  @override
  _LUsernameState createState() => _LUsernameState();
}

class _LUsernameState extends State<LUsername> {
  TextEditingController nameController = TextEditingController();
  bool _validate = false;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () { Navigator.pop(context);},
                    icon: Icon(Icons.arrow_back_ios)),
              ),
              SizedBox(height: 20,),
              Container(
                  width: 48,
                  height: 48,
                  child: Center(child: Text(
                    '💼', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(16, 23, 41, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 20,),
                  ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(164, 164, 164, 1),
                      width: 1,
                    ),
                  )
              ),
              SizedBox(height: 20.0,),
              Container(
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'What we call you ?', textAlign: TextAlign.left,
                        style:Heading1,))
              ),
              Container(
                child: Text(
                  'Let’s first setup your profile, so tell us how would you like us to call you?',
                  textAlign: TextAlign.left, style: NormalText1,),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: grey,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(15)
                      ),
                      borderSide: BorderSide(
                          color: darkBlue,
                          width: 3
                      )
                  ),
                  //labelText: 'Email Id',
                  hintText: 'Enter your Username',
                  errorText: _validate ? 'Value Can\'t Be Empty' : null,
                ),

              ),
              Expanded(
                  child: Container(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {
                            widget.pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );

                          },
                          child: Container(
                            alignment: Alignment.center,
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
                                    Text('Next ',
                                      textAlign: TextAlign.left,
                                      style: GoogleFonts.poppins(
                                          color: Color.fromRGBO(255, 255, 255, 1),
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
                      )
                  )
              )
            ]
        )
    );
  }


}