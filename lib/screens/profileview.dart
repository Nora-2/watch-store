import 'package:flutter/material.dart';
import 'package:signin_signup/model/user.dart';
import 'package:signin_signup/screens/profiledetailes.dart';

// ignore: must_be_immutable
class profileView extends StatefulWidget {
  profileView({
    super.key,
  });

  static String id = 'profileView';

  @override
  State<profileView> createState() => _profileViewState();
}

class _profileViewState extends State<profileView> {
  bool read = true;
  final _formKey = GlobalKey<FormState>();
  TextEditingController FName = new TextEditingController();
  TextEditingController LName = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
  
      body: Center(

        child: Column(
          children: [
             SizedBox(height: 10),
             Row(children: [
              IconButton(onPressed: (){
               setState(() {
                               read = true;
                              user.firstName = FName.text.toString();
                              user.secondName = LName.text.toString();
                              user.Phone = phone.text.toString();
                            });
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, profiledetailes.id,
                                  arguments: User(
                                      firstName: FName.text.toString(),
                                      secondName: LName.text.toString(),
                                      Email: user.Email,
                                      Password: user.Password,
                                      Phone: phone.text.toString()),
                                  );
                            }
             }, icon: Icon(Icons.arrow_back),),
             SizedBox(width: 5,),
             Text(' Profile' ,style: TextStyle(fontFamily: 'Poppins',fontSize: 20),)],),
            SizedBox(height: 50),
            CircleAvatar(
              child: Image.asset('assets/images/Ellipse 6.png'),
              radius: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Form(
              key: _formKey,
              child: Column(children: [ Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                
                  readOnly: read,
                  maxLines: 1,
                  controller: FName,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10),
                    hintText: user.firstName,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  readOnly: read,
                  maxLines: 1,
                  controller: LName,
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(left: 10),
                    hintText: user.secondName,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: TextFormField(
                  readOnly: read,
                  maxLines: 1,
                  controller: phone,
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.only(left: 10),
                    hintText: user.Phone,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18),
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 32, left: 22),
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
                            width: 200,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Edit",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              read = false;
                              user.firstName = FName.text.toString();
                              user.secondName = LName.text.toString();
                              user.Phone = phone.text.toString();
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32, left: 12),
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
                            width: 200,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Save",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                               read = true;
                              user.firstName = FName.text.toString();
                              user.secondName = LName.text.toString();
                              user.Phone = phone.text.toString();
                            });
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamed(context, profiledetailes.id,
                                  arguments: User(
                                      firstName: FName.text.toString(),
                                      secondName: LName.text.toString(),
                                      Email: user.Email,
                                      Password: user.Password,
                                      Phone: phone.text.toString()),
                                  );
                            }
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              )],),
            )
           
          ],
        ),
      ),
    );
  }
}
