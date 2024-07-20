import 'package:ca_flutter_test/src/core/ui/pages/error_404_page.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingModule extends Module {
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const OnboardingPage(),
      transition: TransitionType.rightToLeft,
    );

    // ...

    // Wildcard Route - Error 404
    r.wildcard(
      child: (context) => const Error404Page(),
      transition: TransitionType.fadeIn,
    );
  }
}
