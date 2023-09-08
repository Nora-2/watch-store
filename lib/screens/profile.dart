
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:signin_signup/model/user.dart';

import 'package:signin_signup/screens/profiledetailes.dart';
import 'package:signin_signup/screens/signup.dart';
import 'package:signin_signup/wedgites/customtxtformfield.dart';

// ignore: must_be_immutable
class profile extends StatelessWidget {
  profile({
    super.key,
  });
  TextEditingController Name = new TextEditingController();
  TextEditingController pass = new TextEditingController();

  static String id = 'profile';
  @override
  Widget build(BuildContext context) {
    User user=User(firstName: 'Nora', secondName: 'Mohamed', Email: 'nora988@gmail.com', Phone: '012727889');
    
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 420),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).popAndPushNamed('HomeLayout');
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),
            Lottie.asset(
              'assets/images/login2.json',
              key: Key('${Random().nextInt(999999999)}'),
              width: 210,
              height: 210,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Container(
                width: double.infinity,
                child: Text(
                  textAlign: TextAlign.center,
                  "Login Now",
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
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(18),
                      child: customformfield(
                        controller: Name,
                        hint: "Username or Phone Number",
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.035,
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
                  Padding(
                    padding: const EdgeInsets.only(right: 12, left: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text("Forget password ?",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              decoration: TextDecoration.underline,
                              decorationThickness: 2.0,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 10),
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
                                "Login",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(
                                context,
                                profiledetailes.id,
                                arguments: User(
                                    firstName: user.firstName,
                                    secondName: user.secondName,
                                    Email: user.Email,
                                    Password: user.Password,
                                    Phone: user.Phone),
                              );
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
                        "New At Watch X ?",
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
                                return SignUp();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Create New Account",
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
                    'Sign in With',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  SizedBox(height: 20),
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
