import 'package:flutter/material.dart';
import 'package:signin_signup/Features/payment/presentation/views/address_screen.dart';
import 'package:signin_signup/Features/payment/presentation/views/payment_completed_screen.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';


class ByHandView extends StatelessWidget {
  const ByHandView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
                'Pay On Receive',
            style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
              color: Color(0xFF3A3AD3)
                ),
            ),
            SizedBox(height: size.height * 0.02),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Products Price: ',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '9,081 LE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.015 ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Delivery Cost: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '50.00 LE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.015),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Taxes: ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '25.00 LE',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total : ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3AD3),
                  ),
                ),
                Text(
                  '9,156 LE',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3AD3),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            const Text(
              'Address',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height*0.005  ,),
            InkWell(
              onTap: (){
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
            SizedBox(height:size.height*0.01),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(14),
            //     boxShadow: [
            //       BoxShadow(
            //         color: Colors.grey.withOpacity(0.2),
            //         blurRadius: 1,
            //         offset: Offset(0, 1),
            //       ),
            //     ],
            //   ),
            //   child: InkWell(
            //     onTap: (){
            //       Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddressScreen()));
            //     },
            //     child: Card(
            //       elevation: 0,
            //       child: Container(
            //         padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
            //         child: const Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Text(
            //               'Add New Address',
            //               style: TextStyle(
            //                 fontSize: 18,
            //                 fontWeight: FontWeight.bold,
            //               ),
            //             ),
            //             Icon(Icons.arrow_forward_ios_rounded),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: size.height*0.07,),
            Center(
              child: CustomMainButton(
                size: size*0.5,
                backgroundColor: Colors.black,
                text: 'Buy Now',
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentCompletedScreen()));
                },
              ),
            ),
            SizedBox(height: size.height*0.02,),
          ],
        ),
      ),
    );
  }
}
