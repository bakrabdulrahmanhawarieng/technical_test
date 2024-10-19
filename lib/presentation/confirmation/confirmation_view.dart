part of 'confirmation_imports.dart';

@RoutePage()
class ConfirmationView extends StatefulWidget {
  const ConfirmationView({super.key});

  @override
  State<ConfirmationView> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView>
    with SingleTickerProviderStateMixin {
  ConfirmationViewModel confirmationViewModel = ConfirmationViewModel();
  @override
  void initState() {
    super.initState();
    confirmationViewModel.onInitState(vsync: this, context: context);
  }

  @override
  void dispose() {
    confirmationViewModel.disposeControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // submission sucess lottie widget
          Lottie.asset(
            AppAssets.successLottie,
            controller: confirmationViewModel.successLottieController,
            onLoaded: (composition) => confirmationViewModel
                .onLottieAssetLoaded(composition: composition),
            repeat: false,
            width: 150.w,
            height: 150.h,
          ),
          SizedBox(
            height: AppDimensions.largeHeight,
          ),
          Text(
            AppStrings.submitConfirmation,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
