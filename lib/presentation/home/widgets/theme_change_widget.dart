part of 'widgets_imports.dart';

class ThemeChangeWidget extends StatefulWidget {
  const ThemeChangeWidget({super.key});

  @override
  State<ThemeChangeWidget> createState() => _ThemeChangeWidgetState();
}

class _ThemeChangeWidgetState extends State<ThemeChangeWidget> {
  HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            homeViewModel.updateAppTheme(context);
          },
          child: Padding(
            padding: AppPaddings.horizontal,
            child:
                BlocBuilder<ThemeCubit, ThemeState>(builder: (context, theme) {
              return Icon(
                // Compare the current theme to determine which icon to display.
                // The icon lets the user know which theme (light or dark) is available to switch to.
                theme.themeMode == ThemeMode.dark
                    ? Icons.wb_sunny
                    : Icons.nights_stay,
                size: AppDimensions.iconSize,
              );
            }),
          ),
        ));
  }
}
