import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/manger/cash_cubit.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/manger/cash_states.dart';
import 'package:signin_signup/Features/payment/presentation/views/payment_options_screen.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';

class CashPhoneNumberView extends StatefulWidget {
  const CashPhoneNumberView({Key? key}) : super(key: key);

  @override
  State<CashPhoneNumberView> createState() => _CashPhoneNumberViewState();
}

class _CashPhoneNumberViewState extends State<CashPhoneNumberView> {
  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => CashCubit(),
      child: BlocConsumer<CashCubit, CashStates>(
        listener: (context, state) {},
        builder: (context, state) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 70),
              const Text(
                'Enter your phone number',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff262626),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: IntlPhoneField(
                  disableLengthCheck: true,
                  keyboardType: TextInputType.number,
                  initialCountryCode: 'EG',
                  controller: phoneController,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "Phone Number",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(14))),
                  ),
                  onSubmitted: (phone) {
                    if (phoneController.text.isNotEmpty) {
                      CashCubit.get(context).changeButtonState();
                    }
                  },
                ),
              ),
              SizedBox(height: size.height * 0.15),
              CustomMainButton(
                size: size * 0.5,
                backgroundColor: Colors.black,
                text: 'Continue',
                textColor: CashCubit.get(context).isButtonActive
                    ? Colors.white
                    : Colors.grey,
                onPressed: CashCubit.get(context).isButtonActive
                    ? () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const PaymentOptionsScreen(isWallet: 1,)));
                      }
                    : null,
                borderRadius: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
