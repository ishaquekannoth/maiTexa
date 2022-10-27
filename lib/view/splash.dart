import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mai_texa/controller/home_page_controller.dart';
import 'package:mai_texa/view/home_page.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = Provider.of<HomePageViewModel>(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 3), () {
        controller.fetchAllSongs(context);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const HomePage()),
            (route) => false);
      });
    });
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: size.width,
          height: size.height * 0.5,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/Assets/splash_image.jpg",
                  ))),
        ),
      ),
    );
  }
}
