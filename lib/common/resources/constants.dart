abstract class Constants {
  Constants();

  static const String emailRegEx =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+";
  static const String passwordRegEx =
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$&*~]).{8,}$';

  static const String privacy = 'https://tasheh.app/en/#/privacy-policy';
  static const String termsAndConditions =
      'https://tasheh.app/en/#/terms-and-conditions';
  static const String faqURL = 'https://google.com/search?q=faq';
  static const String helpCenterURL = 'https://support.google.com';
  static const String dayAndMonth = 'd MMM';
}
