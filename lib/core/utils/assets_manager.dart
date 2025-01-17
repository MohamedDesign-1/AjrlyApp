const String imagesPath = 'assets/images/';
const String iconsPath = 'assets/icons/';
const String svgPath = 'assets/svg/';
const String jsonPatch = 'assets/json/';
const String language = 'lib/config/language';

abstract class ImageAssets {
  static const String logo = '${imagesPath}logo.png';
}

abstract class IconAssets {
  static const String person = '${iconsPath}person.png';
}

abstract class SvgAssets {
  static const String aPlus = '${svgPath}APlus.svg';
}

abstract class JsonAssets {
  static const String warning = '${jsonPatch}warning.json';
}
