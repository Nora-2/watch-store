
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/screens/payment/master_card/master_card_view.dart';
import 'package:signin_signup/screens/payment/payment_states.dart';
import 'package:signin_signup/screens/payment/visa/visa_view.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit(): super(PaymentInitialState(
      selectedOptionIndex: 0
  ));

  static PaymentCubit get(context) => BlocProvider.of(context);

  int selectedPaymentOptionIndex = 0;
  List<String> paymentOptionImages = [
    'assets/images/master_card.png',
    'assets/images/visa.png',
    'assets/images/cash.png',
    'assets/images/byhand.png',
  ];
  List<Widget> paymentView =[
    const MasterCardView(),
    const VisaCardView(),
    const MasterCardView(),
    const MasterCardView(),
  ];

  changePaymentOptionIndex(int index){
    selectedPaymentOptionIndex = index;
    emit(PaymentInitialState(
      selectedOptionIndex: selectedPaymentOptionIndex,
    ));
  }

}
