abstract class PaymentStates {}

class PaymentInitialState extends PaymentStates {
  final int selectedOptionIndex;

  PaymentInitialState({required this.selectedOptionIndex});
}