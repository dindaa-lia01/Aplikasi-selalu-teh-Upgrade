import 'package:flutter/material.dart';
import 'config/supabase_config.dart';
import 'pages/cover_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseConfig.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme() {
    setState(() {
      themeMode = themeMode == ThemeMode.light
          ? ThemeMode.dark
          : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Selalu Teh',

      /// LIGHT MODE (KAYAK TAMPILAN AWALMU)
      theme: ThemeData(
        brightness: Brightness.light,

        primaryColor: Colors.teal.shade700,

        scaffoldBackgroundColor: Colors.teal.shade50, // background ijo muda

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade700, // header ijo tua
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        cardColor: Colors.white,

        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.teal.shade700,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal.shade700,
            foregroundColor: Colors.white,
          ),
        ),
      ),

      /// DARK MODE
      darkTheme: ThemeData(
        brightness: Brightness.dark,

        primaryColor: Colors.teal,

        scaffoldBackgroundColor: const Color(0xFF0F2E2E),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF003C3C),
          foregroundColor: Colors.white,
          centerTitle: true,
        ),

        cardColor: const Color(0xFF1E3A3A),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.teal,
        ),
      ),

      themeMode: themeMode,

      home: const CoverPage(),
    );
  }
}
