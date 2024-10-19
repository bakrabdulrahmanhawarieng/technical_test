part of 'theme_cubit.dart';

// Abstract class representing the different states of ThemeCubit.
abstract class ThemeState extends Equatable {
  final ThemeMode themeMode;
  const ThemeState(this.themeMode);
}

// Represents the initial state of the ThemeCubit when it is first created.
class ThemeInitial extends ThemeState {
  // The default inital theme mode will be the system theme mode
  const ThemeInitial() : super(ThemeMode.system);

  @override
  List<ThemeMode> get props => [themeMode];
}

// Represents a state where the theme mode has been updated.
class ThemeUpdateState extends ThemeState {
  const ThemeUpdateState(super.themeMode);

  @override
  List<ThemeMode> get props => [themeMode];
}
