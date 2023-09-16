import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:signin_signup/Features/phoneVerification/presentation/manger/phone_verification_cubit.dart';
import 'package:signin_signup/Features/phoneVerification/presentation/manger/phone_verification_states.dart';
import 'package:signin_signup/Features/phoneVerification/presentation/views/success_verification_screen.dart';
import 'package:signin_signup/core/widgets/custom_main_button.dart';
import 'package:signin_signup/core/widgets/custom_phone_verify_title.dart';


class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationScreen> createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => PhoneVerificationCubit(),
      child: BlocConsumer<PhoneVerificationCubit, PhoneVerificationStates>(
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              elevation: 0,
            ),
            body: SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Column(
                    children: [
                      SizedBox(height: size.height * 0.1),
                      CustomPhoneVerifyTitle(size: size),
                      SizedBox(height: size.height * 0.03),
                      const Text(
                        'You will receive an SMS on You Phone',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '+20123456****',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0000FF),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Edit Number?',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.15),
                      const Text(
                        'Please Enter the OTP That Tou Received',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: OtpTextField(
                          fieldWidth: 45,
                          borderWidth: 2,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          numberOfFields: 4,
                          showFieldAsBox: true,
                          textStyle: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          keyboardType: TextInputType.number,
                          onSubmit: (String verificationCode) {
                            setState(() {
                              PhoneVerificationCubit.get(context)
                                  .changeTextButtonColor();
                            });
                          }, // end onSubmit
                        ),
                      ),
                      SizedBox(height: size.height * 0.03),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Did Not Get the OTP?'),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            'Resend?',
                            style: TextStyle(
                              color: Color(0xff3A3AD3),
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.03),
                      SizedBox(
                        width: size.width * 0.5,
                        child: CustomMainButton(
                          size: size,
                          backgroundColor: Colors.black,
                          text: 'Verify',
                          textColor:
                              PhoneVerificationCubit.get(context).isButtonActive
                                  ? Colors.white
                                  : Colors.grey,
                          onPressed:
                              PhoneVerificationCubit.get(context).isButtonActive
                                  ? () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SuccessVerificationScreen()));
                                    }
                                  : null,
                          borderRadius: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        listener: (BuildContext context, state) {},
      ),
    );
  }
}
