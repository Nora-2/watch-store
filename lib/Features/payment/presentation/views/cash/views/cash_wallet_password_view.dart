import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/manger/cash_cubit.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/manger/cash_states.dart';
import 'package:signin_signup/Features/payment/presentation/views/payment_completed_screen.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';


class CashWalletPasswordView extends StatefulWidget {
  const CashWalletPasswordView({Key? key}) : super(key: key);

  @override
  State<CashWalletPasswordView> createState() => _CashWalletPasswordViewState();
}

class _CashWalletPasswordViewState extends State<CashWalletPasswordView> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => CashCubit(),
      child: BlocConsumer<CashCubit,CashStates>(
        listener: (context, state) {},
        builder:(context, state) => Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Text('Enter your wallet password',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 30),
              OtpTextField(
                fieldWidth: 45,
                borderWidth: 2,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                numberOfFields: 6,
                showFieldAsBox: true,
                borderRadius: BorderRadius.circular(10),
                textStyle: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                keyboardType: TextInputType.number,
                onSubmit: (String verificationCode) {
                  setState(() {
                    CashCubit.get(context)
                        .changeTextButtonColor();
                  });
                }, // end onSubmit
              ),
              SizedBox(height: size.height * 0.15),
              CustomMainButton(
                size: size * 0.5,
                backgroundColor: Colors.black,
                text: 'Buy Now',
                textColor: CashCubit.get(context).isButtonActive
                    ? Colors.white
                    : Colors.grey,
                onPressed: CashCubit.get(context).isButtonActive
                    ? () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentCompletedScreen()));
                  
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
