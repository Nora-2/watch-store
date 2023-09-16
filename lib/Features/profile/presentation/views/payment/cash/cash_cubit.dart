
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signin_signup/screens/payment/cash/cash_states.dart';

class CashCubit extends Cubit<CashStates> {
  CashCubit() : super(CashInitialState());

  static CashCubit get(context) => BlocProvider.of(context);

  bool isButtonActive = false;

  void changeButtonState() {
    isButtonActive = !isButtonActive;
    emit(CashChangeButtonState());
  }

  void changeTextButtonColor(){
    isButtonActive = !isButtonActive;
    emit(CashChangeWalletButtonState());
  }
}