import 'package:flutter/material.dart';
import 'package:signin_signup/model/user.dart';
import 'package:signin_signup/screens/profileview.dart';

class profiledetailes extends StatelessWidget {
  const profiledetailes({super.key});
  static String id = 'profiledetailes';

  @override
  Widget build(BuildContext context) {
    User user=User(firstName: 'Nora', secondName: 'Mohamed', Email: 'nora988@gmail.com', Phone: '012727889');
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 420),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).popAndPushNamed('HomeLayout');
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.black),
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Image.asset('assets/images/Ellipse 6.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        textAlign: TextAlign.center,
                        'Hello , ${user.firstName} ${user.secondName}',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          textAlign: TextAlign.center,
                          '+2${user.Phone}',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 18),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 3,
          color: Colors.white,
          width: double.infinity,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 575 - 18 - 25,
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/Vector.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          profileView.id,
                          arguments: User(
                              firstName: user.firstName,
                              secondName: user.secondName,
                              Email: user.Email,
                              Password: user.Password,
                              Phone: user.Phone),
                        );
                      },
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Vector (1).png',
                      width: 40, height: 40),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileView()));
                      },
                      child: Text(
                        'My Favorites',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Vector (2).png',
                      width: 40, height: 40),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileView()));
                      },
                      child: Text(
                        'My Saves',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/images/Vector (3).png',
                      width: 40, height: 40),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => profileView()));
                      },
                      child: Text(
                        'Log Out ',
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
