
class AppStrings {
  static const String genericErrorBn = "কিছু একটা সমস্যা হয়েছে!";
  static String get loginText => "আপনার বিকাশ এজেন্ট একাউন্ট লগইন করুন";
  static String get loginRegistrationText =>
      "লগ-ইন/রেজিস্ট্রেশন করতে মোবাইল নম্বর দিয়ে এগিয়ে যান।";
  static String get accountNumberHint => "আপনার একাউন্ট নম্বর দিন";
  static String get numberVerifyText => "আপনার মোবাইল নাম্বার যাচাই করুন";
  static String get otpText => "আপনার মোবাইলে পাঠানো ৪ ডিজিটের কোডটি লিখুন";
  static String get accountNumberLabel => "আপনার একাউন্ট";
  static String get pinNumberHint => "পিন নম্বর দিন";
  static String get newPinHints => "পিন নম্বর দিন";
  static String get confirmPinHints => "পুনরায় পিন দিন";
  static String get passwordResetSuccess =>
      "আপনার পাসওয়ার্ড সফল ভাবে পরিবর্তন হয়েছে ";
  static String get doNotMatch => "Your both password doesn't match";
  static String get pinNumberLabel => "পিন কোড লিখুন";
  static String get go => "এগিয়ে যান";
  static String get resetPin => "রিসেট পিন";
  static String get forgotPassword => "Forgot password";
  static String get phoneNumber => "ফোন নাম্বার";
  static String get tryAfterSometimeToast =>
      "Please wait sometime... and try again";
  static String get otpEmptyToast => "Please input otp";
  static String get resetPinTitle => "পিন রিসেট করুন";
  static String get registerMerchant => "রেজিস্টারকৃত মার্চেন্ট সমূহ";
  static String get number => "01678242900";
  static String get invalidNumberToast => "Please input a valid number";
  static String get confirmMobile => "মোবাইল নাম্বার নিশ্চিত করুন";
  static String get newMerchant => "নতুন মার্চেন্ট";
  static String get agent => "AGENT";

  static String get mobilePattern => r'\+?(88)?0?1[3456789][0-9]{8}\b';
  static String get numberOnly => r'^[0-9]+$';
}

String get mobilePattern => r'\+?(88)?0?1[3456789][0-9]{8}\b';
String get numberOnly => r'^[0-9]+$';
