import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_cubit.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_states.dart';
import 'package:signin_signup/core/widgets/custom_edit_card_text_info.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';


class EditCardScreen extends StatefulWidget {
  const EditCardScreen({Key? key}) : super(key: key);

  @override
  State<EditCardScreen> createState() => _EditCardScreenState();
}

class _EditCardScreenState extends State<EditCardScreen> {
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
                      'Card Information',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3A3AD3),
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      'Name on Card',
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
                      'Card Number',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    CustomEditCardTextInfo(
                      size: size,
                      controller:
                          PaymentCubit.get(context).cardNumberController,
                      hintText: 'cardNumber',
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    const Text(
                      'Address',
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
                    const Row(
                      children: [
                        Text(
                          'Expiration Date',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          'CVV',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomEditCardTextInfo(
                          size: size / 2.5,
                          controller:
                              PaymentCubit.get(context).expiryDateController,
                          hintText: 'expiryDate',
                        ),
                        CustomEditCardTextInfo(
                          size: size / 2.5,
                          controller: PaymentCubit.get(context).cvvController,
                          hintText: 'cvv',
                        ),
                      ],
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
