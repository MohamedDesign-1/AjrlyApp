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
}

abstract class JsonAssets {
  static const String warning = '${jsonPatch}warning.json';
}
