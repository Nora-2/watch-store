import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:signin_signup/screens/phone_verification/phone_verification_states.dart';


class PhoneVerificationCubit extends Cubit<PhoneVerificationStates>{

  bool isButtonActive = false ;


  PhoneVerificationCubit(): super(PhoneVerificationInitialState());

  static PhoneVerificationCubit get(context) => BlocProvider.of(context);

  void changeTextButtonColor(){
    isButtonActive = !isButtonActive;
    emit(PhoneVerificationChangeTextButtonState());
  }


}