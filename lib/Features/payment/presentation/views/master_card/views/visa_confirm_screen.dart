import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/address_screen.dart';
import 'package:signin_signup/Features/payment/presentation/views/master_card/views/card_details_screen.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';


// ignore: must_be_immutable
class ConfirmScreen extends StatelessWidget {
  ConfirmScreen({Key? key,this.isVisa=false}) : super(key: key);
  bool isVisa;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                isVisa?Image.asset('assets/images/visa_number.png',width: double.infinity,):Image.asset('assets/images/cnum1.png',width: double.infinity,),
                const SizedBox(height: 50,),
                const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddressScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 1,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Card(
                      elevation: 0,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mohamed Gamal ...',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  '20 Emad El Din St., DOWNTOWN',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                Center(
                  child: CustomMainButton(
                    size: size*0.5,
                    backgroundColor: Colors.black,
                    text: 'Confirm',
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> CardDetailsScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
