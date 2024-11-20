import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsahedsystem/features/splash/splash_screen.dart';
import 'package:hsahedsystem/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       textTheme: GoogleFonts.interTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings)=>generateRoute(settings),
      home:const SplashScreen()
    );
  }
}
