import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_cubit.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_states.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/views/cash_wallet_password_view.dart';


class PaymentOptionsScreen extends StatelessWidget {
  const PaymentOptionsScreen({Key? key,this.isWallet=0}) : super(key: key);

  final int isWallet;
  static String id =' paymentoptions';

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
                isWallet==0?
                const Text('Payment Options', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),):Container(),
                const SizedBox(height: 20,),
                isWallet==0?
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
                ):Container(),
                const SizedBox(height: 40,),
                isWallet==0?
                PaymentCubit.get(context).paymentView[PaymentCubit.get(context).selectedPaymentOptionIndex]:
                const CashWalletPasswordView(),
              ],
            ),
          ),
        ), listener: (BuildContext context, Object? state) {  },
      ),
    );
  }
}
