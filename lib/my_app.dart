import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:technical_test/blocs/theme_cubit/theme_cubit.dart';
import 'package:technical_test/core/constants/app_contants.dart';
import 'package:technical_test/core/constants/app_dimensions.dart';
import 'package:technical_test/core/routes/router_imports.dart';
import 'package:technical_test/core/theme/app_theme.dart';

import 'blocs/bloc_providers.dart';

// The main widget of the application, which serves as the entry point for the app's UI.
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    // To force portrait mode in the app
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    // Uses MultiBlocProvider to make multiple Cubits available throughout the app.
    // This ensures that the ThemeCubit and other Cubits can be accessed within the app's widget tree.
    return MultiBlocProvider(
      providers: BlocProviders.providers(context),
      child: ScreenUtilInit(
        // Initializes screen size adaptation with the specified design size.
        designSize: AppDimensions.designSize,
        minTextAdapt: true,
        splitScreenMode: false,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          // Listens to ThemeCubit for changes in theme state.
          // Updates the MaterialApp with the selected theme (light or dark).
          return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, theme) {
            return MaterialApp.router(
              title: AppConstants.appName,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: theme.themeMode,
              debugShowCheckedModeBanner: false,
              // Configures the app's routing using the routerConfig.
              routerConfig: appRouter.config(),
            );
          });
        },
      ),
    );
  }
}
