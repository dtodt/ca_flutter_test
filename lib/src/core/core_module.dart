import 'package:ca_flutter_test/src/core/ui/pages/splash_art_page.dart';
import 'package:ca_flutter_test/src/features/auth/authentication_module.dart';
import 'package:ca_flutter_test/src/features/favorites/favorites_module.dart';
import 'package:ca_flutter_test/src/features/home/home_module.dart';
import 'package:ca_flutter_test/src/features/onboarding/onboarding_module.dart';
import 'package:ca_flutter_test/src/shared/modules/haptic_feedback/haptic_feedback_module.dart';
import 'package:ca_flutter_test/src/shared/modules/http_client/http_client_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  // HTTP Client
  // Haptic Feedback
  @override
  List<Module> get imports => [
        HttpClientModule(),
        HapticFeedbackModule(),
      ];

  @override
  void routes(RouteManager r) {
    //* CORE ROUTES
    // Splash art
    r.child(
      '/',
      child: (context) => const SplashArt(),
      transition: TransitionType.fadeIn,
    );

    //* FEATURE ROUTES
    // Authentication Module
    r.module('/auth', module: AuthModule());
    // Favorites Module
    r.module('/favorites', module: FavoritesModule());
    // Home Module
    r.module('/home', module: HomeModule());
    // Onboarding Module
    r.module('/onboarding', module: OnboardingModule());
  }
}
