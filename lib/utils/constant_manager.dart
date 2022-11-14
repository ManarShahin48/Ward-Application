import 'dart:io';

class ConstantManager {
  const ConstantManager._();

  static const int splashTimer = 2;
  static const double elevationAppBar = 0;
  static const int zero = 0;
  static const int first = 1;
  static const int second = 2;
  static const int third = 3;
  static const int forth = 4;
  static const int initialPageSlider = 0;
  static const int onBoardingPeriod = 400;

  static const double padding = 16.0;
  static const double borderRadius = 10.0;
  static const double borderRadius2 = 20.0;

  static const String empty = '';
  static const String vertical = 'vertical';
  static const String abberTermsUrl = 'https://abber.co/terms/';
  static const String abberUserAgreementUrl =
      'https://abber.co/user-agreement/';

    static const String registerSuccess = 'تم التسجيل بنجاح';
  static const String male = 'male';
  static const String female = 'female';
  static const String notGenderSelected = 'notSelected';
  static const String firstDate = '1900-01-01';
  static const String initialDate = '2000-01-01';

  static List<Map> paymentTypes = [
    {
      'img': 'assets/images/payments/payment-balance.png',
      'title': 'رصيد المحفظة',
      'method':'BALANCE',
    },
    {
      'img': 'assets/images/payments/payment-card.png',
      'title': 'فيزا',
      'method':'VISA',
    },
    {
      'img': 'assets/images/payments/payment-card.png',
      'title': 'ماستركارد',
      'method':'MASTER',
    },
    {
      'img': 'assets/images/payments/payment-mada.png',
      'title': 'مدى',
      'method':'MADA',
    },
    {
      'img': 'assets/images/payments/payment-stc.png',
      'title': 'Stc Pay',
      'method':'STC_PAY',
    },
    if(Platform.isIOS)
    {
      'img': 'assets/images/payments/apple.png',
      'title': 'apple pay',
      'method':'APPLEPAY',
    },
  ];


  static List<Map> paymentTypesOfAddBalance = [
    {
      'img': 'assets/images/payments/payment-card.png',
      'title': 'فيزا',
      'method':'VISA',
    },
    {
      'img': 'assets/images/payments/payment-card.png',
      'title': 'ماستركارد',
      'method':'MASTER',
    },
    {
      'img': 'assets/images/payments/payment-mada.png',
      'title': 'مدى',
      'method':'MADA',
    },
    {
      'img': 'assets/images/payments/payment-stc.png',
      'title': 'Stc Pay',
      'method':'STC_PAY',
    },
    if(Platform.isIOS)
    {
      'img': 'assets/images/payments/apple.png',
      'title': 'apple pay',
      'method':'APPLEPAY',
    },
  ];


}
