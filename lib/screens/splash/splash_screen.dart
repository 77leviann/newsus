import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsus/constants/asset_constant.dart';
import 'package:newsus/constants/name_routes_constant.dart';
import 'package:provider/provider.dart';

part '../../providers/splash_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context, listen: false).startTimer(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceBright,
      body: Center(
        child: Image.asset(
          AssetConstant.imageLogo,
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
