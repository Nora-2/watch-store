import 'dart:math';

import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:signin_signup/Features/phoneVerification/presentation/views/phone_verification_screen.dart';
import 'package:signin_signup/Features/profile/presentation/model/user.dart';
import 'package:signin_signup/Features/profile/presentation/views/login.dart';
import 'package:signin_signup/core/widgets/customtxtformfield.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

TextEditingController FName  = new TextEditingController();
TextEditingController LName  = new TextEditingController();
TextEditingController pass  =  new TextEditingController();
TextEditingController phone  = new TextEditingController();
TextEditingController email  = new TextEditingController();

  static String id = 'RegisterPage';

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
  
    return Scaffold(
      appBar:  AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.only(left: 30, right: 420),
            //   child: IconButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     icon: Icon(Icons.arrow_back),
            //   ),
            // ),
            Lottie.asset(
              'assets/images/login2.json',
              key: Key('${Random().nextInt(999999999)}'),
              width: 180,
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  "Create New Account",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                        ),
                        child: Container(
                          width: 215,
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(18),
                            child: customformfield(
                              controller: FName,
                              hint: "First Name",
                              preicon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/images/black-male-user-symbol.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              text: TextInputType.text,
                              massege: 'Please enter a valid Name',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.035,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10, right: 30),
                        child: Container(
                          width: 215,
                          child: Material(
                            elevation: 4,
                            borderRadius: BorderRadius.circular(18),
                            child: customformfield(
                              controller: LName,
                              hint: 'Second Name',
                              preicon: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  'assets/images/black-male-user-symbol.png',
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              text: TextInputType.visiblePassword,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(18),
                      child: customformfield(
                        controller: phone,
                        hint: "Pnone Number",
                        preicon: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/images/mobile-button 1.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.fill,
                          ),
                        ),
                        text: TextInputType.text,
                        massege: 'Please enter a valid Name',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(18),
                        child: customformfield(
                          controller: email,
                          hint: 'Email',
                          preicon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/email 1.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          text: TextInputType.visiblePassword,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(18),
                        child: customformfield(
                          controller: pass,
                          hint: 'Password',
                          suffix: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/eye.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          preicon: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              'assets/images/key.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          text: TextInputType.visiblePassword,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(right: 32, left: 32),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.01,
                          ),
                        ),
                        child: GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            width: 370,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Create",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            // if(true){
                            if (_formKey.currentState!.validate()) {
                              User(
                                  firstName: FName.text.toString(),
                                  secondName: LName.text.toString(),
                                  Email: email.text.toString(),
                                  Password: pass.text.toString(),
                                  Phone: phone.text.toString());

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PhoneVerificationScreen()));
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already Have An Account ?",
                        style: TextStyle(fontSize: 18, fontFamily: 'Poppins'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return login();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Login Now",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              decorationColor: Color(0xff0000FF),
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.0,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0000FF)),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Sign Up With',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Image.asset("assets/images/icons.png")],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


