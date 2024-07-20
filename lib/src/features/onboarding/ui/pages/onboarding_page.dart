import 'package:ca_flutter_test/src/shared/modules/responsive_layout/ui/responsive_layout.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileLayout: Stack(
        children: [
          Container(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
