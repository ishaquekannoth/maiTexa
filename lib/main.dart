import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mai_texa/controller/home_page_controller.dart';
import 'package:mai_texa/services/routes.dart';
import 'package:mai_texa/view/details_page.dart';
import 'package:mai_texa/view/home_page.dart';
import 'package:mai_texa/view/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageViewModel(context))
      ],
      child: MaterialApp(
        title: 'Songs',
        theme: ThemeData(
          fontFamily: GoogleFonts.montserrat().fontFamily,
          primarySwatch: Colors.deepPurple,
        ),
        initialRoute: Routes.splash,
        routes: {Routes.home: (context) => const HomePage(),
        Routes.details: (context) => const Details(),
        Routes.splash: (context) => const SplashScreen(),
        },
      ),
    );
  }
}
