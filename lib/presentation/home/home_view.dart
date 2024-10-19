part of 'home_imports.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewModel homeViewModel = HomeViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: AppDimensions.largeHeight),
            // Theme changing button
            ThemeChangeWidget(),
            SizedBox(height: AppDimensions.extraLargeHeight),
            Padding(
              padding: AppPaddings.horizontal,
              child: Text(
                AppStrings.welcomeMessage,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: AppDimensions.largeHeight),
            // Welcome animation asset widget
            Lottie.asset(
              AppAssets.welcomeLottie,
              width: 1.sw,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: AppPaddings.large,
        child: CustomGradientButton(
          text: AppStrings.getStartedButton,
          onPressed: () {
            homeViewModel.onGetStartedPressed(context);
          },
        ),
      ),
    );
  }
}
