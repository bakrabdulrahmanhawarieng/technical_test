import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test/blocs/theme_cubit/theme_cubit.dart';
import 'package:technical_test/blocs/user_cubit/user_cubit.dart';

// A utility class to provide a list of BlocProviders.
// This class helps in registering all the Cubits used throughout the app.
class BlocProviders {
  // Returns a list of BlocProviders that can be used in the app's widget tree.
  // This ensures that all the necessary Cubits are available in the widget context.
  //
  // - `context`: The BuildContext of the widget where these providers are used.

  static List<BlocProvider> providers(
    BuildContext context,
  ) =>
      [
        // Provides an instance of UserCubit.
        // UserCubit handles user-related state management, such as user details.
        BlocProvider<UserCubit>(
          create: (context) => UserCubit(),
        ),

        // Provides an instance of ThemeCubit.
        // ThemeCubit manages the state of the app's theme, allowing switching between light and dark modes.
        BlocProvider<ThemeCubit>(
          create: (context) => ThemeCubit(),
        ),
      ];
}
