import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_cubit.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_states.dart';
import 'package:signin_signup/core/widgets/custom_edit_card_text_info.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';

class EditAddressScreen extends StatelessWidget {
  const EditAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
        create: (context) => PaymentCubit(),
        child: BlocConsumer<PaymentCubit, PaymentStates>(
          listener: (context, state) {},
          builder: (context, state) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Address Information',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3A3AD3),
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'User Name',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    CustomEditCardTextInfo(
                      size: size,
                      controller:
                      PaymentCubit.get(context).nameOnCardController,
                      hintText: 'nameOnCard',
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Phone Number',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    CustomEditCardTextInfo(
                      size: size,
                      controller:
                      PaymentCubit.get(context).phoneNumberController,
                      hintText: 'cardNumber',
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Address1',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    CustomEditCardTextInfo(
                      size: size,
                      controller: PaymentCubit.get(context).address1Controller,
                      hintText: 'address1',
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Address2',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    CustomEditCardTextInfo(
                      size: size,
                      controller: PaymentCubit.get(context).address2Controller,
                      hintText: 'address2',
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: CustomMainButton(
                        size: size * 0.5,
                        backgroundColor: Colors.black,
                        text: 'Save',
                        textColor: Colors.white,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        borderRadius: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));

  }
}
