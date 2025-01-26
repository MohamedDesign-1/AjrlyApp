const String imagesPath = 'assets/images/';
const String iconsPath = 'assets/icons/';
const String svgPath = 'assets/svg/';
const String jsonPatch = 'assets/json/';
const String language = 'lib/config/language';

abstract class ImageAssets {
  static const String logo = '${imagesPath}logo.png';
  static const String car = '${imagesPath}car.png';
  static const String text = '${imagesPath}text.png';
  static const String car2 = '${imagesPath}car2.png';

}

abstract class IconAssets {
  static const String home = '${iconsPath}home.png';
  static const String booking = '${iconsPath}booking.png';
  static const String fav = '${iconsPath}fav.png';
  static const String user = '${iconsPath}user.png';
}

abstract class SvgAssets {
  static const String person = '${svgPath}person.svg';
  static const String home = '${svgPath}home.svg';
  static const String booking = '${svgPath}booking.svg';
  static const String fav = '${svgPath}fav.svg';
  static const String user = '${svgPath}user.svg';
  static const String car = '${svgPath}car.svg';
  static const String text = '${svgPath}text.svg';
  static const String Scooter = '${svgPath}Scooter.svg';
  static const String truck = '${svgPath}Hatchback.svg';
  static const String car2 = '${svgPath}car2.svg';
  static const String Gearbox = '${svgPath}Gearbox.svg';
  static const String Engine = '${svgPath}Gasoline.svg';
}

abstract class JsonAssets {
  static const String warning = '${jsonPatch}warning.json';
}
