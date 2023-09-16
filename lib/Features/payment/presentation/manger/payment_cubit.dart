
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/Features/payment/presentation/manger/payment_states.dart';
import 'package:signin_signup/Features/payment/presentation/views/by_hand/by_hand_view.dart';
import 'package:signin_signup/Features/payment/presentation/views/cash/views/cash_phone_number_view.dart';
import 'package:signin_signup/Features/payment/presentation/views/master_card/views/master_card_view.dart';
import 'package:signin_signup/Features/payment/presentation/views/visa/visa_view.dart';

class PaymentCubit extends Cubit<PaymentStates>{
  PaymentCubit(): super(PaymentInitialState(
      selectedOptionIndex: 0
  ));

  static PaymentCubit get(context) => BlocProvider.of(context);

  var nameOnCardController = TextEditingController();
  var cardNumberController = TextEditingController();
  var expiryDateController = TextEditingController();
  var cvvController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var address1Controller = TextEditingController();
  var address2Controller = TextEditingController();


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
    const CashPhoneNumberView(),
    const ByHandView(),
];

  Map<String,String> userData ={
    'nameOnCard':'Mohamed Gamal',
    'cardNumber':'1234 5678 9012 3456',
    'expiryDate':'01/25',
    'cvv':'345',
    'phoneNumber':'+20 123456789',
    'address1':'20 Emad El Din St., DOWNTOWN',
    'address2':'37 Baghdad St., El Korba',
  };

  changePaymentOptionIndex(int index) {
    selectedPaymentOptionIndex = index;
    emit(PaymentInitialState(
      selectedOptionIndex: selectedPaymentOptionIndex,
    ));
  }

}
