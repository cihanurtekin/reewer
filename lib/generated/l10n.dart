// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Reewer`
  String get appTitle {
    return Intl.message(
      'Reewer',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTitle {
    return Intl.message(
      'Login',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get registerTitle {
    return Intl.message(
      'Sign up',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your phone`
  String get phoneVerificationTitle {
    return Intl.message(
      'Confirm your phone',
      name: 'phoneVerificationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Terms of use`
  String get termsOfUseTitle {
    return Intl.message(
      'Terms of use',
      name: 'termsOfUseTitle',
      desc: '',
      args: [],
    );
  }

  /// `Apple`
  String get apple {
    return Intl.message(
      'Apple',
      name: 'apple',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google {
    return Intl.message(
      'Google',
      name: 'google',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Your phone`
  String get phoneHint {
    return Intl.message(
      'Your phone',
      name: 'phoneHint',
      desc: '',
      args: [],
    );
  }

  /// `Your email`
  String get emailHint {
    return Intl.message(
      'Your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Your full name`
  String get fullNameHint {
    return Intl.message(
      'Your full name',
      name: 'fullNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Your city`
  String get cityHint {
    return Intl.message(
      'Your city',
      name: 'cityHint',
      desc: '',
      args: [],
    );
  }

  /// `Your street and number`
  String get addressHint {
    return Intl.message(
      'Your street and number',
      name: 'addressHint',
      desc: '',
      args: [],
    );
  }

  /// `Not registered yet?`
  String get notRegisteredYet {
    return Intl.message(
      'Not registered yet?',
      name: 'notRegisteredYet',
      desc: '',
      args: [],
    );
  }

  /// `Already have a user?`
  String get alreadyHaveUser {
    return Intl.message(
      'Already have a user?',
      name: 'alreadyHaveUser',
      desc: '',
      args: [],
    );
  }

  /// `Didn't get the code?`
  String get didNotGetCode {
    return Intl.message(
      'Didn\'t get the code?',
      name: 'didNotGetCode',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get signUp {
    return Intl.message(
      'Sign up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Send again`
  String get sendAgain {
    return Intl.message(
      'Send again',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `Send a code`
  String get sendCode {
    return Intl.message(
      'Send a code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message(
      'Later',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `I have read the `
  String get termsOfUsePrefix {
    return Intl.message(
      'I have read the ',
      name: 'termsOfUsePrefix',
      desc: '',
      args: [],
    );
  }

  /// `terms of use`
  String get termsOfUse {
    return Intl.message(
      'terms of use',
      name: 'termsOfUse',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the first local marketplace for trading sneakers on our mobile app “Reewer”. By accessing or using the App, you agree to be bound by these terms of use. \nIf you do not agree to all of the Terms, do not access or use the App.\n1. Eligibility\nThe app and services are intended for use only by persons who are at least 18 years of age. By using the Site and Services you confirm that you meet this requirement and that, if you are under the age of 18, you have received permission from your parent or guardian before using the Site and Services.\n2. Account Registration\nIn order to access certain features of the App, you will be required to register for an account and provide certain information about yourself. You agree to provide accurate, current, and complete information about yourself as prompted by the App's registration form. You also agree to maintain and promptly update your account information to keep it accurate, current, and complete.\n3. User Conduct\nYou agree to use the App only for lawful purposes and in accordance with these Terms. You agree not to use the App:\nIn any way that violates any applicable federal, state, local, or international law or regulation\nTo sell fake sneakers or try to upload them into your collection.\nFor the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content, asking for personally identifiable information, or otherwise\nTo transmit, or procure the sending of, any advertising or promotional material, including any "junk mail," "chain letter," "spam," or any other similar solicitation\nTo impersonate or attempt to impersonate the Company, a Company employee, another user, or any other person or entity\nTo engage in any other conduct that restricts or inhibits anyone's use or enjoyment of the App, or which, as determined by the Company, may harm the Company or users of the App or expose them to liability\nThe Company reserves the right to terminate your access to the App and freeze your balance inside the app if the Company determines, in its sole discretion, that you have violated these Terms or otherwise engaged in conduct that the Company deems to be inappropriate.\n4. User Content\nThe App may allow you to post, upload, or otherwise transmit text, images, or other content (collectively, "User Content"). You are solely responsible for your User Content and the consequences of posting or publishing it. By posting or publishing User Content on the App, you represent and warrant that:\nYou are the owner of the User Content or have the necessary rights and permissions to use and authorize the Company to use your User Content as described in these Terms\nYour User Content does not infringe the intellectual property rights or other rights of any third party\nYour User Content complies with these Terms and all applicable laws and regulations\nThe Company has the right, but not the obligation, to monitor, review, or remove any User Content that the Company determines, in its sole discretion, violates these Terms or is otherwise inappropriate.\n5. Intellectual Property\nThe App and its content, including but not limited to text, graphics, images, software, and the like (the "Content"), are protected by copyright and other intellectual property laws. You may not use the Content for any commercial purpose or for any other purpose not expressly permitted by these Terms. You may not modify, reproduce, distribute, display, or create derivative works of the Content without the express written permission of the Company.\n6. Disclaimer of Warranties\nThe App is provided on an "as is" and "as available" basis. The Company makes no representations or warranties of any kind, express or implied.\n\n7. Transactions and Refunds\nThe App allows users to trade sneakers. All transactions made through the App are subject to these Terms and any additional terms and conditions that may be agreed upon by the parties involved.\nThe Company does not endorse or guarantee any products or services offered for sale through the App and is not responsible for the accuracy, quality, safety, or legality of any items listed for sale. \nAll sales made through the App are final. Once the buyer has accepted the shoe and the transaction is complete, there will be no refunds. It is the responsibility of the buyer to ensure that the shoe meets their expectations before completing the transaction.\n8. Limitation of Liability\nThe Company will not be liable for any damages of any kind arising from the use of the App, including but not limited to direct, indirect, incidental, punitive, and consequential damages. The Company makes no warranty that the App will meet your requirements or that it will be uninterrupted, timely, secure, or error-free.\n9. Indemnification\nYou agree to indemnify and hold the Company and its affiliates, officers, agents, and employees harmless from any claim or demand, including reasonable attorneys' fees, made by any third party due to or arising out of your use of the App, your violation of these Terms, or your violation of any rights of another.\n10. Termination\nThe Company reserves the right, in its sole discretion, to terminate your access to the App at any time and for any reason, without notice.\n11. Governing Law\nThese Terms and your use of the App will be governed by and construed in accordance with the laws of the State of Israel, without giving effect to any principles of conflicts of law. Any disputes arising out of or relating to these Terms or the App will be resolved through binding arbitration in accordance with the rules of the American Arbitration Association.\n12. Miscellaneous\nThese Terms constitute the entire agreement between you and the Company with respect to the App and supersede all prior or contemporaneous communications and proposals, whether oral or written. If any part of these Terms is found to be invalid or unenforceable, that part will be enforced to the maximum extent possible, and the remaining provisions will remain in full force and effect. The failure of the Company to exercise or enforce any right or provision of these Terms will not constitute a waiver of such right or provision. You may not assign or transfer your rights or obligations under these Terms without the prior written consent of the Company. The Company may assign or transfer its rights and obligations under these Terms, in whole or in part, without your consent.\n13. Changes to These Terms\nThe Company reserves the right, in its sole discretion, to change these Terms at any time. Any changes to these Terms will be effective immediately upon posting on the App. It is your responsibility to review these Terms periodically for updates. Your continued use of the App after posting any changes to these Terms constitutes your acceptance of those changes.\n\n14. Sale of Counterfeit Items\nThe sale of counterfeit or fake items is strictly prohibited on the App. If the Company determines, in its sole discretion, that a seller has sold fake or counterfeit items through the App, the Company reserves the right to terminate the seller's account and to charge the seller for any damages incurred as a result of the sale of counterfeit items. The Company may also report the sale of counterfeit items to law enforcement authorities as appropriate.\n15. Payment\nThe App may allow users to make payments through the App or through third-party payment processors. All payments made through the App are subject to the terms and conditions of the applicable payment processor. The Company is not responsible for any errors or issues that may arise with payments made through the App or through third-party payment processors. It is the user's responsibility to ensure that their payment information is accurate and up to date.\n16. Payout\nBy using the marketplace platform and agreeing to receive payment to your bank account, you confirm that you are in compliance with all applicable laws and regulations in Israel, including those related to taxes and money laundering.\nReewer’s marketplace may require you to provide additional information or documentation to verify your identity and compliance with Israeli laws and regulations. Failure to provide this information may result in the suspension or termination of your account. \nThe marketplace platform may also be required to report certain transactions or information to relevant authorities in Israel as part of its compliance with applicable laws and regulations. \nYou acknowledge that any funds received in your bank account through the marketplace platform may be subject to withholding taxes and other deductions as required by Israeli law.\nYou are solely responsible for ensuring that any funds received in your bank account through the marketplace platform are correctly reported and declared to the relevant tax authorities and for paying any taxes or other obligations that may be due on such funds. \nBy using the marketplace platform and agreeing to receive payment to your bank account, you confirm that you have read and agree to these additional terms of use and will comply with all applicable laws and regulations in Israel. It is the user's responsibility to ensure that their payout information is accurate and up to date.\n\n17. Privacy\nThe Company respects the privacy of its users and is committed to protecting their personal information. Using the App, you agree to the collection, use, and sharing of your personal information per the Company's privacy policy.\nThe App may collect specific personal data, including but not limited to your location, in order to improve the performance of the App and to provide personalized content. This data will only be used for the purposes stated in the privacy policy and will not be shared with third parties except as required by law.\nYou can view the Company's full privacy policy by visiting our policy page.\n18. Cookies\nThe App may use cookies to improve your experience and to personalize content. You can choose to disable cookies in your browser settings, but doing so may affect the functionality of the App. By using the App, you consent to cookies as described in the privacy policy.\n19. Safety\nThe company is not responsible for any injuries or damages that may occur during a marketplace meetup. Buyers and sellers are solely responsible for their own safety and well-being.\nIf a buyer or seller experiences theft or attack during a marketplace meet-up, it is their responsibility to report the incident to the appropriate authorities and seek legal recourse. The company is not liable for any losses or damages resulting from such incidents.\n20. Fees \nThe marketplace platform is a service provided for the convenience of buyers and sellers to facilitate transactions. The company charges a fee of 7% of the total transaction value for each sale, which will be automatically deducted from the seller's proceeds. Additionally, a withdrawal fee of 2% will be charged when the seller withdraws their proceeds from the platform. The company is not responsible for any actions buyers or sellers take during or after a transaction.\n21. Contact Us\nIf you have any questions or concerns about these Terms or the App, please contact us at reewerapp@gmail.com\n`
  String get termsOfUseContent {
    return Intl.message(
      'Welcome to the first local marketplace for trading sneakers on our mobile app “Reewer”. By accessing or using the App, you agree to be bound by these terms of use. \nIf you do not agree to all of the Terms, do not access or use the App.\n1. Eligibility\nThe app and services are intended for use only by persons who are at least 18 years of age. By using the Site and Services you confirm that you meet this requirement and that, if you are under the age of 18, you have received permission from your parent or guardian before using the Site and Services.\n2. Account Registration\nIn order to access certain features of the App, you will be required to register for an account and provide certain information about yourself. You agree to provide accurate, current, and complete information about yourself as prompted by the App\'s registration form. You also agree to maintain and promptly update your account information to keep it accurate, current, and complete.\n3. User Conduct\nYou agree to use the App only for lawful purposes and in accordance with these Terms. You agree not to use the App:\nIn any way that violates any applicable federal, state, local, or international law or regulation\nTo sell fake sneakers or try to upload them into your collection.\nFor the purpose of exploiting, harming, or attempting to exploit or harm minors in any way by exposing them to inappropriate content, asking for personally identifiable information, or otherwise\nTo transmit, or procure the sending of, any advertising or promotional material, including any "junk mail," "chain letter," "spam," or any other similar solicitation\nTo impersonate or attempt to impersonate the Company, a Company employee, another user, or any other person or entity\nTo engage in any other conduct that restricts or inhibits anyone\'s use or enjoyment of the App, or which, as determined by the Company, may harm the Company or users of the App or expose them to liability\nThe Company reserves the right to terminate your access to the App and freeze your balance inside the app if the Company determines, in its sole discretion, that you have violated these Terms or otherwise engaged in conduct that the Company deems to be inappropriate.\n4. User Content\nThe App may allow you to post, upload, or otherwise transmit text, images, or other content (collectively, "User Content"). You are solely responsible for your User Content and the consequences of posting or publishing it. By posting or publishing User Content on the App, you represent and warrant that:\nYou are the owner of the User Content or have the necessary rights and permissions to use and authorize the Company to use your User Content as described in these Terms\nYour User Content does not infringe the intellectual property rights or other rights of any third party\nYour User Content complies with these Terms and all applicable laws and regulations\nThe Company has the right, but not the obligation, to monitor, review, or remove any User Content that the Company determines, in its sole discretion, violates these Terms or is otherwise inappropriate.\n5. Intellectual Property\nThe App and its content, including but not limited to text, graphics, images, software, and the like (the "Content"), are protected by copyright and other intellectual property laws. You may not use the Content for any commercial purpose or for any other purpose not expressly permitted by these Terms. You may not modify, reproduce, distribute, display, or create derivative works of the Content without the express written permission of the Company.\n6. Disclaimer of Warranties\nThe App is provided on an "as is" and "as available" basis. The Company makes no representations or warranties of any kind, express or implied.\n\n7. Transactions and Refunds\nThe App allows users to trade sneakers. All transactions made through the App are subject to these Terms and any additional terms and conditions that may be agreed upon by the parties involved.\nThe Company does not endorse or guarantee any products or services offered for sale through the App and is not responsible for the accuracy, quality, safety, or legality of any items listed for sale. \nAll sales made through the App are final. Once the buyer has accepted the shoe and the transaction is complete, there will be no refunds. It is the responsibility of the buyer to ensure that the shoe meets their expectations before completing the transaction.\n8. Limitation of Liability\nThe Company will not be liable for any damages of any kind arising from the use of the App, including but not limited to direct, indirect, incidental, punitive, and consequential damages. The Company makes no warranty that the App will meet your requirements or that it will be uninterrupted, timely, secure, or error-free.\n9. Indemnification\nYou agree to indemnify and hold the Company and its affiliates, officers, agents, and employees harmless from any claim or demand, including reasonable attorneys\' fees, made by any third party due to or arising out of your use of the App, your violation of these Terms, or your violation of any rights of another.\n10. Termination\nThe Company reserves the right, in its sole discretion, to terminate your access to the App at any time and for any reason, without notice.\n11. Governing Law\nThese Terms and your use of the App will be governed by and construed in accordance with the laws of the State of Israel, without giving effect to any principles of conflicts of law. Any disputes arising out of or relating to these Terms or the App will be resolved through binding arbitration in accordance with the rules of the American Arbitration Association.\n12. Miscellaneous\nThese Terms constitute the entire agreement between you and the Company with respect to the App and supersede all prior or contemporaneous communications and proposals, whether oral or written. If any part of these Terms is found to be invalid or unenforceable, that part will be enforced to the maximum extent possible, and the remaining provisions will remain in full force and effect. The failure of the Company to exercise or enforce any right or provision of these Terms will not constitute a waiver of such right or provision. You may not assign or transfer your rights or obligations under these Terms without the prior written consent of the Company. The Company may assign or transfer its rights and obligations under these Terms, in whole or in part, without your consent.\n13. Changes to These Terms\nThe Company reserves the right, in its sole discretion, to change these Terms at any time. Any changes to these Terms will be effective immediately upon posting on the App. It is your responsibility to review these Terms periodically for updates. Your continued use of the App after posting any changes to these Terms constitutes your acceptance of those changes.\n\n14. Sale of Counterfeit Items\nThe sale of counterfeit or fake items is strictly prohibited on the App. If the Company determines, in its sole discretion, that a seller has sold fake or counterfeit items through the App, the Company reserves the right to terminate the seller\'s account and to charge the seller for any damages incurred as a result of the sale of counterfeit items. The Company may also report the sale of counterfeit items to law enforcement authorities as appropriate.\n15. Payment\nThe App may allow users to make payments through the App or through third-party payment processors. All payments made through the App are subject to the terms and conditions of the applicable payment processor. The Company is not responsible for any errors or issues that may arise with payments made through the App or through third-party payment processors. It is the user\'s responsibility to ensure that their payment information is accurate and up to date.\n16. Payout\nBy using the marketplace platform and agreeing to receive payment to your bank account, you confirm that you are in compliance with all applicable laws and regulations in Israel, including those related to taxes and money laundering.\nReewer’s marketplace may require you to provide additional information or documentation to verify your identity and compliance with Israeli laws and regulations. Failure to provide this information may result in the suspension or termination of your account. \nThe marketplace platform may also be required to report certain transactions or information to relevant authorities in Israel as part of its compliance with applicable laws and regulations. \nYou acknowledge that any funds received in your bank account through the marketplace platform may be subject to withholding taxes and other deductions as required by Israeli law.\nYou are solely responsible for ensuring that any funds received in your bank account through the marketplace platform are correctly reported and declared to the relevant tax authorities and for paying any taxes or other obligations that may be due on such funds. \nBy using the marketplace platform and agreeing to receive payment to your bank account, you confirm that you have read and agree to these additional terms of use and will comply with all applicable laws and regulations in Israel. It is the user\'s responsibility to ensure that their payout information is accurate and up to date.\n\n17. Privacy\nThe Company respects the privacy of its users and is committed to protecting their personal information. Using the App, you agree to the collection, use, and sharing of your personal information per the Company\'s privacy policy.\nThe App may collect specific personal data, including but not limited to your location, in order to improve the performance of the App and to provide personalized content. This data will only be used for the purposes stated in the privacy policy and will not be shared with third parties except as required by law.\nYou can view the Company\'s full privacy policy by visiting our policy page.\n18. Cookies\nThe App may use cookies to improve your experience and to personalize content. You can choose to disable cookies in your browser settings, but doing so may affect the functionality of the App. By using the App, you consent to cookies as described in the privacy policy.\n19. Safety\nThe company is not responsible for any injuries or damages that may occur during a marketplace meetup. Buyers and sellers are solely responsible for their own safety and well-being.\nIf a buyer or seller experiences theft or attack during a marketplace meet-up, it is their responsibility to report the incident to the appropriate authorities and seek legal recourse. The company is not liable for any losses or damages resulting from such incidents.\n20. Fees \nThe marketplace platform is a service provided for the convenience of buyers and sellers to facilitate transactions. The company charges a fee of 7% of the total transaction value for each sale, which will be automatically deducted from the seller\'s proceeds. Additionally, a withdrawal fee of 2% will be charged when the seller withdraws their proceeds from the platform. The company is not responsible for any actions buyers or sellers take during or after a transaction.\n21. Contact Us\nIf you have any questions or concerns about these Terms or the App, please contact us at reewerapp@gmail.com\n',
      name: 'termsOfUseContent',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree {
    return Intl.message(
      'Agree',
      name: 'agree',
      desc: '',
      args: [],
    );
  }

  /// `Israel`
  String get israel {
    return Intl.message(
      'Israel',
      name: 'israel',
      desc: '',
      args: [],
    );
  }

  /// `England`
  String get england {
    return Intl.message(
      'England',
      name: 'england',
      desc: '',
      args: [],
    );
  }

  /// `France`
  String get france {
    return Intl.message(
      'France',
      name: 'france',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get germany {
    return Intl.message(
      'Germany',
      name: 'germany',
      desc: '',
      args: [],
    );
  }

  /// `We sent a code to the phone`
  String get codeSentDescription {
    return Intl.message(
      'We sent a code to the phone',
      name: 'codeSentDescription',
      desc: '',
      args: [],
    );
  }

  /// `Verification code`
  String get verificationCode {
    return Intl.message(
      'Verification code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
