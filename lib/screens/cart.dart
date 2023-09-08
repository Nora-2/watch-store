import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Cart',
          style: TextStyle(fontSize: 20),
        ),
        elevation: 2,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/login.jpg'),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            const Text(
              'Ohh . . . ',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const Text('It\’s Look Like That You\’re Not Signed In',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center),
            const Text('You need An Account to Complete Your Shopping',
                style: TextStyle(fontSize: 10), textAlign: TextAlign.center),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Create An Account',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(horizontal: 50)),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Already Got An Account ?',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
