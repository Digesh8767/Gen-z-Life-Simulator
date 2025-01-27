import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'My Theme/themes.dart';
import 'Pages/HomePage.dart';
import 'Providers/age_value_provider.dart';
import 'Providers/stats_provider.dart';
import 'theme_provider.dart'; // Import the theme provider
import 'Pages/ThemeChanger.dart'; // Import your ThemeChanger page

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    // Set preferred orientations
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // Set system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    // Set the app to run in full screen
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

    runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: MyApp(),
      ),
    );
  } catch (e) {
    print('Error initializing app: $e');
    // Ensure the app still runs even if there's an error
    runApp(
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        child: MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => AgeProvider()),
            ChangeNotifierProvider(create: (_) => StatsProvider()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Gen-Z Life',
            theme: themeProvider.currentTheme,
            home: const home_page(),
          ),
        );
      },
    );
  }
}
