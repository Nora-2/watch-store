import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/screens/payment/payment_cubit.dart';
import 'package:signin_signup/screens/payment/payment_states.dart';

class PaymentOptionsScreen extends StatelessWidget {
  const PaymentOptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=> PaymentCubit(),
      child: BlocConsumer<PaymentCubit,PaymentStates>(
        builder:(context, state) =>  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Payment Order'),
                const Text(
                  '9,131 L.E',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3A3AD3)
                  ),
                ),
                const SizedBox(height: 20,),
                Divider(
                  color: Colors.grey[400],
                  thickness: 2,
                ),
                const SizedBox(height: 10,),
                const Text('Payment Options', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: PaymentCubit.get(context).paymentOptionImages.length,
                    itemBuilder: (context, index) {
                        return Row(
                          children: [
                            const SizedBox(width: 10,),
                            InkWell(
                              onTap: (){
                                PaymentCubit.get(context).selectedPaymentOptionIndex = index;
                                PaymentCubit.get(context).changePaymentOptionIndex(index);
                              },
                              child: Stack(
                                children: [
                                  Image.asset(PaymentCubit.get(context).paymentOptionImages[index], width: 50,),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: PaymentCubit.get(context).selectedPaymentOptionIndex!=index?Colors.white12.withOpacity(0.7):Colors.white12.withOpacity(0.1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                          ],
                        );
                      },
                  ),
                ),
                const SizedBox(height: 40,),
                const Text('Choose Your Payment Card', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                PaymentCubit.get(context).paymentView[PaymentCubit.get(context).selectedPaymentOptionIndex],
              ],
            ),
          ),
        ), listener: (BuildContext context, Object? state) {  },
      ),
    );
  }
}
