part of 'confirmation_imports.dart';

class ConfirmationViewModel {
  late AnimationController successLottieController;

  // for initating the animation controller for lottie asset and add a listener to detect when the animation finsh
  onInitState({required TickerProvider vsync, required BuildContext context}) {
    // Initialize the AnimationController
    successLottieController = AnimationController(vsync: vsync);

    // Add a listener to detect when the animation is complete
    successLottieController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // The animation has finished playing
        Future.delayed(Duration(milliseconds: 700), () {
          // after the animation finish will remove the route and push to next screen (Details screen)
          AutoRouter.of(context).replace(DetailsViewRoute());
        });
      }
    });
  }

  // Set the duration of the AnimationController to match the Lottie animation's duration.
  // This ensures that the controller plays the animation at the correct speed.
  onLottieAssetLoaded({required LottieComposition composition}) {
    {
      successLottieController.duration = composition.duration;
      // Start the animation
      successLottieController.forward();
    }
  }

// disposing animation controller
  disposeControllers() {
    successLottieController.dispose();
  }
}
