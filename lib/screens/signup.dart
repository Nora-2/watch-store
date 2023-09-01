import 'package:flutter/material.dart';
import 'package:signin_signup/components/background.dart';
import 'package:signin_signup/screens/home/main_home_screen.dart';
import 'package:signin_signup/wedgites/customtxtformfield.dart';

class SignUp extends StatelessWidget {
   SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            const Text(
              "Create account",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            Form(
                 key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                        child: customformfield(
                          hint: "Username",
                          preicon: Icon(
                            Icons.person,
                            size: MediaQuery.of(context).size.width * 0.06,
                            color: Color.fromARGB(255, 225, 121, 243),
                          ),
                          text: TextInputType.name,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                        child: customformfield(
                          hint: 'Password',
                          preicon: Icon(
                            Icons.lock,
                            size: MediaQuery.of(context).size.width * 0.06,
                            color: Color.fromARGB(255, 225, 121, 243),
                          ),
                          text: TextInputType.visiblePassword,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                        child: customformfield(
                          hint: "Email",
                          preicon: Icon(
                            Icons.email,
                            size: MediaQuery.of(context).size.width * 0.06,
                            color: Color.fromARGB(255, 225, 121, 243),
                          ),
                          text: TextInputType.emailAddress,
                          sign: '@',
                          massege: 'Please enter a valid email',
                        ),),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                        child: customformfield(
                          hint: "Mobile",
                          preicon: Icon(
                            Icons.lock,
                            size: MediaQuery.of(context).size.width * 0.06,
                            color: Color.fromARGB(255, 225, 121, 243),
                          ),
                          text: TextInputType.phone,
                        )),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                      Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                          MediaQuery.of(context).size.height * 0.1,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 230, 85),
                                Color.fromARGB(255, 176, 74, 166),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.1,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.height * 0.05,
                          child: IconButton(
                            onPressed: () {
   
    if (_formKey.currentState!.validate()) {
     
      // ScaffoldMessenger.of(context).showSnackBar(
      //   const SnackBar(content: Text('Processing Data')),
      // );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MainHomeScreen()));

    }
  },
                            icon: Icon(Icons.navigate_next_rounded),
                          ),
                        ),
                      ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                  ),
                  Text(
                    "Or create account using social media",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Image.asset("assets/images/icons.png")
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
