import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/assets_manager.dart';
import '../../../../../core/utils/color_mananger.dart';
import '../../widgets/custom_on_boarding.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  List<CustomOnBoarding> boardingdata (PageController controller) {
    return [
      CustomOnBoarding(
        imageAssets: ImageAssets.onboardingscreen1,
        maintitle: 'استأجر أو شارك مركبتك بسهولة',
        subtitle: 'تطبيقنا يربط بين ملاك المركبات والمستأجرين في بيئة آمنة ومرنة',
        controller: controller,
        showSmoothPageIndicator: true,
      ),
      CustomOnBoarding(
        imageAssets: ImageAssets.onboardingscreen2,
        maintitle: 'الأمان هو أولويتنا',
        subtitle: 'نضمن لك حالة المركبة المستأجرة وعودتها بسلامة',
        controller: controller,
        showSmoothPageIndicator: true,
      ),
      CustomOnBoarding(
        imageAssets: ImageAssets.onboardingscreen3,
        maintitle: 'تجربة موثوقة',
        subtitle: 'تطبيقنا يربط بين ملاك المركبات والمستأجرين في بيئة آمنة ومرنة',
        controller: controller,
        showSmoothPageIndicator: true,
      ),
      CustomOnBoarding(
        imageAssets: ImageAssets.onboardingscreen4,
        maintitle: 'ابدأ الآن!',
        subtitle: 'اشترك واكتشف مئات المركبات أو أضف مركبتك للإيجار',
        controller: controller,
        showbuttomnIndicator: true,
        onTap: () {context.go(Routes.loginRoute);},
        buttomncolor: ColorManager.white,
        buttomnfontcolor: ColorManager.primary,
        buttomnheight: 48,
        buttomnoutlineColor: ColorManager.primary,
        buttomnradius: 8,
        buttomntitle: 'ابدأ الأن',
        buttomnwidth: 312,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: boardingdata(controller),
      ),
    );
  }
}
