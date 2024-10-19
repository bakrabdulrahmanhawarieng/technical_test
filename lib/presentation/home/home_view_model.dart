part of 'home_imports.dart';

class HomeViewModel {
  // move to next screen (Form Screen)
  onGetStartedPressed(BuildContext context) {
    AutoRouter.of(context).replace(FormViewRoute());
  }

// updating app theme function
  updateAppTheme(BuildContext context) {
    context.read<ThemeCubit>().onUpdateTheme(
        context.read<ThemeCubit>().state.themeMode == ThemeMode.dark
            ? ThemeMode.light
            : ThemeMode.dark);
  }
}
