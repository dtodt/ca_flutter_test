import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/dtos/onboarding_event_dto.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClickLeftArrowUseCase implements IUseCases<OnboardingEventDTO?> {
  @override
  Future<void> handleEvent({OnboardingEventDTO? event}) async {
    // Gets current state
    final currentState = Modular.get<IOnboardingControllerService>().state;

    // Gets current event data
    final newState = currentState.currentPageAtom.state - 1;

    // Handles business logic
    if (newState >= 0 &&
        newState < currentState.onboardingContentAtom.state.length) {
      // Updates current state
      atomAction((set) {
        set(currentState.currentPageAtom, newState);
      }).call();
    }
  }
}
