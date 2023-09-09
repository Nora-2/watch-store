import 'package:flutter/material.dart';

class VisaDetailsScreen extends StatelessWidget {
  const VisaDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/visa_number.png',width: double.infinity,),
              const SizedBox(height: 50,),
              Text(
                'Address',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 1,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  child: Row(
                    children: [
                      Column(
                        children: [

                        ],
                      ),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
