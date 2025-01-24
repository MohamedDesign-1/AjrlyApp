const String imagesPath = 'assets/images/';
const String iconsPath = 'assets/icons/';
const String svgPath = 'assets/svg/';
const String jsonPatch = 'assets/json/';
const String language = 'lib/config/language';

abstract class ImageAssets {
  static const String logo = '${imagesPath}logo.png';
  static const String onboardingscreen1 = '${imagesPath}onboardingscreen1.png';
  static const String onboardingscreen2 = '${imagesPath}onboardingscreen2.png';
  static const String onboardingscreen3 = '${imagesPath}onboardingscreen3.png';
  static const String onboardingscreen4 = '${imagesPath}onboardingscreen4.png';
}

abstract class IconAssets {
  static const String person = '${iconsPath}person.png';
}

abstract class SvgAssets {
  static const String aPlus = '${svgPath}APlus.svg';
  static const String start = '${svgPath}start.svg';
  static const String email = '${svgPath}email.svg';
  static const String lock = '${svgPath}Lock.svg';
  static const String user = '${svgPath}User.svg';
  static const String phone = '${svgPath}phone.svg';
  static const String driverlisence = '${svgPath}Driverlicense.svg';
  static const String calender = '${svgPath}Calendar.svg';
  static const String registrationlock = '${svgPath}registrationlock.svg';
}

abstract class JsonAssets {
  static const String warning = '${jsonPatch}warning.json';
}
